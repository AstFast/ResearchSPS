@echo off
:temp1
echo. Please enter the file path number one or drag the file to this window(*.raw)
echo. ������һ���ļ�·�����϶��ļ���������(*.raw)
set /p b=
if [%b%]==[] goto temp1
:temp2
echo. Please enter the second file path(*.sps)
echo. ����������ļ�·��(*.sps)
set /p c=
if [%c%]==[] goto temp2
:temp4
echo. Please enter the sampling rate
echo. �����������
set /p d=
if [%d%]==[] goto temp4
:temp5
echo. Please enter the channels
echo. ������ͨ����
set /p e=
if [%e%]==[] goto temp5
:temp6
echo. Please enter the samples per channel
echo. �������������
set /p f=
if [%f%]==[] goto temp6
:temp3
raw2sps.py "%b%" "%c%" "%d%" "%e%" "%f%"