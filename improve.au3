Global $trigger = False
Global $timer
HotKeySet("{F11}", "Improve")
HotKeySet("{F9}", "Finish")

Func _LOG($string)
   ConsoleWrite(String(Int(TimerDiff($timer))))
   ConsoleWrite(@TAB)
   ConsoleWrite($string & @CRLF)
EndFunc

Func Improve()
   $timer = TimerInit()
   For $i = 0 To 2 Step 1
	  Sleep(1000)
    ; one click should be enough, but let's be sure
    ; and don't rely on network timeouts and sleeps
	  MouseClick("main")
	  Sleep(200)
	  MouseClick("main")
	  Sleep(200)
	  MouseClick("main")
	  Sleep(200)
	  Send("R")
	  Sleep(500)
	  Send("E")
	  Sleep(3000)
   Next
EndFunc

Func Finish()
   Exit
EndFunc

While 1
   Sleep(100)
WEnd
