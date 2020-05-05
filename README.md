# About

Andy Timer - a Garmin [Connect IQ](https://developer.garmin.com/connect-iq/overview/) data field.

# Goal

Garmin Forerunner 945 (and possibly other) Garmin watches have a built-in timer data field which shows the hours numbers in a smaller font. The advantage is that the minutes and seconds have more space and can be shown with a larger font. Nontheless, after months of using my Forerunner 945 it still irritates me when checking the time during a run.

The goal of Andy Timer is to show the time with all numbers of equal size and with a large font.

Note: A sport activity (e.g. running) can at most only use two DataField apps. That said, it generally makes sense to create a full size DataField app which displays multiple metrics in one DataField.

# Implementation

My first attempt was to use the [SimpleDataField](https://developer.garmin.com/connect-iq/api-docs/Toybox/WatchUi/SimpleDataField.html). A SimpleDataField handles the field layout automatically. However, it turns out that font size, label and value placement are often times not optimal. Thus, I created a [DataField](https://developer.garmin.com/connect-iq/api-docs/Toybox/WatchUi/DataField.html) with multiple layouts so that the data field can be used in any data field arrangements for the Forerunner 945.

Image of the built-in Garmin Forerunner 945 timer data field:

![0](https://github.com/stirnim/garmin-andytimer/blob/master/screenshot/garmin.png)

The screenshots below use the Andy Timer data field in a 3 and 4 field layout on a Garmin Forerunner 945:

![0](https://github.com/stirnim/garmin-andytimer/blob/master/screenshot/0.png)
![0](https://github.com/stirnim/garmin-andytimer/blob/master/screenshot/1.png)
![0](https://github.com/stirnim/garmin-andytimer/blob/master/screenshot/2.png)

The Andy Timer uses the largest fonts possible. However, because not all watch fonts are exposed to Connect IQ it is still possible that the built-in data fields may show a better suited font. For example, the following font sizes are exposed to Connect IQ for the Garmin Forerunner 945: 13, 17, 19, 22, 24, 28, 34, 46, 53. Additional system fonts not exposed to Connect IQ have the following size: 31, 42, 59 (See `bin/devices.xml` in the [SDK](https://developer.garmin.com/connect-iq/sdk/)).

# Installation

This app is not in the Garmin [Connect IQ store](https://apps.garmin.com/).

You can use [App Side Loading](https://developer.garmin.com/connect-iq/programmers-guide/getting-started) to install the app onto the device. Copy the compiled binary to the USB mounted Garmin watch into the directory `GARMIN/Apps`. On macos you can use [Android File Transfer](https://www.android.com/filetransfer/) as macos lacks good MTP (Media Transfer Protocol) support.

Latest pre-built [binary](./build/AndyTimer.prg).
