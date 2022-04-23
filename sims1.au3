#include <GUIConstantsEx.au3>
#include "MouseOnEvent.au3"

_MouseSetOnEvent($MOUSE_WHEELSCROLLDOWN_EVENT, "_mousewheel")
_MouseSetOnEvent($MOUSE_WHEELSCROLLUP_EVENT, "_mousewheel")
HotKeySet("w",		"_wasd")
HotKeySet("s",		"_wasd")
HotKeySet("a",		"_wasd")
HotKeySet("d",		"_wasd")
HotKeySet("{F10}",	"_quit")

while 1
	sleep(10000)
wend

Func _mousewheel($event)
	Switch $event
		Case $MOUSE_WHEELSCROLLDOWN_EVENT
			send("{-}")
		Case $MOUSE_WHEELSCROLLUP_EVENT
			send("{+}")
	EndSwitch

	Return $MOE_BLOCKDEFPROC
EndFunc

Func _wasd()
    Switch @HotKeyPressed
        Case "w"
            Send("{up}")
        Case "s"
            Send("{down}")
        Case "a"
            Send("{left}")
        Case "d"
            Send("{right}")
	EndSwitch
EndFunc

Func _quit()
	Exit
EndFunc