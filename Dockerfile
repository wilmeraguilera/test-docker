FROM quay.io/wilmeraguilera/parent-http

LABEL  	io.openshift.expose-services="8080:httpd" \
	io.openshift.tags="apache, httpd"

EXPOSE 8080

RUN sed -i "s/Listen 80/Listen 8080/g" /etc/httpd/conf/httpd.conf

RUN 	chgrp -R 0 /var/log/httpd  /var/run/httpd && \
	chmod -R g=u /var/log/httpd  /var/run/httpd

USER 1001

