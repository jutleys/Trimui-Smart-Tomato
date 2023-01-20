========================================
Clock adjustment daemon for TRIMUI smart
========================================

Once executed, resident in memory, and released when executed again

If WIFI is connected, date/time is adjusted to NTP server(time.google.com) at startup
If you use this feature, be sure to edit "timezone.txt" file to your region's value
(Write just +/- and numerical value, excluding "UTC")

Save the timestamp as clockd.txt and refer to it at the next launch

MENU long press (about 2sec) .. Enter adjustment mode

Adjustment mode button functions:

LEFT  or L	... Move setting item to left
RIGHT or R	... Move setting item to right
UP		... Decrease item -1
DOWN		... Increase item +1
START		... Screenshot and Exit adjustment mode
Other buttons	... Exit adjustment mode

!NOTE!	Some programs will have problems if the time is changed during execution
	Especially when running MainUI(stock GUI), do not rewind time, otherwise it will freeze the next time something is executed
	(when frozen, press and hold MENU again and set the time to a future time than before setting, then unfreeze)

	MENU button is released in the foreground process after adjustment mode is exited
