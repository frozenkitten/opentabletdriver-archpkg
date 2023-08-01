pkgname=opentabletdriver
_pkgname=OpenTabletDriver
pkgver=0.6.2.0
pkgrel=1
pkgdesc="A cross-platform open source tablet driver"
arch=('x86_64')
url="https://github.com/OpenTabletDriver/OpenTabletDriver"
license=('LGPL3')
depends=('dotnet-runtime-6.0' 'dotnet-host>=6.0' 'gtk3' 'libevdev')
optdepends=('libxrandr: x11 display querying support' 'libx11')
makedepends=('dotnet-sdk>=6.0')
options=('!strip' 'staticlibs')
source=("https://github.com/OpenTabletDriver/OpenTabletDriver/archive/v${pkgver}.tar.gz"
        'package.sh')

sha256sums=('56fd77cbe04d667a05162f01e5bf0e3b246c102465ef8c05560795e6b2d06c20'
            '3b00feae58608d02d7979fe89f791eb936386071078110307a641e1a68e0e1cc')

build() {
    cd "${_pkgname}-${pkgver}"

    export DOTNET_CLI_TELEMETRY_OPTOUT=1
    export DOTNET_SKIP_FIRST_TIME_EXPERIENCE=true

    install -Dm 755 ../package.sh ./eng/linux/Arch/package.sh
    ./eng/linux/package.sh --package Arch -c Release
}

package() {
    cd "${_pkgname}-${pkgver}"
    cp -r ./dist/* "${pkgdir}/"
}
