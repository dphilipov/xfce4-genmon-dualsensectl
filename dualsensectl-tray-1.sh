readonly MAC_ADDRESS=''
readonly ICON_ACTIVE='/path/to/icon.svg'
readonly ICON_INACTIVE='/path/to/icon.svg'
readonly TOOLTIP='Controller 1'

# You do not need the MAC address if you are using only one controller. Replace the below line with:
# readonly BATTERY_LEVEL=$(dualsensectl battery | awk '{print $1}')
readonly BATTERY_LEVEL=$(dualsensectl -d $MAC_ADDRESS battery | awk '{print $1}')

if [ "$BATTERY_LEVEL" -ge 0 ]; then
    echo "<img>$ICON_ACTIVE</img>"
    echo "<txt><b>$BATTERY_LEVEL%</b></txt>"
    echo "<txtclick>dualsensectl -d $MAC_ADDRESS power-off</txtclick>"
    echo "<tool>$TOOLTIP</tool>" 
else
    echo "<img>$ICON_INACTIVE</img>"
    echo "<tool>$TOOLTIP</tool>" 
fi

