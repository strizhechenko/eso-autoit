Global $trigger = False
Global $timer
HotKeySet("{F10}", "Receive")
HotKeySet("{F9}", "Finish")

Func _LOG($string)
   ConsoleWrite(String(Int(TimerDiff($timer))))
   ConsoleWrite(@TAB)
   ConsoleWrite($string & @CRLF)
EndFunc

Func Receive()
   $timer = TimerInit()
   Send("E")
   sleep(200)
   Send("X")
   sleep(200)
   Send("E")
EndFunc

Func Finish()
   Exit
EndFunc

While 1
   Sleep(100)
WEnd
