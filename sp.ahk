#SingleInstance, Force
/*
Vivace Macro (https://github.com/Cweamy/freeGMacro)
Copyright © 2023 Vivace Macro (https://github.com/Cweamy)

This file is part of Vivace Macro. Our source code will always be open and available.

Vivace Macro is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

Vivace Macro is distributed in the hope that it will be useful. This does not give you the right to steal sections from our code, distribute it under your own name, then slander the macro.

You should have received a copy of the license along with Vivace Macro. If not, please redownload from an official source.
*/
SoundP
SendMode Input
SetWorkingDir, %A_ScriptDir%
SoundPlay, ebk.mp3
ImageFile := "gcordss.png"
Gui, Add, Picture, x0 y0 w400 h200 +Background, bin\%ImageFile%
Gui, add, Slider, w400 vSlider gSlide Range1-5 tickinterval+0.1 AltSubmit
Gui, add, text, xm y+15, Stop Macro at Stamina :
Gui, add, Edit, x+10 w70 vValue,
Gui, add, text, xm y+30, 0.1 = 10 Percent
Gui, add, Button, x+10 w60 Default gShowValue, OK
Gui, Add, Checkbox, x279 y255 vCheckbox1, BCAA
Gui, Add, Text, x287 y331 , P = Pause Macro
Gui, Add, Text, x287 y351, End = Exit macro
Gui, Show
return
Slide:
     Gui, Submit, NoHide
     int := slider / 10
     fra := Mod(int, 1)
     fra := SubStr(fra, InStr(fra, ".") + 1, 1)
     val := Floor(int) "." fra
     GuiControl,, Edit1, %val%
return
ShowValue:
     Gui, Submit, NoHide
     Gui, Destroy
     If (Checkbox1 = 1)
          Msgbox BCAA at slot 8
     #SingleInstance, Force
     if WinExist("Ahk_exe RobloxPlayerBeta.exe") {
          WinActivate
          WinGetPos,,,W,H,A
          WinMove, Ahk_exe RobloxPlayerBeta.exe,,,, 800, 599
     }
     TrayTip,, Fist For Slot 1`nFood for slot 2`nWater for slot 3
          Coordmode, pixel, window
     Coordmode, mouse, window
     TrayTip,, Press F1 For start
          F1::
          TrayTip,, Start Macro
     Start:
          Loop
          {
               PixelSearch, Px, Py, 325, 560, 323, 565, 0x262626, 10, Fast
               If ErrorLevel = 0
               {
                    sleep 100
                    send 2
                    sleep 100
                    click 10
                    sleep 3000
               }
               PixelSearch, Px, Py, 325, 560, 323, 565, 0x262626, 10, Fast
               If ErrorLevel = 0
               {
                    sleep 100
                    send 3
                    sleep 100
                    click 10
                    sleep 3000
               }
               PixelSearch, Px, Py, 325, 560, 323, 565, 0x262626, 10, Fast
               If ErrorLevel = 0
               {
                    sleep 100
                    send 4
                    sleep 100
                    click 10
                    sleep 3000
               }
               PixelSearch, Px, Py, 486, 560, 488, 565, 0x262626, 10, Fast
               If ErrorLevel = 0
               {
                    sleep 100
                    send 5
                    sleep 100
                    click 10
                    sleep 3000
               }
               PixelSearch, Px, Py, 486, 560, 488, 565, 0x262626, 10, Fast
               If ErrorLevel = 0
               {
                    sleep 100
                    send 6
                    sleep 100
                    click 10
                    sleep 3000
               }
               PixelSearch, Px, Py, 486, 560, 488, 565, 0x262626, 10, Fast
               If ErrorLevel = 0
               {
                    sleep 100
                    send 7
                    sleep 100
                    click 10
                    sleep 3000
               }
               If (Checkbox1 = 1)
               {
                    ImageSearch, FoundX, FoundY, 370, 455, 471, 483, *70, %A_ScriptDir%\bin\bcaa.bmp
                    If errorlevel = 1
                    {
                         ImageSearch, FoundX, FoundY, 236, 567, 597, 620, *50, %A_ScriptDir%\bin\bcaapic.bmp
                         if errorlevel = 0
                         {
                              ImageSearch, FoundX, FoundY, 236, 567, 597, 620, *70, %A_ScriptDir%\bin\fistequip.bmp
                              If errorlevel = 0
                              {
                                   send 1
                              }
                              click 10
                              sleep 300
                              send 8
                              sleep 300
                              click 5
                              sleep 3500
                         }
                    }
               }
               ImageSearch, FoundX, FoundY, 200, 567, 650, 620, *70, %A_ScriptDir%\bin\fistequip.bmp
               If errorlevel = 1
               {
                    send 1
               }
               sleep 1000
               PixelSearch, Px, Py, 506, 536, 498, 540, 0xE77000, 10, Fast
               If errorlevel = 0
               {
                    Loop
                    {
                         PixelSearch, Px, Py, 300, 535, 305, 538, 0xE77000, 40, Fast
                         if errorlevel = 0
                         {
                              Click 30
                         }
                         if (value = 0.1)
                         {
                              PixelSearch, Px, Py, 309, 535, 313, 538, 0x222222, 60, Fast
                              If errorlevel = 0
                              {
                                   Goto, Start
                              }
                         }
                         if (value = 0.2)
                         {
                              PixelSearch, Px, Py, 334, 535, 338, 538, 0x222222, 60, Fast
                              If errorlevel = 0
                              {
                                   Goto, Start
                              }
                         }
                         if (value = 0.3)
                         {
                              PixelSearch, Px, Py, 350, 535, 354, 538, 0x222222, 60, Fast
                              If errorlevel = 0
                              {
                                   Goto, Start
                              }
                         }
                         if (value = 0.4)
                         {
                              PixelSearch, Px, Py, 369, 535, 373, 538, 0x222222, 60, Fast
                              If errorlevel = 0
                              {
                                   Goto, Start
                              }
                         }
                         if (value = 0.5)
                         {
                              PixelSearch, Px, Py, 399, 535, 402, 538, 0x222222, 60, Fast
                              If errorlevel = 0
                              {
                                   Goto, Start
                              }
                         }
                    }
               }
          }
     Return
     P::pause
     end::
          TrayTip,, End Macro
     Exitapp
     return
     CloseAndExit:
          Gui, Destroy
     ExitApp