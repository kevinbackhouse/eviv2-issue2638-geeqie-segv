FROM mcr.microsoft.com/devcontainers/cpp:0-ubuntu-22.04

ARG REINSTALL_CMAKE_VERSION_FROM_SOURCE="3.22.2"

# Optionally install the cmake for vcpkg
COPY ./reinstall-cmake.sh /tmp/

RUN if [ "${REINSTALL_CMAKE_VERSION_FROM_SOURCE}" != "none" ]; then \
        chmod +x /tmp/reinstall-cmake.sh && /tmp/reinstall-cmake.sh ${REINSTALL_CMAKE_VERSION_FROM_SOURCE}; \
    fi \
    && rm -f /tmp/reinstall-cmake.sh

# [Optional] Uncomment this section to install additional vcpkg ports.
# RUN su vscode -c "${VCPKG_ROOT}/vcpkg install <your-port-name-here>"

# [Optional] Uncomment this section to install additional packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends git build-essential libglib2.0-0 libtool meson ninja-build yelp-tools \
            help2man doclifter liblcms2-dev exiv2 libgexiv2-dev evince evince liblua5.3-dev libffmpegthumbnailer-dev \
            libjpeg-dev librsvg2-common libwmf0.2-7-gtk exiftran exiftran imagemagick imagemagick liblcms2-utils \
            pandoc pandoc gphoto2 gphoto2 libimage-exiftool-perl libimage-exiftool-perl libheif-dev webp-pixbuf-loader \
            webp-pixbuf-loader libdjvulibre-dev libopenjp2-7-dev libraw-dev libomp-dev libarchive-dev libgspell-1-dev \
            libchamplain-gtk-0.12-dev libchamplain-0.12-dev libpoppler-glib-dev python3-pip glib2.0 python3-cairo-dev \
            python3-pyatspi

RUN git clone https://github.com/Exiv2/exiv2.git && cd exiv2 && git checkout v0.28.0 && ./ci/install_dependencies.sh && cd .. && rm -rf exiv2
