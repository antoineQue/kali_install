#!/bin/bash

#echo "------ UPDATE SOURCELIST -------"
#echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list 

echo "------- UPDATE OS ------" 
echo "NOTE : THINK TO ACTIVATE BIDIRECTIONAL COPY/PASTE" 
apt update && apt -y full-upgrade 

echo "------- APT INSTALL PACKAGE------" 
apt install -y virtualbox-guest-x11 apt-transport-https gobuster crackmapexec terminator curl python3-pip tree


mkdir ~/tools && cd ~/tools 
mkdir ~/tools/web && mkdir ~/tools/mobile && mkdir ~/tools/privesc && mkdir ~/tools/discovery && mkdir ~/tools/divers && mkdir ~/tools/network && mkdir ~/tools/wordlists



cd ~/tools/web
git clone https://github.com/immunIT/drupwn.git && cd drupwn && pip3 install -r requirements.txt && cd .. 
git clone --depth 1 https://github.com/drwetter/testssl.sh.git 
git clone https://github.com/internetwache/GitTools
git clone https://github.com/Tuhinshubhra/CMSeeK && cd CMSeeK && pip install -r requirements.txt && pip3 install -r requirements.txt && cd ..
git clone https://github.com/synacktiv/eos && python3 -m pip install --user ./eos
git clone https://github.com/ThmsLa/eZscanner.git
git clone https://github.com/meliot/shcheck
git clone https://github.com/feakk/xxxpwn
cd ..


cd ~/tools/mobile
cd ..


cd ~/tools/network
git clone https://github.com/SpiderLabs/Responder.git 
git clone https://github.com/SecureAuthCorp/impacket.git && cd impacket && pip install . && cd ..
cd ..

cd ~/tools/privesc
git clone https://github.com/portcullislabs/enum4linux.git
git clone https://github.com/GDSSecurity/Windows-Exploit-Suggester.git
git clone https://github.com/TH3xACE/SUDO_KILLER.git
git clone https://github.com/rebootuser/LinEnum.git
cd ..


cd ~/tools/discovery
git clone https://github.com/maurosoria/dirsearch.git 
git clone https://github.com/aboul3la/Sublist3r.git && cd Sublist3r && pip install -r requirements.txt && cd .. 
cd ..


cd ~/tools/divers
git clone https://github.com/oblique/create_ap && cd create_ap && make install
cd ..


cd ~/tools/wordlists
git clone https://github.com/fuzzdb-project/fuzzdb.git
git clone https://github.com/danielmiessler/SecLists.git
cd ..


echo "------- OTHER TOOLS ------" 
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

apt update
apt install -y sublime-text

echo "ALL TOOLS AS BEEN INSTALLED"
