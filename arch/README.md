# Brother MFC-6490CW - Arch Linux
Arch Linux packages for Brother MFC-6490CW printer.

## Basics

* How to package a deb for arch

  https://wiki.archlinux.org/index.php/Packaging_Brother_printer_drivers#Preparing_a_PKGBUILD_for_.DEB

* PKGBUILD

  https://wiki.archlinux.org/index.php/PKGBUILD


## Resources

* Support page

  https://support.brother.com/g/b/producttop.aspx?c=us&lang=en&prod=mfc6490cw_all

* LPR printer driver

  https://download.brother.com/welcome/dlf006180/mfc6490cwlpr-1.1.2-2.i386.deb

* CUPSWrapper printer driver

  https://download.brother.com/welcome/dlf006182/mfc6490cwcupswrapper-1.1.2-2.i386.deb

* Scanner driver

  https://download.brother.com/welcome/dlf006641/brscan3-0.2.13-1.i386.deb

* Scan key tool

  https://download.brother.com/welcome/dlf006651/brscan-skey-0.3.1-1.i386.deb


## Build

* Pre-requisites

  ```
  sudo pacman -S pacman-contrib sane lib32-glibc
  ```

* Either run `build.sh` and `install.sh` or in each directory:

  * Update hashes

    ```
    updpkgsums PKGBUILD
    ```

  * create package (in dir with `PKGBUILD`):

    ```
    makepkg
    ```

  * install generated package:

    ```
    sudo pacman -U FILE.tar.xz
    ```

* setup scanner (assuming IP 192.168.X.Y)

  ```
  brsaneconfig3 -a name=SCANNER model=MFC-6490CW ip=192.168.X.Y
  brsaneconfig3 -q | grep SCANNER
  sudo brsaneconfig3 -d
  ```

