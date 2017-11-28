Global $trigger = False
Global $timer
HotKeySet("{F11}", "Start")
HotKeySet("{F10}", "Pause")
HotKeySet("{F9}", "Finish")

Func _LOG($string)
   ConsoleWrite(String(Int(TimerDiff($timer))))
   ConsoleWrite(@TAB)
   ConsoleWrite($string & @CRLF)
EndFunc

Func refine()
   _LOG("refine")
   Send("r")
   Sleep(1000)
EndFunc

Func Start()
   $trigger = False
   $timer = TimerInit()
   _LOG("Start")
   While not $trigger
	  refine()
   WEnd
   Return
EndFunc

Func Pause()
   $trigger = True
EndFunc

Func Finish()
   exit(0)
EndFunc

While 1
   Sleep(100)
WEnd
