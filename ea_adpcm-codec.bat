:temp
echo.	1.encode(����)	2.decode(����)
choice /c:12 /m:"please select"
if %errorlevel%==1 set a = encode
if %errorlevel%==2 set a = decode
echo.Note: If you choose encoding, the first file should be a WAV file. The second file path is the output path, and the reverse is the same
:temp1
echo. Please enter the file path number one or drag the file to this window
echo. ������һ���ļ�·�����϶��ļ���������
set /p b=
if [%b%]==[] goto temp1
:temp2
echo. Please enter the second file path
echo. ����������ļ�·��
set /p c=
if [%c%]==[] goto temp2
if %errorlevel%==1 goto temp3
:temp4
echo. Please enter the sampling rate
echo. �����������
set /p d=
if [%d%]==[] goto temp4
:temp3
if %errorlevel%==1 EA_ADPCM_codec.exe encode %b% %c%
if %errorlevel%==2 EA_ADPCM_codec.exe decode %b% %c% %d%