figlet -f cyberlarge "NMAP-SCAN" | lolcat -a -d 7
echo -e "By : BegyaptFayon"
echo -e 
echo -e  "mYour Public IP Address is :"
        curl http://ident.me
echo -e 
echo -e
echo -e "mYour System IP Address is :"
        hostname -I
echo -e
echo -e "mYour Host Name is : $HOSTNAME"
echo -e
read -p $'Enter the IP address or URL you want to scan : ' firstip
echo -e 
echo -e "Enter the Port like this ( 0 200 )  means it will scan from Port o to 200."
echo -e
read -p $'Enter the Range Of PORTS :' port1 port2
echo -e
echo -e "You entered this IP :"$firstip""
echo -e
while true; do
  read -p $'Do you want to continue (Y/N) ? : ' yn
  case $yn in
  [Yy]* ) break;;
  [Nn]* )  echo && echo -e "Good-Bye" ;exit;;
  * ) echo -e "Please answer it with ( Y/N )";;
  esac
  done

echo -e
echo -e
echo -e "CHOOSE THE TYPE OF SCAN YOU WANT TO EXECUTE"
echo -e
echo -e
echo -e "1.   Simple Scan" 
echo -e "2.   Quick Scan"
echo -e "3.   Quick Scan Plus"
echo -e "4.   Quick Traceroute Scan"
echo -e "5.   Slow Comprehensive Scan"
echo -e "6.   Ping Scan (1)"
echo -e "7.   Ping Scan (2)"
echo -e "8.   Intense Scan , No Ping"
echo -e "9.   Intense Scan, All TCP PORTS"
echo -e "10.  Intense Scan Plus UDP" 
echo -e "11.  Intense Scan Regular"
echo -e "12.  OS Detect Scan"
echo -e "13.  Scan A List Of IP Address"
echo -e "14.  Scan And Save The Result In XML File"
echo -e "15.  Scan And Save The Result In TXT File"
echo -e "16.  Scan And Save The Result In GREPable File"
echo -e "17.  Scan For HOST Firewall Detection"
echo -e "18.  Scan A HOST When Protected By Firewall"
echo -e "19.  Scan And Detect Remote Server/Deamon"
echo -e "20.  Scan A Firewall for MAC Address Spoofing"
echo -e "21.  NMAP HELP"
echo -e "22.  ABOUT AUTHOUR"
echo -e
echo -e
echo -e
read -p $'SELECT ONE OF THE OPTIONS WITH THE RESPECTED NUMBER : ' options
  

#All the Variables are here don't edit 


  one=1
  two=2
  three=3
  four=4
  five=5
  six=6
  seven=7
  eight=8
  nine=9
  ten=10
  eleven=11
  twelve=12
  thirteen=13
  fourteen=14
  fiveteen=15
  sixteen=16
  seventeen=17
  eigthteen=18
  nineteen=19
  twenty=20



# ALL THE IF AND ELSE STATEMENT COMES HERES


if [ "$options" = "$one" ]

  then


    echo -e
    echo -e
    echo -e "Scanning the IP using 1st option"
    echo -e
    echo -e
           nmap $firstip

fi


if [ "$options" = "$two" ]

  then


      echo -e
      echo -e 
      echo -e "Scanning the IP using 2nd option"
      echo -e
      echo -e
             nmap -T4 -F $firstip

fi


if [ "$options" = "$three" ]

  then 


     echo -e 
     echo -e 
     echo -e "Scanning the IP using 2nd option"
     echo -e
     echo -e
            nmap -sV -T4 -O -F --version-light 10 $firstip

fi


if [ "$options" = "$four" ]

  then 


      echo -e 
      echo -e 
      echo -e "Scanning the IP using 4th option"
      echo -e
      echo -e
             nmap -sn --traceroute 10 $firstip

fi


if [ "$options" = "$five" ]

  then 


      echo -e 
      echo -e 
      echo -e "Scanning the IP using 5th option"
      echo -e
      echo -e
             nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" $firstip

fi


if [ "$options" = "$six" ]

  then

 
      echo -e 
      echo -e 
      echo -e "Scanning the IP using 6th option"
      echo -e
      echo -e
             nmap -sn $firstip

fi


if [ "$options" = "$seven" ]

  then 


      echo -e 
      echo -e 
      echo -e "Scanning the IP using 7th option"
      echo -e
      echo -e
             nmap -Pn $firstip

fi


if [ "$options" = "$eight" ]

  then 


     echo -e 
     echo -e 
     echo -e "Scanning the IP using 8th option"
     echo -e
     echo -e
           nmap -T4 -A -v -Pn $firstip

fi


if [ "$options" = "$nine" ]

  then

 
      echo -e 
      echo -e 
      echo -e "Scanning the IP using 9th option"
      echo -e
      echo -e
             nmap -p 1-65535 -T4 -A -v $firstip

fi


if [ "$options" = "$ten" ]

  then 


      echo -e 
      echo -e 
      echo -e "Scanning the IP using 10th option"
      echo -e
      echo -e 
             nmap -sS -sU -T4 -A -v $firstip

fi


if [ "$options" = "$eleven" ]

  then

 
      echo -e 
      echo -e 
      echo -e "Scanning the IP using 11th option"
      echo -e
             nmap -T4 -A -v $firstip

fi


if [ "$options" = "$twelve" ]

  then 
      
      
      echo -e 
      echo -e 
      echo -e "Scanning the IP using 12th option"
      echo -e
      echo -e
             nmap -O $firstip

fi


if [ "$options" = "$thirteen" ]

  then

 
      echo -e 
      echo -e 
      echo -e "Scanning the IP using 13th option"
      echo -e
      echo -e "The Command Will Scan The IP Saved In The Name Directory In Name Of : ip-list.txt"
      echo -e
      echo -e
             nmap -iL ip-list.txt

fi


if [ "$options" = "$fourteen" ]

  then
 

      echo -e 
      echo -e 
      echo -e "Scanning the IP using 14th option"
      echo -e
      echo -e "The Output Will Be Saved In The Name Of : scan-result.xml"
      echo -e
      echo -e
             nmap -A -O -oX scan-result.xml $firstip

fi


if [ "$options" = "$fiveteen" ]

  then 


      echo -e 
      echo -e 
      echo -e "Scanning the IP using 15th option"
      echo -e
      echo -e "The Output Will Be Saved In The Name Of : scan-result.xml"
      echo -e
      echo -e
             nmap -A -O -oN scan-result.xml $firstip

fi


if [ "$options" = "$sixteen" ]

  then 


      echo -e 
      echo -e 
      echo -e "Scanning the IP using 16th option"
      echo -e
      echo -e "The Output Will Be Saved In The Name Of : scan-result_GREP.txt"
      echo -e
      echo -e
             nmap -A -O -oG scan-result_GREP.txt $firstip

fi


if [ "$options" = "$seventeen" ]

  then
 
      echo -e 
      echo -e 
      echo -e "Scanning the IP using 17th option"
      echo -e
      echo -e
             nmap -sA $firstip

fi


if [ "$options" = "$eightteen" ]

  then 


      echo -e 
      echo -e 
      echo -e "Scanning the IP using 18th option"
      echo -e
      echo -e
             nmap -PN $firstip

fi


if [ "$options" = "$nineteen" ]

then 
      echo -e 
      echo -e 
      echo -e "Scanning the IP using 19th option"
      echo -e
      echo -e
             nmap -sV $firstip
fi


if [ "$options" = "$twenty" ]

  then 


      echo -e 
      echo -e 
      echo -e "Scanning the IP using 20th option"
      echo -e
      echo -e
             nmap -v -sT -PN --spoof-mac 0 $firstip

fi




