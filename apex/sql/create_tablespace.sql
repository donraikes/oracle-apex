spool create_tablespace.log
create tablespace apex datafile '/opt/oracle/oradata/ORCLCDB/ORCLPDB1/apex01.dbf' size 1g autoextend on next 1M;
spool off
exit
