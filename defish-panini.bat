@echo off
set width=5184
set height=3456

mkdir panini
for /f %%a IN ('dir /b *.jpg') do (
echo Defishing %%a
echo p f16 w%width% h%height% v140 n"JPEG" >> defish.pto
echo o w%width% h%height% f2 v140 y0 p0 r0 n"%%a" >> defish.pto
echo m i0 >> defish.pto
"C:\Program Files (x86)\Hugin\bin\nona.exe" -o panini/P_%%a defish.pto
del defish.pto)