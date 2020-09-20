@apexins.sql apex apex temp /i/
connect sys/Welcome#1@orclpdb1 as sysdba
BEGIN
    APEX_UTIL.set_security_group_id( 10 );
	    
		    APEX_UTIL.create_user(
			        p_user_name       => 'ADMIN',
					        p_email_address   => 'don.raikes@oracle.com',
							        p_web_password    => 'Welcome#1',
									        p_developer_privs => 'ADMIN' );
											        
													    APEX_UTIL.set_security_group_id( null );
														    COMMIT;
															END;
															/

															--  Configure the ORDS integration
															connect sys/Welcome#1@orclpdb1 as sysdba
															@apex_rest_config.sql Welcome#1 Welcome#1
															exit
