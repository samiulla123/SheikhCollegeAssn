@REM E:\Assignment1\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\quickServerStart.bat
@REM Generated: Thu Mar 07 20:04:58 PST 2019

@setlocal
@echo off

@REM Bootstrap values ...
cd C:\Users\User\IBM\WebSphere\AppServer\profiles\AppSrv1\bin
call "C:\Users\User\IBM\WebSphere\AppServer\profiles\AppSrv1\bin\setupCmdLine.bat"
@REM For debugging the server process:
@REM set DEBUG=-Djava.compiler=NONE -Xdebug -Xnoagent -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=7777

@REM Environment Settings
SET PATH=%WAS_PATH%


@REM Launch Command
"C:\Users\User\IBM\WebSphere\AppServer/java/bin/java"  %DEBUG% "-Declipse.security" "-Dosgi.install.area=C:\Users\User\IBM\WebSphere\AppServer" "-Dosgi.configuration.area=C:\Users\User\IBM\WebSphere\AppServer\profiles\AppSrv1/servers/server1/configuration" "-Dosgi.framework.extensions=com.ibm.cds,com.ibm.ws.eclipse.adaptors" "-Xshareclasses:name=webspherev80,nonFatal" "-Dsun.reflect.inflationThreshold=250" "-Xbootclasspath/p:C:\Users\User\IBM\WebSphere\AppServer/java/jre/lib/ext/ibmorb.jar;C:\Users\User\IBM\WebSphere\AppServer/java/jre/lib/ext/ibmext.jar" "-classpath" "C:\Users\User\IBM\WebSphere\AppServer\profiles\AppSrv1/properties;C:\Users\User\IBM\WebSphere\AppServer/properties;C:\Users\User\IBM\WebSphere\AppServer/lib/startup.jar;C:\Users\User\IBM\WebSphere\AppServer/lib/bootstrap.jar;C:\Users\User\IBM\WebSphere\AppServer/lib/jsf-nls.jar;C:\Users\User\IBM\WebSphere\AppServer/lib/lmproxy.jar;C:\Users\User\IBM\WebSphere\AppServer/lib/urlprotocols.jar;C:\Users\User\IBM\WebSphere\AppServer/deploytool/itp/batchboot.jar;C:\Users\User\IBM\WebSphere\AppServer/deploytool/itp/batch2.jar;C:\Users\User\IBM\WebSphere\AppServer/java/lib/tools.jar" "-Dibm.websphere.internalClassAccessMode=allow" "-Xms256m" "-Xmx512m" "-Xcompressedrefs" "-Xscmaxaot4M" "-Xscmx60M" "-Xquickstart" "-Dws.ext.dirs=C:\Users\User\IBM\WebSphere\AppServer/java/lib;C:\Users\User\IBM\WebSphere\AppServer\profiles\AppSrv1/classes;C:\Users\User\IBM\WebSphere\AppServer/classes;C:\Users\User\IBM\WebSphere\AppServer/lib;C:\Users\User\IBM\WebSphere\AppServer/installedChannels;C:\Users\User\IBM\WebSphere\AppServer/lib/ext;C:\Users\User\IBM\WebSphere\AppServer/web/help;C:\Users\User\IBM\WebSphere\AppServer/deploytool/itp/plugins/com.ibm.etools.ejbdeploy/runtime" "-Dderby.system.home=C:\Users\User\IBM\WebSphere\AppServer/derby" "-Dcom.ibm.itp.location=C:\Users\User\IBM\WebSphere\AppServer/bin" "-Djava.util.logging.configureByServer=true" "-Duser.install.root=C:\Users\User\IBM\WebSphere\AppServer\profiles\AppSrv1" "-Djava.ext.dirs=C:\Users\User\IBM\WebSphere\AppServer/tivoli/tam;C:\Users\User\IBM\WebSphere\AppServer/java/jre/lib/ext" "-Djavax.management.builder.initial=com.ibm.ws.management.PlatformMBeanServerBuilder" "-Dpython.cachedir=C:\Users\User\IBM\WebSphere\AppServer\profiles\AppSrv1/temp/cachedir" "-Dwas.install.root=C:\Users\User\IBM\WebSphere\AppServer" "-Djava.util.logging.manager=com.ibm.ws.bootstrap.WsLogManager" "-Dserver.root=C:\Users\User\IBM\WebSphere\AppServer\profiles\AppSrv1" "-Dcom.ibm.security.jgss.debug=off" "-Dcom.ibm.security.krb5.Krb5Debug=off" "-Dcom.ibm.ws.management.event.pull_notification_timeout=120000" "-Xquickstart" "-Dcom.ibm.xml.xlxp.jaxb.opti.level=3" "-Djava.library.path=C:\Users\User\IBM\WebSphere\AppServer/lib/native/win/x86_64/;C:\Users\User\IBM\WebSphere\AppServer\java\jre\bin\default;C:\Users\User\IBM\WebSphere\AppServer\java\jre\bin;C:\Windows\system32;C:\Windows;C:\Users\User\IBM\WebSphere\AppServer\lib\native\win\x86_64;C:\Users\User\IBM\WebSphere\AppServer\bin;C:\Users\User\IBM\WebSphere\AppServer\java\bin;C:\Users\User\IBM\WebSphere\AppServer\java\jre\bin;C:/Users/User/IBM/SDP/jdk/jre/bin/j9vm;C:/Users/User/IBM/SDP/jdk/jre/bin;C:/Users/User/IBM/SDP/jdk/jre/lib/i386;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files\ibm\gsk8\lib64;C:\Program Files (x86)\ibm\gsk8\lib;C:\PROGRA~1\IBM\SQLLIB\BIN;C:\PROGRA~1\IBM\SQLLIB\FUNCTION;C:\PROGRA~1\IBM\SQLLIB\SAMPLES\REPL;C:\Users\User\AppData\Local\Microsoft\WindowsApps;;C:\Users\User\IBM\SDP;;.;" "-Djava.endorsed.dirs=C:\Users\User\IBM\WebSphere\AppServer/endorsed_apis;C:\Users\User\IBM\WebSphere\AppServer/java/jre/lib/endorsed;C:\Users\User\IBM\WebSphere\AppServer\endorsed_apis;C:\Users\User\IBM\WebSphere\AppServer\java\jre\lib\endorsed" "-Djava.security.auth.login.config=C:\Users\User\IBM\WebSphere\AppServer\profiles\AppSrv1/properties/wsjaas.conf" "-Djava.security.policy=C:\Users\User\IBM\WebSphere\AppServer\profiles\AppSrv1/properties/server.policy" "com.ibm.wsspi.bootstrap.WSPreLauncher" "-nosplash" "-application" "com.ibm.ws.bootstrap.WSLauncher" "com.ibm.ws.runtime.WsServer" "C:\Users\User\IBM\WebSphere\AppServer\profiles\AppSrv1\config" "SGCS-EEC-PC-003Node01Cell" "SGCS-EEC-PC-003Node01" "server1"

@endlocal