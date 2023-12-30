#SingleInstance, Force
SendMode Input
/*
Vivace Macro (https://github.com/Cweamy/freeGMacro)
Copyright © 2023 Vivace Macro (https://github.com/Cweamy)

This file is part of Vivace Macro. Our source code will always be open and available.

Vivace Macro is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

Vivace Macro is distributed in the hope that it will be useful. This does not give you the right to steal sections from our code, distribute it under your own name, then slander the macro.

You should have received a copy of the license along with Vivace Macro. If not, please redownload from an official source.
*/

SetWorkingDir, %A_ScriptDir%
SoundPlay, ebk.mp3
Msgbox P for Pause`nEnd for close macro
     TrayTip,, Place your mouse at chesseburger and then press F1
F1::
     TrayTip,, Start Macro
     Loop{
          PixelSearch, Px, Py, 486, 560, 488, 565, 0x262626, 10, Fast
          If ErrorLevel = 0
          {
               sleep 100
               send 3
               sleep 100
               click 10
               sleep 3000
          }
          Click 10
          sleep 300
          send 2
          sleep 100
          click 10
          sleep 3100
          send 2
          sleep 100
     }
Return
P::pause
End::
     TrayTip,, End Macro
Exitapp
