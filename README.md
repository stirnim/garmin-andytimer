# About

Andy Timer - a Garmin ![Connect IQ](https://developer.garmin.com/connect-iq/overview/) data field.

# Goal

Garmin Forerunner 945 and Fenix 6 (and possibly other) Garmin watches have a built-in timer data field which shows the hours numbers in a smaller font. The advantage is that the minutes and seconds have more space and can be shown with a larger font. Nontheless, after months of using my Forerunner 945 it still irritates me when checking the timer during a run.

The goal of Andy Timer is to show the timer with all numbers of equal size.

# Implementation

This app uses a ![SimpleDataField](https://developer.garmin.com/connect-iq/api-docs/Toybox/WatchUi/SimpleDataField.html). A SimpleDataField handles the field layout automatically. The advantage is that one can focus on the functionality. The disadvantage is of course, that font size and layout are automatically handled. 

Image of the built-in Garmin Forerunner 945 timer data field:

![0](https://github.com/stirnim/garmin-andytimer/blob/master/screenshot/garmin.png)

The screenshots below use the Andy Timer data field multiple times in a 3-field-layout on a Garmin Forerunner 945:

![0](https://github.com/stirnim/garmin-andytimer/blob/master/screenshot/0.png)
![0](https://github.com/stirnim/garmin-andytimer/blob/master/screenshot/1.png)
![0](https://github.com/stirnim/garmin-andytimer/blob/master/screenshot/2.png)

The Andy Timer in the top and bottom data field have the same font size as the built-in timer data field if the time is below one hour. If the activity timer also shows hours numbers, the Andy Timer uses a smaller font. The larger middle data field layout is kind of off. The value is not vertically centered and at times it feels that the font could be larger. I guess this is the price one pays if using the SimpleDataField.

# App Store

This app is not in the Garmin ![Connect IQ store](https://apps.garmin.com/).
