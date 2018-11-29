import os,sys

device_name = "fishpods"

out = os.popen("system_profiler SPBluetoothDataType | grep " + device_name +" -A 7").read()

if("Connected: No" in out):
    print('<i class="nf nf-mdi-music_note"></i>')
else:
    print('<i class="nf nf-mdi-music_note"></i><i class="nf nf-mdi-bluetooth" style="font-size: 8px;"></i>')
