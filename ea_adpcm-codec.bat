:temp
echo.	1.encode(编码)	2.decode(解码)
choice /c:12 /m:"please select"
if %errorlevel%==1 set a = encode
if %errorlevel%==2 set a = decode
echo.Note: If you choose encoding, the first file should be a WAV file. The second file path is the output path, and the reverse is the same
:temp1
echo. Please enter the file path number one or drag the file to this window
echo. 请输入一号文件路径或拖动文件到本窗口
set /p b=
if [%b%]==[] goto temp1
:temp2
echo. Please enter the second file path
echo. 请输入二号文件路径
set /p c=
if [%c%]==[] goto temp2
if %errorlevel%==1 goto temp3
:temp4
echo. Please enter the sampling rate
echo. 请输入采样率
set /p d=
if [%d%]==[] goto temp4
:temp3
if %errorlevel%==1 EA_ADPCM_codec.exe encode %b% %c%
if %errorlevel%==2 EA_ADPCM_codec.exe decode %b% %c% %d%