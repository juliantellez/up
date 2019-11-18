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
- [Acknowledgements](#acknowledgements)
- [FAQ](#faq)


# Install

```bash
mkdir -p ~/.up; cd ~/.up; \
curl -L https://github.com/juliantellez/up/tarball/master | tar -xzv --strip-components 1 &>> /dev/null; \
sh bootstrap.sh
```

# Tooling

- [Xcode](https://developer.apple.com/xcode/): Installs necessary development tools.
- [Home brew](https://brew.sh/): The missing package manager for macOS (or Linux).
- [git](https://github.com/git/git): A free and open source distributed version control system.

# Shell
- [zsh](https://ohmyz.sh/): A delightful, open source, community-driven framework for managing your ZSH configuration.
- [iterm2](https://www.iterm2.com/): A replacement for Terminal.
- [powerlevel9k](https://github.com/Powerlevel9k/powerlevel9k): The most awesome Powerline theme for ZSH around!
- [zsh syntax highlight](https://github.com/zsh-users/zsh-syntax-highlighting): Enables highlighting of commands whilst they are typed.
- [zsh autocomplete](https://github.com/zsh-users/zsh-completions): Completion scripts that are not available in Zsh yet.
- [font-hack-nerd-font](https://github.com/ryanoasis/nerd-fonts): Developer targeted fonts.

# Languages
- [Go](https://github.com/golang/go): Open source programming language that makes it easy to build simple, reliable, and efficient software.
- [Nodejs](https://nodejs.org/en/): A JavaScript runtime built on Chrome's V8 JavaScript engine
- [Python](https://github.com/python/cpython): An ideal language for scripting and rapid application development in many areas on most platforms.

# Utilities
- [fzf](https://github.com/junegunn/fzf): General-purpose command-line fuzzy finder.
- [jq](https://github.com/stedolan/jq): A lightweight and flexible command-line JSON processor.
- [htop](https://github.com/hishamhm/htop): An interactive process viewer
- [hub](https://github.com/github/hub): Commands that make working with GitHub easier.
- [the_silver_searcher](https://github.com/ggreer/the_silver_searcher): A code searching tool similar to ack, with a focus on speed.
- [wget](https://github.com/jay/wget): A free utility for non-interactive download of files from the Web.
- [z](https://github.com/rupa/z): Tracks your most used directories, based on 'frecency'.

# cli/Binaries
- [awscli](https://github.com/aws/aws-cli): Unified command line interface to Amazon Web Services.
- [docker](https://github.com/docker/cli): Package Software into Standardized Units for Development, Shipment and Deployment.
- [kops](https://github.com/kubernetes/kops): The easiest way to get a production grade Kubernetes cluster up and running.
- [terraform](https://github.com/hashicorp/terraform): Tool for building, changing, and versioning infrastructure safely and efficiently.
- [vault](https://github.com/hashicorp/vault): tTol for securely accessing secrets.
- [vim](https://github.com/vim/vim): Improved version of the good old UNIX editor Vi.
- [ngrok](https://ngrok.com/): A multiplatform tunnelling and reverse proxy
- [vagrant](https://www.vagrantup.com/): Development Environments Made Easy
- [virtualbox](https://www.virtualbox.org/wiki/VirtualBox): general-purpose full virtualizer for x86 hardware

# Browsers
- [firefox](https://www.mozilla.org/en-US/firefox/): Free and open-source web browser developed by the Mozilla Foundation
- [google-chrome](https://www.google.com/chrome/): A cross-platform web browser developed by Google.

# Editors
- [visual-studio-code](https://code.visualstudio.com/): Code editor redefined and optimized for building and debugging modern web and cloud applications. 

# Productivity
- [caffeine](http://lightheadsw.com/caffeine/):  Click it to prevent your Mac from automatically going to sleep.
- [spectacle](https://www.spectacleapp.com/): Move and resize windows with ease
- [trailer](https://ptsochantaris.github.io/trailer/): Track pull requests and issues across repositories.
- [day-o](https://shauninman.com/archive/2011/10/20/day_o_mac_menu_bar_clock): Menu bar clock replacement with a simple calendar for your Mac.

# Other
- [canary](https://canarymail.io/): Modern email apps compromise on security or features. Canary does not.
- [spotify](https://www.spotify.com): Music for everyone.

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

# Acknowledgements
These configs and dotfiles stand on the shoulders of the following giants:

- https://github.com/minamarkham/formation
- https://github.com/mathiasbynens/dotfiles
- https://github.com/kevinSuttle/macOS-Defaults

# FAQ

- Have you tested these dotfiles?

  Yes, currently tested on:

  - macOS Sierra - 10.12.6
  - macOS High Sierra - 10.13.6
  - macOS Mojave - 10.14.6
