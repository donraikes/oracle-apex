spool /opt/oracle/oradata/install_apex.log
prompt "Creating the apex tablespace..."
create tablespace apex datafile '/opt/oracle/oradata/ORCLCDB/ORCLPDB1/apex01.dbf' size 10G autoextend on next 1M;

prompt "Installing apex..."
@apexins.sql apex apex temp /i/
connect sys/Welcome#1@orclpdb1 as sysdba
BEGIN
    APEX_UTIL.set_security_group_id( 10 );
	    
		    APEX_UTIL.create_user(
			        p_user_name       => 'ADMIN',
					        p_email_address   => 'don.raikes@oracle.com',
							        p_web_password    => 'Welcome1',
									        p_developer_privs => 'ADMIN' );
											        
													    APEX_UTIL.set_security_group_id( null );
														    COMMIT;
															END;
															/

															--  Configure the ORDS integration
															connect sys/Welcome#1@orclpdb1 as sysdba
															@apex_rest_config.sql Welcome1 Welcome1
															alter user apex_public_user identified by "Welcome1" account
															unlock;
															spool off
															exit
