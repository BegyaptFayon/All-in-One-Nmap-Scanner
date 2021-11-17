#/bin/bash
if  $(id -u) -ne 0 ]; then
        echo "THIS SCRIPT MUST BE RAN AS ROOT"
        exit 1
fi 
echo -e "INSTALLING ALL DEPENDENCIES RUN AS ROOT "
echo 
echo 
sudo apt-get install curl
echo
echo 
echo -e "INSTALLING NMAP "
echo
echo
echo 
sudo apt-get install nmap -y
echo 
sudo chmod +x nmap-scanner.sh
echo
echo 
echo -e "INSTALLING IS DONE."
echo
echo 
echo -e "TO START JUST DO ./nmap-scanner.sh"
echo
