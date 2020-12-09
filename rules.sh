read -p 'D/A : ' METHOD
read -p "Insert Your Port SSH : " PORT
read -p 'Insert Second Time : ' TIME
read -p 'Insert Many Hit : ' HIT

echo "sudo iptables -$METHOD INPUT -i eth0 -p tcp --dport $PORT -m state --state NEW -m recent --set --name SSH"
echo "sudo iptables -$METHOD INPUT -i eth0 -p tcp --dport $PORT -m state --state NEW -m recent --update --seconds $TIME --hitcount $HIT --rttl --name SSH -j DROP"

echo '====================='
echo '[*] Dont Forget For Save Rules With iptables-persistent'

