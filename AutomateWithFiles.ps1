#New-Item -ItemType Directory -Force -Path 'LearnPythonForEthicalHacking'
#for($i = 4; $i -lt 20; $i++){New-Item -ItemType Directory -Force -Path "$i-Section"}

Set-Location -Path C:\Users\Dell\LearnPythonForEthicalHacking\5-Section
for($j = 1; $j -lt 12; $j++){ New-Item "$j-Lecture.txt" -type file }
Set-Location -Path C:\Users\Dell\LearnPythonForEthicalHacking\ -PassThru

Set-Location -Path C:\Users\Dell\LearnPythonForEthicalHacking\6-Section
for($j = 1; $j -lt 8; $j++){ New-Item "$j-Lecture.txt" -type file }
Set-Location -Path C:\Users\Dell\LearnPythonForEthicalHacking\ -PassThru

Set-Location -Path C:\Users\Dell\LearnPythonForEthicalHacking\7-Section
for($j = 1; $j -lt 8; $j++){ New-Item "$j-Lecture.txt" -type file }
Set-Location -Path C:\Users\Dell\LearnPythonForEthicalHacking\ -PassThru

Set-Location -Path C:\Users\Dell\LearnPythonForEthicalHacking\8-Section
for($j = 1; $j -lt 7; $j++){ New-Item "$j-Lecture.txt" -type file }
Set-Location -Path C:\Users\Dell\LearnPythonForEthicalHacking\ -PassThru

