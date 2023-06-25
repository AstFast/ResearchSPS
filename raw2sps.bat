@echo off
:temp1
echo. Please enter the file path number one or drag the file to this window(*.raw)
echo. 请输入一号文件路径或拖动文件到本窗口(*.raw)
set /p b=
if [%b%]==[] goto temp1
:temp2
echo. Please enter the second file path(*.sps)
echo. 请输入二号文件路径(*.sps)
set /p c=
if [%c%]==[] goto temp2
:temp4
echo. Please enter the sampling rate
echo. 请输入采样率
set /p d=
if [%d%]==[] goto temp4
:temp5
echo. Please enter the channels
echo. 请输入通道数
set /p e=
if [%e%]==[] goto temp5
:temp6
echo. Please enter the samples per channel
echo. 请输入采样点数
set /p f=
if [%f%]==[] goto temp6
:temp3
raw2sps.py "%b%" "%c%" "%d%" "%e%" "%f%"