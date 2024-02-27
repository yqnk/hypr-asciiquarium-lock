pkgname=hypr-asciiquarium-lock
pkgver=1.0
pkgrel=3
pkgdesc="Quick shell script is designed to lock your screen using SwayLock and display an ASCII aquarium in the background while your screen is locked."
arch=('x86_64')
url="https://github.com/yqnk/hypr-asciiquarium-lock"
license=('MIT')

depends=('swaylock')

# Dépendance facultative entre "asciiquarium" et "asciiquarium-transparent-git"
optdepends=('asciiquarium: ASCII art aquarium (non-transparent version)'
            'asciiquarium-transparent-git: ASCII art aquarium (transparent version)')

source=("hypr-asciiquarium-lock.sh")

sha256sums=('353602b6fbbe15cf0de38295b5a20feb238002396d89e6a76d83afb10ab6661b')

package() {
    install -Dm755 "$srcdir/hypr-asciiquarium-lock.sh" "$pkgdir/usr/bin/hypr-asciiquarium-lock"
}

