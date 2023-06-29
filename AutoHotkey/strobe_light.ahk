;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetTitleMatchMode, 2 ; A window's title can contain WinTitle anywhere inside it to be a match.
SetTitleMatchMode, Slow ; Slower but more thorough mode.
#SingleInstance Force ; Only allow one instance of this script to run.
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
Process, Priority,, High ; Set the script to run at high priority.

; While Ready Or Not is running, and the right mouse button is held down, this script will spam the "T" key in pairs of two
; so the flashlight ends up in the same state it was in before the right mouse button was held down.
#IfWinActive Ready Or Not
{
    $RButton::
    While GetKeyState("RButton", "P")
    {
        SendInput {RButton down}
        Sleep 10
        SendInput {t down}
        Sleep 10
        SendInput {t up}
        Sleep 10
        SendInput {t down}
        Sleep 10
        SendInput {t up}
    }
    Sleep 10
    SendInput {RButton up}
Return
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;