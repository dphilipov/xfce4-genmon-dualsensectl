# A DualSense battery level tray icon & power off button

Active and Inactive states:
![image](https://user-images.githubusercontent.com/76788928/212563273-12d9fe98-c161-4d59-be98-589734287751.png)


The script takes the output from [dualsensectl](https://github.com/nowrep/dualsensectl) and displays it as a tray icon via the [xfce4-genmon-plugin](https://docs.xfce.org/panel-plugins/xfce4-genmon-plugin/start). It also powers off the controller when you click on the battery percentage number.

Icons used are [free Fontawesome icons](https://fontawesome.com/icons). You can replace them with whatever you want.

> Note: my setup is for having 2 tray icons for 2 controllers.

### Having different icons for different battery levels

You can do something like:

```
if [ "$battery_level" -ge 75 ]; then
    echo "<img>/path/to/icon-full.svg</img>"
    echo "<tool>$battery_level%</tool>"
elif [ "$battery_level" -ge 50 ]; then
    echo "<img>/path/to/icon-half.svg</img>"
    echo "<tool>$battery_level%</tool>"
elif [ "$battery_level" -ge 25 ]; then
    echo "<img>/path/to/icon-low.svg</img>"
    echo "<tool>$battery_level%</tool>"
elif [ "$battery_level" -ge 0 ]; then
    echo "<img>/path/to/icon-empty.svg</img>"
    echo "<tool>$battery_level%</tool>"
else
    echo "<img>/path/to/icon-inactive.svg</img>"
    echo "<tool>Disconnected</tool>"
fi
```
