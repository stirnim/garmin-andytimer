using Toybox.WatchUi;
using Toybox.Graphics;
using Toybox.Time;

class AndyTimerView extends WatchUi.DataField {

    hidden var mValue;

    function initialize() {
        DataField.initialize();
        mValue = "0:00";
    }

    function onLayout(dc) {
        var viewWidth = dc.getWidth();
        var viewHeight = dc.getHeight();
        var obscurityFlags = DataField.getObscurityFlags();

        if (obscurityFlags == (OBSCURE_RIGHT|OBSCURE_TOP|OBSCURE_LEFT)) {
            if (viewHeight > 100) {
                View.setLayout(Rez.Layouts.TopRoundedLarge(dc));
            } else if (viewHeight > 60) {
                View.setLayout(Rez.Layouts.TopRoundedSmall(dc));
            } else {
                View.setLayout(Rez.Layouts.TopRoundedUltraSmall(dc));
            }
        } else if (obscurityFlags == (OBSCURE_RIGHT|OBSCURE_LEFT)) {
            if (viewHeight > 70) {
                View.setLayout(Rez.Layouts.SideRoundedLarge(dc));
            } else {
                View.setLayout(Rez.Layouts.SideRoundedSmall(dc));
            }
        } else if (obscurityFlags == (OBSCURE_BOTTOM|OBSCURE_RIGHT|OBSCURE_LEFT)) {
            if (viewHeight > 100) {
                View.setLayout(Rez.Layouts.BottomRoundedLarge(dc));
            } else if (viewHeight > 60){
                View.setLayout(Rez.Layouts.BottomRoundedSmall(dc));
            } else {
                View.setLayout(Rez.Layouts.BottomRoundedUltraSmall(dc));
            }
        } else if (obscurityFlags == (OBSCURE_TOP|OBSCURE_LEFT)) {
            View.setLayout(Rez.Layouts.Quad1Layout(dc));
        } else if (obscurityFlags == (OBSCURE_TOP|OBSCURE_RIGHT)) {
            View.setLayout(Rez.Layouts.Quad2Layout(dc));
        } else if (obscurityFlags == (OBSCURE_BOTTOM|OBSCURE_LEFT)) {
            View.setLayout(Rez.Layouts.Quad3Layout(dc));
        } else if (obscurityFlags == (OBSCURE_BOTTOM|OBSCURE_RIGHT)) {
            View.setLayout(Rez.Layouts.Quad4Layout(dc));
        } else {
            if (viewWidth > 200) {
                View.setLayout(Rez.Layouts.SingleLayout(dc));
            } else {
                View.setLayout(Rez.Layouts.DefaultLayout(dc));
            }
        }

        var label = View.findDrawableById("label");
        label.setText(Rez.Strings.label);
        var value = View.findDrawableById("value");
        value.setText(mValue);

        return true;
    }

    // The given info object contains all the current workout
    // information. Calculate a value and return it in this method.
    // Note that compute() and onUpdate() are asynchronous, and there is no
    // guarantee that compute() will be called before onUpdate().
    function compute(info) {
        if(info has :timerTime){
            if(info.timerTime != null){
                mValue = timeToString(info.timerTime / 1000);
            } else {
                mValue = "0:00";
            }
        }
    }

    // Display the value you computed here. This will be called
    // once a second when the data field is visible.
    function onUpdate(dc) {
        // Set the background color
        View.findDrawableById("Background").setColor(getBackgroundColor());

        // Set the foreground color and value
        var value = View.findDrawableById("value");
        var label = View.findDrawableById("label");
        if (getBackgroundColor() == Graphics.COLOR_BLACK) {
            value.setColor(Graphics.COLOR_WHITE);
            label.setColor(Graphics.COLOR_WHITE);
        } else {
            value.setColor(Graphics.COLOR_BLACK);
            label.setColor(Graphics.COLOR_BLACK);
        }
        value.setText(mValue);

        // Call parent's onUpdate(dc) to redraw the layout
        View.onUpdate(dc);
    }

    function timeToString(time){
        var seconds = time % 60;
        var minutes = (time / 60) % 60;
        var hours = time / 60 / 60;
        if (hours > 0) {
            return hours.format("%d") + ":" + minutes.format("%02d") + ":" + seconds.format("%02d");
        } else {
            return minutes.format("%d") + ":" + seconds.format("%02d");
        }
    }

}