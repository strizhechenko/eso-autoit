Global $trigger = False
Global $timer
Global $increase_coords[2] = [1097, 940]
Global $item_coords[2] = [1515, 357]

HotKeySet("{F11}", "Improve")
HotKeySet("{F10}", "Receive")
HotKeySet("{F9}", "Finish")

Func _LOG($string)
   ConsoleWrite(String(Int(TimerDiff($timer))))
   ConsoleWrite(@TAB)
   ConsoleWrite($string & @CRLF)
EndFunc

Func Movto_increase()
   MouseMove($increase_coords[0], $increase_coords[1], 20)
EndFunc

Func Movto_item()
   MouseMove($item_coords[0], $item_coords[1], 20)
EndFunc

Func Select_item()
   Movto_item()
   Sleep(1800)
   MouseClick("main")
   Sleep(10)
   MouseClick("main")
   Sleep(50)
   Movto_increase()
   Sleep(1800)
EndFunc

; TODO: loop
Func Improve()
   $timer = TimerInit()
   Select_item()
   For $i = 0 To 2 Step 1
	  Sleep(1000)
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

; TODO: loop
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
