import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

import XMonad.Actions.PhysicalScreens

myManageHook = composeAll
  [ className =? "Gimp"      --> doFloat
  , className =? "Vncviewer" --> doFloat
  ]

main = do
  xmproc <- spawnPipe "~jgibson/.cabal/bin/xmobar /home/jgibson/.xmobarrc"
  xmonad $ defaultConfig
    { manageHook = manageDocks <+> myManageHook <+> manageHook defaultConfig
    , layoutHook = avoidStruts  $  layoutHook defaultConfig
    , logHook = dynamicLogWithPP xmobarPP
          { ppOutput = hPutStrLn xmproc
          , ppTitle = xmobarColor "green" "" . shorten 50
          }
    , modMask = mod4Mask     -- Rebind Mod to the Windows key
    , borderWidth           = 2
    , terminal              = "gnome-terminal"
    , normalBorderColor     = "#cccccc"
    , focusedBorderColor    = "#22ff22"
    } `additionalKeys`
    [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
    --, ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
    --, ((0, xK_Print), spawn "scrot")
    ]
