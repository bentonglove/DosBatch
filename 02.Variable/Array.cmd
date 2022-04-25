:: Creating an Array
@echo off
set a[0]=1
echo %a[0]%

@echo off 
set list=1 2 3 4 
for %%i in (%list%) do ( 
   echo %%i
)

@echo off 
set l2=home "is a" big place 
for %%i in (%l2%) do ( 
   echo %%i | findstr '"'
)