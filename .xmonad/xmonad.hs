import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run
import XMonad.Hooks.DynamicLog
import XMonad.Util.CustomKeys
import XMonad.Util.EZConfig

myNormalBGColor     = "#2e3436"
myFocusedBGColor    = "#414141"
myFocusedFGColor    = "#73d216"

main = do
xmproc <- spawnPipe "xmobar"
xmonad $ defaultConfig { 
  terminal = "xterm",
  normalBorderColor = myNormalBGColor,
  focusedBorderColor = myFocusedFGColor,
  manageHook = manageDocks <+> manageHook defaultConfig,
  layoutHook = avoidStruts $ layoutHook defaultConfig,
  handleEventHook = handleEventHook defaultConfig <+> docksEventHook,
  logHook = dynamicLogWithPP $ defaultPP { ppOutput = hPutStrLn xmproc, ppOrder = \(ws:_:t:_) -> [ws,t] },
  borderWidth = 1
  }
  `additionalKeys`
  [ ((mod4Mask, xK_p), spawn "dmenu_run -b -nb black") ]
