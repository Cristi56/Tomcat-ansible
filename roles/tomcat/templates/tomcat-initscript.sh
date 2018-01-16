# Systemd unit file for tomcat
[Unit] 
Description=Apache Tomcat Web Application Container 
After=syslog.target network.target 

[Service] 
Type=forking 

#Environment=JAVA_HOME=/usr/lib/jvm//usr/lib/jvm/java-1.8.0-openjdk-1.8.0.151-5.b12.el7_4.x86_64/jre/
#Environment=CATALINA_PID=/opt/tomcat/temp/tomcat.pid 
#Environment=CATALINA_HOME=/opt/tomcat 
#Environment=CATALINA_BASE=/opt/tomcat 
#Environment='CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC' 
#Environment='JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom' 

ExecStart=/opt/apache-tomcat-{{ version.stdout }}/bin/startup.sh 
ExecStop=/opt/apache-tomcat-{{ version.stdout }}/bin/shutdown.sh

User=tomcat 
Group=tomcat 
UMask=0007 
RestartSec=10 
Restart=always 

[Install] 
WantedBy=multi-user.target
