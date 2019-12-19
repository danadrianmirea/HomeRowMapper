#SingleInstance Force
SetCapsLockState, alwaysoff

; others
RControl::Suspend	
^F4::
	Reload 
return	
Ralt::LShift
LWin::LControl
; alt+f4 on capslock+. 
Capslock & ,:: Send !{F4}
LControl::LWin
; LShift, LAlt

; function keys to number keys
Capslock & 1::  Send {F1}
Capslock & 2::  Send {F2}
Capslock & 3::  Send {F3}
Capslock & 4::  Send {F4}
Capslock & 5::  Send {F5}
Capslock & 6::  Send {F6}
Capslock & 7::  Send {F7}
Capslock & 8::  Send {F8}
Capslock & 9::  Send {F9}
Capslock & 0::  Send {F10}
Capslock & -::  Send {F11}
Capslock & +::  Send {F12}

; qwertyuiop remapping area
Capslock & [:: Send {ESC}
Capslock & q:: Send % GetKeyState("Ralt","P") ? "{{}" : "{[}"
Capslock & w:: Send %  GetKeyState("Ralt","P") ? "{}}" : "{]}"
Capslock & e:: Send %  GetKeyState("Ralt","P") ? "{:}" : "{;}"
; r not bound
; t not bound 
Capslock & y::Send %  GetKeyState("Ralt","P") ? "{+}" : "{=}"
Capslock & u::Send %  GetKeyState("Ralt","P") ? "{|}" : "{\}"
; i not bound 

Capslock & o:: 
    if GetKeyState("LWin","P")
		Send ^{Home}
	else if GetKeyState("Ralt","P")
		Send +{Home}
	else
		Send {Home}
	return
	
Capslock & p:: 
    if GetKeyState("LWin","P")
		Send ^{End}
	else if GetKeyState("Ralt","P")
		Send +{End}
	else
		Send {End}
	return

;asdfghjkl remapping area 
; a not bound 
Capslock & s::Send % GetKeyState("Ralt","P") ? "{?}" : "{/}"
Capslock & d::Send % GetKeyState("Ralt","P") ? "{""}" : "{'}"
Capslock & f:: Send %   GetKeyState("Ralt","P") ? "{_}" : "{-}"
Capslock & g:: Send {PgDn}
Capslock & h:: Send % GetKeyState("Ralt","P") ? "+{Left}" : "{Left}"
Capslock & j::  Send % GetKeyState("Ralt","P") ? "+{Down}" : "{Down}"
Capslock & k:: Send % GetKeyState("Ralt","P") ? "+{Up}" : "{Up}"
Capslock & l::  Send % GetKeyState("Ralt","P") ? "+{Right}" : "{Right}"

;zxcvbnm area 
Capslock & z:: Send {Backspace}
Capslock & x:: Send {Delete}
Capslock & c:: Send %  GetKeyState("Ralt","P") ? "{<}" : "{,}"
Capslock & v:: Send %  GetKeyState("Ralt","P") ? "{>}" : "{.}"
Capslock & b:: Send {PgUp}
Capslock & n:: Send {Enter}
Capslock & m:: Send {ALT DOWN}{TAB}{ALT UP}
