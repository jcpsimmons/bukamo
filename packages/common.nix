{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # from terminal script
    curl
    git
    unzip

    # from terminal sub-scripts
    mise
    gpg
    gh
    fastfetch
    fzf
    ripgrep
    bat
    eza
    zoxide
    plocate
    btop
    apache2-utils
    fd-find
    tldr
    build-essential
    pkg-config
    autoconf
    bison
    clang
    libssl-dev
    libreadline-dev
    zlib1g-dev
    libyaml-dev
    libreadline-dev
    libncurses5-dev
    libffi-dev
    libgdbm-dev
    libjemalloc2
    libvips
    imagemagick
    libmagickwand-dev
    mupdf
    mupdf-tools
    redis-tools
    sqlite3
    libsqlite3-0
    libmysqlclient-dev
    docker
    docker-buildx

    # from desktop script
    typora
    xournalpp
    localsend
    vlc
    google-chrome
    alacritty
    steam
    virtualbox
    virtualboxExtpack
    zoom
    dropbox
    spotify
    brave
    _1password
    _1password-gui
    emacs
    obs-studio
    flameshot
    ulauncher
    flatpak
    gnomeExtensions.pano
    signal-desktop
    vscode
    gnome.sushi
  ];
}
