@echo off
set /p domain="Enter Domain: "
set OPENSSL_CONF=../../conf/openssl.cnf

if not exist .\generated-certs\%domain% mkdir .\generated-certs\%domain%

.\openssl req -config make-cert.conf -new -sha256 -newkey rsa:2048 -nodes -keyout .\generated-certs\%domain%\server.key -x509 -days 365 -out .\generated-certs\%domain%\server.crt

echo.
echo -----
echo The certificate was provided.
echo.
pause
