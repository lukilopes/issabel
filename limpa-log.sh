#!/bin/sh
#
find /var/spool/asterisk/monitor/ -name "*.wav" -type f -mtime +90 -exec rm -rf {} \;
rm -rf /tmp/*
rm -f /var/log/*-2*
rm -f /var/log/asterisk/*-2*
rm -f /var/log/httpd/*-2*
rm -f /var/log/*.gz
rm -f /var/log/asterisk/*.gz
rm -f /var/log/apache2/*.gz
rm -f /var/log/apache2/*.1
rm -f /var/log/*.1
rm -f /var/log/asterisk/*.1
truncate -s 0 /root/.mysql_history
truncate -s 0 /root/.asterisk_history
truncate -s 0 /root/.bash_history
truncate -s 0 /var/log/wtmp
truncate -s 0 /var/log/lastlog
truncate -s 0 /var/log/mysql/error.log
truncate -s 0 /var/log/auth.log
truncate -s 0 /var/log/boot.log
truncate -s 0 /var/log/cron
truncate -s 0 /var/log/cron.log
truncate -s 0 /var/log/daemon.log
truncate -s 0 /var/log/debug
truncate -s 0 /var/log/dmesg
truncate -s 0 /var/log/dmesg.old
truncate -s 0 /var/log/dracut.log
truncate -s 0 /var/log/fail2ban.log
truncate -s 0 /var/log/ipchecker.log
truncate -s 0 /var/log/kern
truncate -s 0 /var/log/kern.log
truncate -s 0 /var/log/knockd.log
truncate -s 0 /var/log/mail.err
truncate -s 0 /var/log/mail.info
truncate -s 0 /var/log/maillog
truncate -s 0 /var/log/mail.warn
truncate -s 0 /var/log/messages
truncate -s 0 /var/log/mysqld.log
truncate -s 0 /var/log/slpd.log
truncate -s 0 /var/log/syslog
truncate -s 0 /var/log/alternatives.log
truncate -s 0 /var/log/bootstrap.log
truncate -s 0 /var/log/dpkg.log
truncate -s 0 /var/log/tallylog
truncate -s 0 /var/log/yum.log
truncate -s 0 /var/log/faillog
truncate -s 0 /var/log/fontconfig.log
truncate -s 0 /var/log/regen_ssh_keys.log
truncate -s 0 /var/log/apache2/access.log
truncate -s 0 /var/log/apache2/error.log
truncate -s 0 /var/log/apache2/other_vhosts_access.log
truncate -s 0 /var/log/asterisk/freepbx_dbug
truncate -s 0 /var/log/asterisk/freepbx_debug
truncate -s 0 /var/log/asterisk/freepbx.log
truncate -s 0 /var/log/asterisk/freepbx_security.log
truncate -s 0 /var/log/asterisk/full
truncate -s 0 /var/log/asterisk/h323_log
truncate -s 0 /var/log/asterisk/messages
truncate -s 0 /var/log/asterisk/queue_log
truncate -s 0 /var/log/asterisk/ucp_out.log
truncate -s 0 /var/log/asterisk/clearlydevices_out.log
truncate -s 0 /var/log/asterisk/clearlysp_out.log
truncate -s 0 /var/log/asterisk/core*.log

echo "limpeza do sistema efetuado automatico $(date)." >> /var/lib/lucas/log-limpeza.txt