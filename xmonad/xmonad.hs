-- Andy's XMonad Conf
--

import XMonad
import XMonad.Layout.Spiral
import XMonad.Layout.Spacing
-- So we can make space for status bars
import XMonad.Hooks.ManageDocks

import qualified XMonad.StackSet as W
import qualified Data.Map        as M

import System.Exit

main = xmonad $ docks def
  { terminal          = "$TERMINAL"
  , focusFollowsMouse = True
  , borderWidth       = 0
  , modMask           = mod1Mask
  , keys              = keymaps
  , workspaces        = works
  , layoutHook        = lays
  , manageHook        = manageDocks
  }

-- Workspaces
works = ["alpha","sigma","delta","phi"]

-- Layouts
lays  = avoidStruts ( smartSpacing gap spirol ||| Full )
  where
    spirol = spiral ratio
      where
        ratio = 5/7
    gap = 4

-- Keymaps
keymaps conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
  -- Launch a terminal
  [ ((modm, xK_Return         ), spawn $ XMonad.terminal conf)

  -- Show system launcher
  , ((modm, xK_slash          ), spawn "$LAUNCHER")

  -- Lock the screen
  , ((modm, xK_l              ), spawn "$LOCKER")

  -- Launch browser
  , ((modm, xK_b              ), spawn "$BROWSER")

  -- Launch second browser
  , ((modm .|. shiftMask, xK_b), spawn "$BROWSER2")

  -- Launch password manager
  , ((modm, xK_e              ), spawn "$PASSWORD_MANAGER")

  -- Close window
  , ((modm, xK_w              ), kill)

  -- Rotate through layouts
  , ((modm, xK_semicolon      ), sendMessage NextLayout)

  -- Move focus down one window
  , ((modm, xK_j              ), windows W.focusDown)

  -- Focus up one window
  , ((modm, xK_k              ), windows W.focusUp)

  -- Swap down
  , ((modm .|. shiftMask, xK_j), windows W.swapDown)

  -- Swap up
  , ((modm .|. shiftMask, xK_k), windows W.swapUp)

  -- Quit
  , ((modm .|. shiftMask, xK_q), io $ exitWith ExitSuccess)

  -- Restart
  , ((modm .|. shiftMask, xK_r), spawn "xmonad --recompile; xmonad --restart")
  ]

  ++

  -- Switch to workspace i
  [((modm, k), windows $ W.greedyView i)
    | (i, k) <- zip (XMonad.workspaces conf) [xK_a, xK_s, xK_d, xK_f]]

  ++

  -- Move window to workspace i
  [((modm .|. shiftMask, k), windows $ W.shift i)
    | (i, k) <- zip (XMonad.workspaces conf) [xK_a, xK_s, xK_d, xK_f]]

  ++

  [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
      | (key, sc) <- zip [xK_u, xK_i, xK_o] [0..]
      , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]

