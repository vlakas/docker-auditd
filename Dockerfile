FROM alpine:3.7

RUN apk --update --no-cache add audit

COPY auditd.conf /etc/audit/auditd.conf
COPY audit.rules /etc/audit/audit.rules
COPY runaudit.sh /usr/local/bin/runaudit.sh

CMD ["/usr/local/bin/runaudit.sh"]
