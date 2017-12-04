#!/bin/sh

auditctl -R /etc/audit/audit.rules

exec /sbin/auditd -f
