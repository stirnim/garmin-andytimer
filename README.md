# About

Andy Timer - a Garmin ![Connect IQ](https://developer.garmin.com/connect-iq/overview/) data field.

# Goal

Garmin Forerunner 945 and Fenix 6 (and possibly other) Garmin watches have a built-in timer data field which shows the hours numbers in a smaller font. The advantage is that the minutes and seconds have more space and can be shown with a larger font. Nontheless, after months of using my Forerunner 945 it still irritates me when checking the timer during a run.

The goal of Andy Timer is to show the timer with all numbers of equal size.

# Implementation

This app uses a ![SimpleDataField](https://developer.garmin.com/connect-iq/api-docs/Toybox/WatchUi/SimpleDataField.html). A SimpleDataField handles the field layout automatically. The advantage is that one can focus on the functionality. The disadvantage is of course, that font size and layout are automatically handled. 

Image of the built-in Garmin Forerunner 945 timer data field:

![0](https://github.com/stirnim/garmin-andytimer/blob/develop/screenshot/garmin.png)

The screenshots below use the Andy Timer data field multiple times in a 3-field-layout on a Garmin Forerunner 945:

![0](https://github.com/stirnim/garmin-andytimer/blob/develop/screenshot/0.png)
![0](https://github.com/stirnim/garmin-andytimer/blob/develop/screenshot/1.png)
![0](https://github.com/stirnim/garmin-andytimer/blob/develop/screenshot/2.png)

If the activity timer is below one hour the font size is identical to the built-in timer data field. However, when the activity timer shows the hours numbers, Andy Timer uses a smaller font to fit the time value. The built-in timer still shows the same font as for minutes and seconds but a very small font for the hours numbers.

# App Store

This app is not in the Garmin ![Connect IQ store](https://apps.garmin.com/).
