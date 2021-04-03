REM Instalar impresora > configurar las propiedades de impresiona 
REM 	en Ports > Escoger USB (la que corresponda al USB de la impresora)
REM 	en Sharing > poner nombre compartido = EPSONLX
REM Borrar la conexion que este en LPT1
REM En windows 10 se requiere activar manualmente en "Activar o descastivar carac de windows"
REM 	Hacer click en "Compatibilidad con el protocolo para compartir archivos SMB 1.0"
REM	Ademeas en regedit ir a:
REM		Equipo\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager
REM		Fijarse que ProtectionMode se encuentre en 0. El valor por defecto es 1.
net use lpt1 /d
REM agregar la impresora. Fijarse que el nombre el computador sea el correcto. Es case sensitive.
REM Esto se en Control Panel > System and Security > System
REM Probar que la impresora imprima usando un archivo word
net use lpt1: \\papa-PC\EPSONLX /persistent:yes