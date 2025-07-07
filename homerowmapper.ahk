#SingleInstance Force
SetStoreCapsLockMode, Off
SetCapsLockState, alwaysoff
CapsLock::Return
LShift::Return

; others
RControl::Suspend	
^F4::
	Reload 
return	
Ralt::LShift
LWin::LControl
; alt+f4 on LShift + , 
LShift & ,:: Send !{F4}
LControl::LWin
; LShift, LAlt

; function keys to number keys
LShift & 1::  Send {F1}
LShift & 2::  Send {F2}
LShift & 3::  Send {F3}
LShift & 4::  Send {F4}
LShift & 5::  Send {F5}
LShift & 6::  Send {F6}
LShift & 7::  Send {F7}
LShift & 8::  Send {F8}
LShift & 9::  Send {F9}
LShift & 0::  Send {F10}
LShift & -::  Send {F11}
LShift & +::  Send {F12}

; qwertyuiop remapping area
LShift & [:: Send {ESC}
LShift & q:: Send % GetKeyState("Ralt","P") ? "{{}" : "{[}"
LShift & w:: Send % GetKeyState("Ralt","P") ? "{}}" : "{]}"
LShift & e:: Send % GetKeyState("Ralt","P") ? "{:}" : "{;}"
; r not bound
; t not bound 
LShift & y:: Send % GetKeyState("Alt","P") ? "{+}" : "{=}"
LShift & u:: Send % GetKeyState("Ralt","P") ? "{|}" : "{\}"
; i not bound 

LShift & o:: 
	if GetKeyState("LWin","P")
		Send ^{Home}
	else if GetKeyState("Ralt","P")
		Send +{Home}
	else
		Send {Home}
return
	
LShift & p:: 
	if GetKeyState("LWin","P")
		Send ^{End}
	else if GetKeyState("Ralt","P")
		Send +{End}
	else
		Send {End}
return

;asdfghjkl remapping area 
; a not bound 
LShift & s:: Send % GetKeyState("Ralt","P") ? "{?}" : "{/}"
LShift & d:: Send % GetKeyState("Ralt","P") ? "{""}" : "{'}"
LShift & f:: Send % GetKeyState("Ralt","P") ? "{_}" : "{-}"
LShift & g:: Send {PgDn}
LShift & h:: Send % GetKeyState("Ralt","P") ? "+{Left}" : "{Left}"
LShift & j:: Send % GetKeyState("Ralt","P") ? "+{Down}" : "{Down}"
LShift & k:: Send % GetKeyState("Ralt","P") ? "+{Up}" : "{Up}"
LShift & l:: Send % GetKeyState("Ralt","P") ? "+{Right}" : "{Right}"

;zxcvbnm area 
LShift & z:: Send {Backspace}
LShift & x:: Send {Delete}
LShift & c:: Send % GetKeyState("Ralt","P") ? "{<}" : "{,}"
LShift & v:: Send % GetKeyState("Ralt","P") ? "{>}" : "{.}"
LShift & b:: Send {PgUp}
LShift & n:: Send {Enter}
LShift & m:: Send {ALT DOWN}{TAB}{ALT UP}