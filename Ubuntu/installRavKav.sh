#!/bin/sh

pkgname=ravkav-bin
pkgver=0.1.4

sudo apt-get install pcscd
sudo cp ../Common/ravkav "/usr/bin/ravkav"
sudo cp ../Common/RavKavOnline.desktop "/usr/share/applications/RavKavOnline.desktop"
sudo update-desktop-database
wget "https://ravkavonline.co.il/releases/osx/ravkav-online-osx-$pkgver.zip" -O "$pkgname-$pkgver.zip"
unzip -j "$pkgname-$pkgver.zip" 'RavKavOnline/RavKavOnline 64.app/Contents/Java/RavKavOnline.jar' -d ./
sudo mkdir -p /usr/share/java/ravkav && sudo cp RavKavOnline.jar /usr/share/java/ravkav/RavKavOnline.jar
