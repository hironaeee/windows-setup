; vk07: a virtual key to do nothing
*~LShift::Send {Blind}{vk07}
*~RShift::Send {Blind}{vk07}

LShift up::
    if (A_PriorHotkey == "*~LShift")
    {
        ; 無変換キー
        Send, {vk1Dsc07B}
    }
    Return

RShift up::
    if (A_PriorHotkey == "*~RShift")
    {
        ; 変換キー
        Send, {vk1Csc079}
    }
    Return