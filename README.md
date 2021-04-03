# contabilidad_papa

El software de contabilidad requiere de DOSBox para poder operar dentro de una arquitectura 64 bits. Para imprimir se requiere de la versión SVN Daum de DOSBox.

## Instalación en Windows 10
### 1- Instalar impresoras USB descargando los drivers correspondientes desde la web. 
  - Configurar las propiedades de impresora USB:
    - En la pestaña "Ports" y seleccionar USB que corresponda a la impresora.
    - En la pestaña "Sharing", habilitar compartir la impresora y ocupar el nombre EPSONLX

### 2- Verificar que el nombre del computador sea correcto. 
  - Se cambia en `System`. Es case sensitive.

### 3- Habilitar la conexión LPT1
  - En "Aplicaciones y características":
    - "Activar o desactivar características de windows" y habilitar "Compatibilidad con el protocolo para compartir archivos SMB 1.0".
  - En regedit
    - Ir a la ruta `Equipo\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager`   
    - Fijar que `ProtectionMode` se encuentre en `0`. El valor por defecto es `1`.
  - En CMD correr el comando  `net use lpt1 /d`
  - Si funciona, correr `net use lpt1: \\papa-PC\EPSONLX /persistent:yes` 
  - NOTA: Se dejan archivos .bat que permiten removar la cola de impresión y luego setear la impresora en el puerto lpt1.
### 4- Instalar DOSBOX versión Daum
  - Descargar `setup_win.exe` e instalar DOS BOX.
  - Editar archivo de configuración corriendo `C:\Program Files (x86)\DOSBox SVN-Daum\TOOLS\Run DOSBox configuration.bat`
    - En la sección `[parallel]` cambiar `parallel1=disable` a `parallel1=printer`
    - En la sección `[printer]` cambiar `printoutput=png` a `printoutput=printer`
  - Referencia: https://superuser.com/questions/270457/how-can-i-print-with-dosbox
