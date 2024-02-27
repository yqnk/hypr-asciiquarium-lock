pkgname=hypr-asciiquarium-lock
pkgver=1.0
pkgrel=1
pkgdesc="An ASCII aquarium lock screen for Hyprland using swalock."
arch=('x86_64')
url="https://github.com/yqnk/wl-asciiquarium-lock"
license=('MIT')

depends=('swaylock')

# Dépendance facultative entre "asciiquarium" et "asciiquarium-transparent-git"
optdepends=('asciiquarium: ASCII art aquarium (non-transparent version)'
            'asciiquarium-transparent-git: ASCII art aquarium (transparent version)')

source=("hypr-asciiquarium-lock.sh")

sha256sums=('sha256sum')

package() {
    install -Dm755 "$srcdir/wl-asciiquarium-lock.sh" "$pkgdir/usr/bin/wl-asciiquarium-lock"
}

