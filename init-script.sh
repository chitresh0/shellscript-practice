GLASSFISH_HOME=${GLASSFISH_HOME:-"/home/mobisec1/ServerDeployment/glassfish4/glassfish"}
case "$1" in
start) 
     OUTPUT="$(cat /sys/class/net/eth0/operstate)"
     until [ "$OUTPUT" != "down" ]; do
             OUTPUT="$(cat /sys/class/net/eth0/operstate)"
    done
    sleep 10
    $GLASSFISH_HOME/bin/asadmin start-domain | tee -a /var/log/glassfish.log
    service heartbeat start | tee -a /var/log/glassfish.log
    ;;
stop)
    $GLASSFISH_HOME/bin/asadmin stop-domain | tee -a /var/log/glassfish.log
    ;;
restart)
     OUTPUT="$(cat /sys/class/net/eth0/operstate)"
     until [ "$OUTPUT" != "down" ]; do
             OUTPUT="$(cat /sys/class/net/eth0/operstate)"

    done
    sleep 10
    $GLASSFISH_HOME/bin/asadmin restart-domain | tee -a /var/log/glassfish.log
    service heartbeat start | tee -a /var/log/glassfish.log
    ;;
*)
echo "usage: $0 (start|stop|restart|help)"
esac
