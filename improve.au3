Global $trigger = False
Global $timer
Global $increase_coords[2] = [1097, 940]
Global $item_coords[2] = [1515, 357]

HotKeySet("{F2}", "Receive3")
HotKeySet("{F3}", "Receive6")
HotKeySet("{F4}", "Receive10")
HotKeySet("{F5}", "Improve3")
HotKeySet("{F6}", "Improve6")
HotKeySet("{F7}", "Improve10")
HotKeySet("{F9}", "Finish")
HotKeySet("{F10}", "Receive")
HotKeySet("{F11}", "Improve")


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

Func Improve3()
   For $x = 0 to 2 Step 1
	  Improve()
   Next
EndFunc

Func Improve6()
   For $x = 0 to 5 Step 1
	  Improve()
   Next
EndFunc

Func Improve10()
   For $x = 0 to 9 Step 1
	  Improve()
   Next
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

Func Receive3()
   For $x = 0 to 2 Step 1
	  Receive()
   Next
EndFunc

Func Receive6()
   For $x = 0 to 5 Step 1
	  Receive()
   Next
EndFunc

Func Receive10()
   For $x = 0 to 9 Step 1
	  Receive()
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
   Sleep(500)
EndFunc

Func Finish()
   Exit
EndFunc

While 1
   Sleep(100)
WEnd
