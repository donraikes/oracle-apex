#!/bin/bash
pushd ~/apex
sqlplus sys/Welcome#1@orclpdb1 as sysdba @create_schema.sql 
sqlplus sys/Welcome#1@orclpdb1 as sysdba @install_apex.sql
popd
