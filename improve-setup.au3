Global $trigger = False
Global $timer
Global $increase_coords[2]
Global $item_coords[2]

HotKeySet("{F9}", "Finish")
HotKeySet("{F8}", "Save_increase")
HotKeySet("{F7}", "Save_item")

Func Save_increase()
   $increase_coords = MouseGetPos()
   _LOG("increase coords")
   _LOG($increase_coords[0])
   _LOG($increase_coords[1])
EndFunc

Func Save_item()
   $item_coords = MouseGetPos()
   _LOG("item coords")
   _LOG($item_coords[0])
   _LOG($item_coords[1])
EndFunc

Func _LOG($string)
   ConsoleWrite(String(Int(TimerDiff($timer))))
   ConsoleWrite(@TAB)
   ConsoleWrite($string & @CRLF)
EndFunc

Func Finish()
   Exit
EndFunc

While 1
   Sleep(100)
WEnd
