<h1 align="center">UP</h1>

<p align="center">
  <a href="https://github.com/juliantellez/lambcycle" target="_blank">
    <img alt="lambcycle" src="./assets/up.png" width="144">
  </a>
</p>

<p align="center">
UP is a declarative dotfile configuration.
Its main goal is to increase your productivity whilst keeping track of your dependencies.
Get UP and running in no time, start up your machine with one command!
</p>

- [Install](#install)
- [Tooling](#tooling)
- [Shell](#shell)
- [Languages](#languages)
- [Utilities](#utilities)
- [cli/Binaries](#clibinaries)
- [Browsers](#browsers)
- [Editors](#editors)
- [Productivity](#productivity)
- [Other](#other)
- [Iterm Profile](#iterm-profile)
- [Color Presets](#color-presets)
- [FAQ](#faq)


# Install

```bash
mkdir -p ~/.up; cd ~/.up; \
curl -L https://github.com/juliantellez/up/tarball/master | tar -xzv --strip-components 1 &>> /dev/null; \
sh bootstrap.sh
```

# Tooling

- [Xcode](https://developer.apple.com/xcode/)
- [Home brew](https://brew.sh/)
- [git](https://github.com/git/git)

# Shell
- [zsh](https://ohmyz.sh/)
- [iterm2](https://www.iterm2.com/)
- [powerlevel9k](https://github.com/Powerlevel9k/powerlevel9k)
- [syntax highlight](https://github.com/zsh-users/zsh-syntax-highlighting)
- [autocomplete](https://github.com/zsh-users/zsh-completions)
- [font-hack-nerd-font](https://github.com/ryanoasis/nerd-fonts)

# Languages
- [go](https://github.com/golang/go)
- [Nodejs](https://nodejs.org/en/)
- [python](https://github.com/python/cpython)
- [rust](https://github.com/rust-lang/rust)

# Utilities
- [fzf](https://github.com/junegunn/fzf)
- [jq](https://github.com/stedolan/jq)
- [htop](https://github.com/hishamhm/htop)
- [hub](https://github.com/github/hub)
- [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
- [wget](https://github.com/jay/wget)
- [z](https://github.com/rupa/z)

# cli/Binaries
- [awscli](https://github.com/aws/aws-cli)
- [docker](https://github.com/docker/cli)
- [kops](https://github.com/kubernetes/kops)
- [terraform](https://github.com/hashicorp/terraform)
- [vault](https://github.com/hashicorp/vault)
- [vim](https://github.com/vim/vim)
- [ngrok](https://ngrok.com/)
- [vagrant](https://www.vagrantup.com/)

# Browsers
- [firefox](https://www.mozilla.org/en-US/firefox/)
- [google-chrome](https://www.google.com/chrome/)

# Editors
- [visual-studio-code](https://code.visualstudio.com/)

# Productivity
- [caffeine](http://lightheadsw.com/caffeine/)
- [spectacle](https://www.spectacleapp.com/)
- [trailer](https://ptsochantaris.github.io/trailer/)
- [day-o](https://shauninman.com/archive/2011/10/20/day_o_mac_menu_bar_clock)

# Other
- [canary](https://canarymail.io/)
- [spotify](https://www.spotify.com)

# Iterm Profile

UP uses a dynamic profile [see](https://www.iterm2.com/documentation-dynamic-profiles.html). To enable it do:

```
Iterm2 > Preferences > Profiles > UP Config > Other Actions > Set as Default
```

# Color Presets

Color presets can be downloaded by following [this url](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/README.md). Alternatively you can
follow the description below and import them from the color_presets folder.

```
Iterm2 > Preferences > Profiles > Colors > Color Presets > Import
```

# FAQ

- Have you tested these dotfiles?

  Yes, currently tested on:

  - macOS High Sierra - 10.13.6
  - macOS Mojave - 10.14.6
