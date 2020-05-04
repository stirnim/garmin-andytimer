# About

Andy Timer - a Garmin [Connect IQ](https://developer.garmin.com/connect-iq/overview/) data field.

# Goal

Garmin Forerunner 945 (and possibly other) Garmin watches have a built-in timer data field which shows the hours numbers in a smaller font. The advantage is that the minutes and seconds have more space and can be shown with a larger font. Nontheless, after months of using my Forerunner 945 it still irritates me when checking the time during a run.

The goal of Andy Timer is to show the time with all numbers of equal size and with a large font.

Note: An Activity can at most use only two DataField apps. It can therefore make sense to create your own full screen DataField app where you place multiple data fields as you require and only occupy one DataField app.

# Implementation

My first attempt was to use the [SimpleDataField](https://developer.garmin.com/connect-iq/api-docs/Toybox/WatchUi/SimpleDataField.html). A SimpleDataField handles the field layout automatically. However, it turns out that font size, label and value placement are often times not optimal. Thus, I created a [DataField](https://developer.garmin.com/connect-iq/api-docs/Toybox/WatchUi/DataField.html) with multiple layouts so that the data field can be used in any data field arrangements for the Forerunner 945.

Image of the built-in Garmin Forerunner 945 timer data field:

![0](https://github.com/stirnim/garmin-andytimer/blob/master/screenshot/garmin.png)

The screenshots below use the Andy Timer data field in a 3 and 4 field layout on a Garmin Forerunner 945:

![0](https://github.com/stirnim/garmin-andytimer/blob/master/screenshot/0.png)
![0](https://github.com/stirnim/garmin-andytimer/blob/master/screenshot/1.png)
![0](https://github.com/stirnim/garmin-andytimer/blob/master/screenshot/2.png)

The Andy Timer generally uses larger or equal large fonts as the built-in timer. The only time it has smaller fonts is when the data field is shown in the 1 field layout or 3 field layout in the middle. In both cases, if the time is below one hour, the built-in timer uses a size 59 font which is not exposed to Connect IQ. The largest font exposed to Connect IQ is of size 53 (`FONT_NUMBER_THAI_HOT`).

# Installation

This app is not in the Garmin [Connect IQ store](https://apps.garmin.com/).

You can use [App Side Loading](https://developer.garmin.com/connect-iq/programmers-guide/getting-started) to install the app onto the device. Copy the compiled binary to the USB mounted Garmin watch into the directory `GARMIN/Apps`. On macos you can use [Android File Transfer](https://www.android.com/filetransfer/) as macos lacks good MTP (Media Transfer Protocol) support.

Latest pre-built [binary](./build/AndyTimer.prg).
