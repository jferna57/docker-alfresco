sudo docker run -e TUTUM_USER=<put-your-tutum-user-here> -e TUTUM_APIKEY=<put-your-tutum-key-here> tutum/cli service run -e INITAL_PASS=<initial-admin-alfresco-pass> \
-e ALF_1=mail.host.EQ.smtp.gmail.com \
-e ALF_2=mail.port.EQ.587 \
-e ALF_3=mail.username.EQ.xxxxxxx@yyyy.com \
-e ALF_4=mail.password.EQ.xxxxxxx \
-e ALF_5=mail.protocol.EQ.smtp \
-e ALF_6=mail.encoding.EQ.UTF-8 \
-e ALF_7=mail.from.default.EQ.xxxxxxxx@yyyy.com \
-e ALF_8=mail.smtp.starttls.enable.EQ.true \
-e ALF_9=mail.smtp.auth.EQ.true \
-e ALF_10=mail.smtp.debug.EQ.false \
-e ALF_11=mail.testmessage.send.EQ.true \
-e ALF_12=mail.testmessage.to.EQ.xxxxxxx@yyyy.com \
-e ALF_13=mail.testmessage.subject.EQ."Outbound SMTP" \
-e ALF_14=mail.testmessage.text.EQ."The Outbound SMTP email subsystem is working." \
-e ALF_15=mail.smtp.socketFactory.port.EQ.587 \
-e ALF_16=mail.smtp.socketFactory.class.EQ.javax.net.ssl.SSLSocketFactory \
-e ALF_17=mail.smtp.socketFactory.fallback.EQ.false \
-e ALF_18=notification.email.siteinvite.EQ.true \
-e ALF_19=share.context.EQ.share \
-e ALF_20=share.host.EQ.TUTUM_CONTAINER_FQDN \
-e ALF_21=share.port.EQ.8602 \
-e ALF_22=share.protocol.EQ.https \
--autorestart OFF \
--autodestroy OFF \
--entrypoint "bash -c '/entry.sh;/opt/alfresco-5.0.c/alfresco.sh start;while true;do sleep 20;done'" \
-p 8602:8443 pdubois/docker-alfresco

