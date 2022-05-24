@echo off

:: %~dp0 refers to the full path to the batch file's directory
set currentpath=%~dp0
@echo current path - %currentpath%

set application=%currentpath%application
@echo application path - %application%

set packages=%currentpath%python-packages
@echo packages path - %packages%

if %1.==. (
    ::Fresh installation of the ETG AF
    set "is_update=0"
) else (
    ::Updating Python packages only by run.bat for the ETG AF
    set "is_update=1"
)

call :isAdmin
if %errorlevel% == 0  (
    set "is_admin=1"
) else (
    set "is_admin=0"
)
	
if %is_update%==0  (	
	if %is_admin%==0 (
		call :noAdmin
		exit	/b
	) 
	@echo Running with admin rights.
	@echo.
	@echo ***************************************
	@echo      Installing ETG UI Automator
	@echo ***************************************
	@echo.
	
	@echo Setting python.exe -m ensurepip 
	C:\Python38\python.exe -m ensurepip 

	@echo Copying pytesser into C:\Python38\Lib\pytesser folder if not exists
	if not exist C:\Python38\Lib\pytesser (
		md C:\Python38\Lib\pytesser
		xcopy /s /Y %packages%\pytesser C:\Python38\Lib\pytesser
	)
	
	if not exist "C:\Program Files\7-Zip\7z.exe" (
		@echo Installing 7-Zip
		 %application%\7z1805-x64.exe		 
	)
	if not exist "C:\Program Files\7-Zip\7z.exe" (
		@echo Please install 7-Zip in the default path - C:\Program File\7-Zip
		pause >nul
		exit	/b
	)
	setx Path "C:\Program Files\7-Zip;%PATH%" /m

	pushd %cd%
	cd "C:\Program Files\7-Zip"
	@echo Unzipping MinGW.zip into C:\MinGW folder if not exists
	if not exist c:\MinGW (
		7z.exe x %application%\MinGW.zip -oC:\
	)
	@echo Setting environment variable for \MinGW
	setx Path "C:\MinGW\bin;%PATH%" /m

	
	)
	
	popd


 
) else (

    @echo ***************************************
    @echo      Updating ETG UI Automator
    @echo ***************************************
)

@echo.
@echo "installing python modules"
@echo Installing supportive python modules

if %is_update%==0 (
	@echo.
	@echo Installing pycryptodome-3.9.8-cp38-cp38-win32
	
	echo y | C:\Python38\python.exe -m pip uninstall uninstall pycrypto
	echo y | C:\Python38\python.exe -m pip uninstall uninstall crypto
	echo y | C:\Python38\python.exe -m pip uninstall uninstall pycryptodome
	
	C:\Python38\python.exe -m pip install %packages%\whl\pycryptodome-3.9.8-cp38-cp38-win32.whl
	@echo Installing pololu-tic-1.6.2-win.msi
	start /wait msiexec.exe /i %application%\pololu-tic-1.6.2-win.msi
	@echo Installing cbrxapi_installer_0.11.5b78
	%application%\cbrxapi_installer_0.11.5b785.exe 
)
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\numpy-1.19.1-cp38-cp38-win32.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\six-1.15.0-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\pycparser-2.20-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\cffi-1.14.3-cp38-cp38-win32.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\pywin32-228-cp38-cp38-win32.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\requests-2.10.0-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\requests_toolbelt-0.9.1-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\oauthlib-3.1.0-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\requests_oauthlib-1.3.0-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\future-0.18.2.tar.gz
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\pathlib-1.0.1.tar.gz
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\PyNaCl-1.4.0-cp38-cp38-win32.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\cryptography-3.2.1-cp38-cp38-win32.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\bcrypt-3.2.0-cp36-abi3-win32.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\paramiko-2.7.2-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\soupsieve-2.0.1-py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\retrying-1.3.3.tar.gz
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\pyparsing-2.4.7-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\pbr-5.5.1-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\defusedxml-0.6.0-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\iso8601-0.1.13-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\python_dateutil-2.8.1-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\PyYAML-5.3.1-cp38-cp38-win32.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\libusb1-1.8.tar.gz
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\scipy-1.5.4-cp38-cp38-win32.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\support-whl\PyJWT-1.7.1-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\kaleido-0.2.1-py2.py3-none-win32.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\pyusb-1.2.1-py3-none-any.whl --upgrade --ignore-installed


@echo Installing PILLOW, urlib3, uiautomator, numpy, openCV, wxpython,etc
C:\Python38\python.exe -m pip install  %packages%\whl\pip-20.2.3-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\urllib3-1.25.10-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\numpy-1.19.1-cp38-cp38-win32.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\opencv_python-4.4.0.44-cp38-cp38-win32.whl
@echo.
C:\Python38\python.exe -m pip install  %packages%\whl\Pillow-7.2.0-cp38-cp38-win32.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\wxPython-4.0.7-cp38-cp38-win32.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\brainstem-2.7.7-py2.py3-none-any.whl
@echo.
echo y | C:\Python38\python.exe -m pip uninstall Monsoon
IF exist C:\Python38\Lib\site-packages\Monsoon ( echo y | rmdir /S C:\Python38\Lib\site-packages\Monsoon )
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\monsoon-0.1.88.tar.gz
@echo.
echo y | C:\Python38\python.exe -m pip uninstall pypiwin32
C:\Python38\python.exe -m pip install %packages%\whl\pypiwin32-223-py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\xlwt-1.3.0-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\jira-2.0.0-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\xlrd-1.2.0-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\pyserial-3.4-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\serial-0.0.97-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\psutil-5.7.2-cp38-cp38-win32.whl
@echo.
echo y | C:\Python38\python.exe -m pip uninstall uiautomator
C:\Python38\python.exe -m pip install %packages%\whl\uiautomator-0.3.6.1.tar.gz
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\artifactory-0.1.17.tar.gz
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\pysftp-0.2.9.tar.gz
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\beautifulsoup4-4.9.3-py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\pytz-2020.1-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\plotly-4.9.0-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\subprocess32-3.5.4.tar.gz
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\simplejson-3.17.2.tar.gz
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\lazy_import-0.2.2.tar.gz 
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\packaging-20.4-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\playsound-1.2.2-py2.py3-none-any.whl
@echo Copying Monsoon...
xcopy /s %packages%\libusb-1.0.dll C:\Python38\Lib\site-packages\Monsoon
xcopy /s /Y %packages%\pmapi.py C:\Python38\Lib\site-packages\Monsoon
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\mock-4.0.2-py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\Sphinx-3.3.1-py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\sphinx_rtd_theme-0.5.0-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\Deprecated-1.2.13-py2.py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\uiautomator2-2.16.13-py3-none-any.whl
@echo.
C:\Python38\python.exe -m pip install %packages%\whl\EtgUiAutomator-1.0.0-py3-none-any.whl


pushd %currentpath%
cd %packages%\jsonrpc-0.1
python setup.py install
popd

@echo Please install Zebra USB driver if required..
if %is_update%==0 (
	@echo Installation completed...	
	@echo Press any key to exit... 	
	pause >nul

) else (	
    @echo Update Completed..
) 
goto :EOF

:noAdmin
@echo Please run in administrator mode
@echo Error: Access denied.
pause >nul
 

:isAdmin
rem fsutil dirty query %systemdrive% >nul
net session >nul 2>&1