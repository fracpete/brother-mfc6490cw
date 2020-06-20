# brother-mfc6490cw-arch
Arch Linux pacakges for Brother MFC-6490CW printer.

## Arch

* How to package a deb for arch

  https://wiki.archlinux.org/index.php/Packaging_Brother_printer_drivers#Preparing_a_PKGBUILD_for_.DEB

* PKGBUILD

  https://wiki.archlinux.org/index.php/PKGBUILD
  

## Brother

* Support page

  https://support.brother.com/g/b/producttop.aspx?c=us&lang=en&prod=mfc6490cw_all

* Scanner driver

  https://download.brother.com/welcome/dlf006641/brscan3-0.2.13-1.i386.deb

* Scan key tool

  https://download.brother.com/welcome/dlf006651/brscan-skey-0.3.1-1.i386.deb

* LPR printer driver

  https://download.brother.com/welcome/dlf006180/mfc6490cwlpr-1.1.2-2.i386.deb

* CUPSWrapper printer driver

  https://download.brother.com/welcome/dlf006182/mfc6490cwcupswrapper-1.1.2-2.i386.deb


## Build

* Update hashes (`sudo pacman -S pacman-contrib`):

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

* install cups (ppd and example printer):

  ```
  sudo /usr/local/Brother/Printer/mfc6490cw/cupswrapper/cupswrappermfc6490cw
  ```

* setup scanner

  ```
  brsaneconfig3 -a name=SCANNER model=MFC-6490CW ip=192.168.2.50
  brsaneconfig3 -q | grep SCANNER
  sudo brsaneconfig3 -d
  ```

