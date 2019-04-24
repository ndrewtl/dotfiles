# Dotfiles

Andrew Lee's dotfile configuration, for tools such as
  - `bash`
  - `zsh`
  - [`kitty`](https://sw.kovidgoyal.net/kitty/)
  - `nvim`/`vim`
  - [`rofi`](https://github.com/davatorium/rofi)
  - [`sway`](https://github.com/swaywm/sway)
  - `xmonad`

To run these config files, simply clone this repository into `$HOME/.config`,
and most things should work out-of-the box. For automatic setup, run:

```sh
$ curl https://raw.githubusercontent.com/ndrewtl/dotfiles/master/sh/setup.sh | sh
```

[`setup.sh`](https://github.com/ndrewtl/dotfiles/blob/master/sh/setup.sh) is a
small, minimally-invasive script that detects your shell and editor and puts the
correct files in place. If you don't believe me, click the link and read it!
It's less than 100 lines long.
