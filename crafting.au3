Global $trigger = False
Global $timer
Global $increase_coords[2] = [1097, 940]
Global $item_coords[2] = [1515, 357]

HotKeySet("{F1}", "Receive")
HotKeySet("{F2}", "Receive3")
HotKeySet("{F3}", "Receive10")
HotKeySet("{F4}", "Receive30")

HotKeySet("{F5}", "Improve")
HotKeySet("{F6}", "Improve3")
HotKeySet("{F7}", "Improve6")
HotKeySet("{F8}", "Improve10")

HotKeySet("{F9}", "StartRefine")
HotKeySet("{F10}", "Pause")
HotKeySet("{F11}", "Finish")



Func _LOG($string)
   ConsoleWrite(String(Int(TimerDiff($timer))))
   ConsoleWrite(@TAB)
   ConsoleWrite($string & @CRLF)
EndFunc

Func Movto_item()
   MouseMove($item_coords[0], $item_coords[1], 20)
EndFunc

Func Improve3()
   ImproveX(3)
EndFunc

Func Improve6()
   ImproveX(6)
EndFunc

Func Improve10()
   ImproveX(10)
EndFunc

Func ImproveX($count)
   For $x = 1 to $count Step 1
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
   Sleep(1800)
EndFunc

Func Improve()
   $timer = TimerInit()
   Select_item()
   For $i = 0 To 2 Step 1
	  Sleep(1000)
	  Send("R")
	  Sleep(500)
	  Send("E")
	  Sleep(3000)
   Next
EndFunc

Func ReceiveX($count)
   For $x = 1 to $count Step 1
      Receive()
   Next
EndFunc

Func Receive3()
   ReceiveX(3)
EndFunc

Func Receive10()
   ReceiveX(10)
EndFunc

Func Receive30()
   ReceiveX(30)
EndFunc

Func Receive()
   $timer = TimerInit()
   Send("E")
   sleep(200)
   Send("X")
   sleep(200)
   Send("E")
   Sleep(500)
EndFunc

Func Refine()
   _LOG("refine")
   Send("r")
   Sleep(900)
EndFunc

Func StartRefine()
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
   Exit
EndFunc

While 1
   Sleep(100)
WEnd
