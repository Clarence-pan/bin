:: TO USE THIS SCRIPT, PLEASE PLACE THIS SCRIPT INTO THE ROOT OF A WEBAPP 

set apache_tomcat=D:\software\apache-tomcat-6.0.41
set root=%apache_tomcat%\webapps\ROOT

for %%i in (%root%\web-inf\lib\*.jar) do (
    set CLASS_PATH=%CLASS_PATH%
)

cd /d %apache_tomcat%\bin
call startup.bat



