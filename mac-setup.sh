#!/bin/bash

echo "🛠 Installing Xcode Command Line Tools..."
xcode-select --install

echo "🍺 Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Load Homebrew (Apple Silicon)
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "🔄 Updating Homebrew..."
brew update

# ---------------------
# 🧪 CLI Tools via Brew
# ---------------------
echo "📦 Installing Brew packages..."
brew install \
aom aribb24 bdw-gc brotli c-ares ca-certificates cairo cjson crystal dav1d docker \
docker-completion dotnet ffmpeg flac fontconfig freetype frei0r fribidi gettext \
giflib glib gmp gnutls graphite2 harfbuzz highway htop icu4c@77 imath jpeg-turbo \
jpeg-xl lame leptonica libarchive libass libb2 libbluray libdeflate libevent \
libgcrypt libgit2 libgpg-error libidn2 liblinear libmaxminddb libmicrohttpd \
libnghttp2 libnghttp3 libogg libpng librist libsamplerate libsmi libsndfile \
libsodium libsoxr libssh libssh2 libtasn1 libtiff libunibreak libunistring libuv \
libvidstab libvmaf libvorbis libvpx libx11 libxau libxcb libxdmcp libxext libxrender \
libyaml little-cms2 llvm lua lz4 lzo mas mbedtls mpdecimal mpg123 ncdu ncurses \
nettle nmap node opencore-amr openexr openjpeg openssl@3 opus p11-kit pango pcre2 \
pipx pixman pkgconf python@3.13 rav1e readline rubberband rust sdl2 snappy \
speedtest-cli speex speexdsp sqlite srt svt-av1 tailscale tesseract theora tree \
unbound undercutf1 webp wget wireshark x264 x265 xorgproto xvid xz z3 zeromq zimg zstd

# -------------------------
# 🧱 GUI Apps via Brew Cask
# -------------------------
echo "🧰 Installing Cask apps..."
brew install --cask \
1password anydesk brave-browser chatgpt claude cursor discord firefox folx github \
gstreamer-runtime hyper intune-company-portal jiggler jumpcut librewolf mactracker \
microsoft-auto-update microsoft-edge mullvad-browser ngrok opera plex postman \
powershell protonvpn raspberry-pi-imager rectangle slack steam tor-browser utm \
virtualbox visual-studio-code vlc vnc-viewer wine-stable zoom

# ---------------------
# 🛍 Mac App Store via mas
# ---------------------
echo "🏬 Installing App Store apps with mas..."
mas install \
1037126344 \ # Apple Configurator
462058435  \ # Microsoft Excel
1471867429 \ # OTP Auth
639968404  \ # Parcel
409907375  \ # Remote Desktop
1475387142 \ # Tailscale
1295203466   # Windows App

echo "✅ All installations complete!"