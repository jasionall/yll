#! /bin/sh
start_ping(){
        local ipnet=$1
        for i in $(seq 1 255)
        do
                local ipaddr="$ipnet$i"
                ping $ipaddr >t.log & proc_pid=$!
		sleep 1
		kill $proc_pid
        done
}
echo > t.log
start_ping 192.168.1.
