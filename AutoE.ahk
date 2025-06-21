#Requires AutoHotkey v2.0

isPressingE := false
pressInterval := 10 ; milliseconds

F6:: {
    global isPressingE
    isPressingE := !isPressingE
    if isPressingE {
        SetTimer(() => PressE(), pressInterval)
        ToolTip "Auto E: ON"
        SetTimer(() => ToolTip(), 1000)
    } else {
        SetTimer(() => PressE(), 0)
        ToolTip "Auto E: OFF"
        SetTimer(() => ToolTip(), 1000)
    }
}

PressE() {
    global isPressingE
    if isPressingE {
        Send "e"
    }
}