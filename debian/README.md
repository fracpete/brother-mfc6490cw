# Brother MFC-6490CW - Debian
Links for packages and instructions on how to configure the Brother MFC-6490CW printer
under Debian-based systems.


## Resources

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


## Commands

* Download and install packages

  ```
  sudo apt-get install ia32-libs csh sane-utils psutils
  sudo dpkg -i --force-all mfc6490cwlpr-1.1.2-2.i386.deb 
  sudo dpkg -i --force-all mfc6490cwcupswrapper-1.1.2-2.i386.deb 
  sudo dpkg -i brscan3-0.2.13-1.i386.deb
  sudo dpkg -i brscan-skey-0.3.1-1.i386.deb
  sudo cp -R /usr/lib64/* /usr/lib/
  sudo adduser saned lp
  ```

* add remote printer (assuming IP 192.68.X.Y`):

  ```
  brsaneconfig3 -a name=SCANNER model=MFC-6490CW ip=192.168.X.Y
  ```

* check for remote printer:

  ```
  brsaneconfig3 -q | grep SCANNER
  ```

* reboot your system

### USB connection

* create udev rules for saned

  ```
  sudo touch /lib/udev/rules.d/40-libsane.rules
  ```

* and add the following

  ```
  ATTRS{idVendor}=="04f9", ENV{libsane_matched}="yes"
  ```

* reboot your system

