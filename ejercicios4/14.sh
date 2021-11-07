# REQUESTS OVERLOAD
DDoSDetector(){
	rareLoad="4"
	actLoad=$(uptime | awk '{print $9}')
	incConns=$(netstat -ntu | awk '{print $5}' | cut -d: -f1 -s| sort | uniq -c )
	[ $actLoad -gt $rareLoad ] && echo -e "UNUSUAL LOAD\nCurrent Connections\n  " && echo $incConns || echo "Server load is regular : $actLoad"
}
# FAILED AUTHENTICATIONS
fauths(){
sshFAuth=$( awk '$5~/^sshd/{print $0}' /var/log/auth.log)
sudoFAuth=$( awk '$5~/sudo/ && $7~/auth/ {print $0}' /var/log/auth.log)
suFAuth=$( awk '$5=="su:" && $6=="FAILED" {print $0}' /var/log/auth.log)
echo -e "SSH FAILED AUTHS \n $sshFAuth\n =============================="
echo -e "SUDO FAILED AUTHS \n $sudoFAuth\n ============================"
echo -e "SU FAILED AUTHS \n $suFAuth  \n =============================="
mOe
}
kernRelated(){

kernEmerg=$( dmesg --level=emerg )
kernCrit=$( dmesg --level=crit )
kernAlert=$( dmesg --level=alert)
kernErrs=$( dmesg --level=err )
kernWarns=$( dmesg --level=warn )

echo -e "KERNEL EVENTS LEVELs\n 1) EMERGENCY\n 2) CRITICAL \n 3) ALERT \n 4) ERRORS \n 5) WARNINGS\n "
read -p "Choose [1-5]" chz
case $chz in 
	1) echo -e "EMERGENCY \n $kernEmerg";;
	2) echo -e "CRITICAL \n $kernCrit";;
	3) echo -e "ALERT \n $kernAlert";;
	4) echo -e "ERRORS \n $kernErrs";;
	5) echo -e "WARNINGS \n $kernWarns";;
	*) mainMenu;;
esac
mOe
}
mOe(){
	read -p "0) MAIN MENU || 1) EXIT" chx
	[ $chx -eq 0 ] && mainMenu || exit 
}
mainMenu(){
echo -e "SYSTEM EVENTS ANALYZER\n 1) FAILED AUTHS \n 2) DDoS CHECKER \n 3) KERNEL RELATED ERRORS\n *) EXIT \n"
read -p "Choose [1,2,3,4]" ch
case $ch in
	1) fauths ;;
	2) DDosDetector ;;
	3) kernRelated ;;
	*) exit 0 ;;
esac
}
mainMenu
