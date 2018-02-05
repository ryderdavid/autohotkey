LShift & RShift::SetCapsLockState, % (t:=!t) ?  "On" :  "Off"
RShift & LShift::SetCapsLockState, % (t:=!t) ?  "On" :  "Off"
^+z::Send ^y

!BackSpace::
Send ^+m{Enter}
return

!Lbutton::MButton
return

#PrintScreen::
If WinExist, ahk_exe SnippingTool.exe 
{
	WinActivate, ahk_exe SnippingTool.exe
	Send !+n
}
else 	
{
	Run, "%windir%\system32\SnippingTool.exe"
	WinWait ahk_exe SnippingTool.exe
	WinActivate ahk_exe SnippingTool.exe
	WinWaitActive ahk_exe SnippingTool.exe
	Send !+n
}
return