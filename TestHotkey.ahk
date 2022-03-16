Gui, Add, Button, gOn, On
Gui, Add, Button, gOff, Off
Gui, Add, Hotkey, vkey
Gui, Add, Button, gsave, Save
Gui, Show
return

GuiClose:
ExitApp

save:
GuiControlGet, key

;if(key!="") { 
;	
;	Hotkey, %key%, Hotkey1, Off, UseErrorLevel
;	MsgBox, Ошибка Выключения - %ErrorLevel%
;	Hotkey, %key%, Hotkey1, On, UseErrorLevel
;	MsgBox, Ошибка Включения - %ErrorLevel%
;} else {
;	MsgBox, % key
;	Hotkey, %key%, Hotkey1, Off, UseErrorLevel
;	MsgBox, Ошибка Выключения - %ErrorLevel%
;}

	
	Hotkey, %tempKey%, Hotkey1, Off, UseErrorLevel
	MsgBox, Ошибка Выключения - %ErrorLevel%
	Hotkey, %key%, Hotkey1, On, UseErrorLevel
	MsgBox, Ошибка Включения - %ErrorLevel%
	MsgBox, Key - %key% TempKey - %tempKey%

	tempKey := key
	
return

On:
Hotkey, S, Hotkey1, On, UseErrorLevel
return
Off:
Hotkey, S, Hotkey1, Off, UseErrorLevel
return

Hotkey1:
MsgBox, Нажал Кнопку %A_ThisHotkey%
return