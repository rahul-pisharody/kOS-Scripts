clearscreen.

SAS off.
gear off.
set thr_val to 1.

set runmode to 1.

until runmode = 0 {
  if runmode = 1 {
    lock STEERING to UP.
    set thr_val to 1.
    stage.
    print "LIFTOFF!             " at (0,0).
	WAIT 10.
    set runmode to 2.
  }
  if runmode = 2 {
    lock STEERING to heading(90,0).
	if (VERTICALSPEED<0 and ALTITUDE<20000){
		set runmode to 0.
		ABORT ON.
	}
  }

  lock THROTTLE to thr_val.
}
unlock STEERING.
unlock THROTTLE.
