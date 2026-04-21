core:part:getmodule("kOSProcessor"):DOEVENT("Open Terminal").

function download {
    parameter fname.

    IF NOT EXISTS(fname) AND HOMECONNECTION:ISCONNECTED {
		COPYPATH("0:"+fname, "1:"+fname).
		print "Downloading: "+fname.
    }
}
function update {
	parameter fname.
	
	if HOMECONNECTION:ISCONNECTED {
		COPYPATH("0:"+fname, "1:"+fname).
		print "Updating: "+fname.
    }
}
download("lib/lib_stage.ks").
download("launch_simple_up.ks").