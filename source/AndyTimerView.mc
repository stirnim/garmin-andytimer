using Toybox.WatchUi;
using Toybox.Time;

class AndyTimerView extends WatchUi.SimpleDataField {
	hidden var duration = 0;

    // Set the label of the data field here.
    function initialize() {
        SimpleDataField.initialize();
        label = WatchUi.loadResource(Rez.Strings.Timer);
    }

    // The given info object contains all the current workout
    // information. Calculate a value and return it in this method.
    // Note that compute() and onUpdate() are asynchronous, and there is no
    // guarantee that compute() will be called before onUpdate().
    function compute(info) {
    	// get timer from activity
    	duration = info.timerTime !=null ? info.timerTime : 0;
    	return new Time.Duration(duration / 1000);
    }
    
}