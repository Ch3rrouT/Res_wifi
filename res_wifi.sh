# CREADO POR RodrigoC.
# Suvido el 18/10/2015
# Update 29/10/2015
# Fix line [25] missing :P
# Probado en android "SONY XPERYA"
#
clear
echo "






"
echo "          [*] RES_WIFI... "
echo "          [*] Creador: Rodrigocanaza. "
echo "          [*] FB : www.fb.com/RodrigoAlonzoWar"
echo "

"

id | grep "root" >/dev/null 2>&1
if [ $? != 0 ]; then
  echo "[!]$0 You are not a root user. "
  echo "Quitting!"
  exit 1
fi 
if [ "$1" == "r" ]; then 
  echo "[+] Starting!"
fi
if [ -d /data/res_wfi/ ]; then
echo "[!] Folder found"
else
  echo "[+] Creating folder!"
  mkdir /data/res_wifi/
  echo "[!] Folder created!"
fi
if [ -f /data/misc/wifi/wpa_supplicant.conf ]; then
echo "[!] File found!"
cp /data/misc/wifi/wpa_supplicant.conf /data/res_wifi
else 
  echo "[!] Couldn't find file!"
fi 
#Para mas orden se añadio el argumento "-e"
#grep ssid /data/res_wifi/wpa_supplicant.conf && grep psk /data/res_wifi/wpa_supplicant.conf && grep key_mgmt /data/res_wifi/wpa_supplicant.conf
grep -e ssid -e psk -e key_mgmt /data/res_wifi/wpa_supplicant.conf
echo "[!] Working..."
echo "[!] Un saludos a todos, Atte : RodrigoC."
echo "[*] FB : www.fb.com/RodrigoAlonzoWar"
echo "[!] Si tienes algun problema contactame y reporta el problema !"

