@echo off
set conf=D:\software\apache-tomcat-6.0.41\conf\Catalina\pcy.nb.tuniu.org

if not exist %conf%\nbooking-aco.xml (
   echo "FAILED!"
   exit 1
)
copy /y %conf%\nbooking.xml %conf%\nbooking.xml.bak
copy /y %conf%\nbooking-aco.xml %conf%\nbooking.xml
::call restart-apache-tomcat.bat
