#! /bin/bash

topProcesses=$(ps -o %mem,pid,user,command,rsz,vsz ax | sort -bnr | head -n 3 | awk '/[0-9]*/{print $2 ":" $3 ":" $4 ":" $5 ":" $6}')

for process in $topProcesses
do
        PID=$(echo $process | cut -d: -f1)
        OWNER=$(echo $process | cut -d: -f2)
        COMMAND=$(echo $process | cut -d: -f3)
        RES=$(echo $process | cut -d: -f4)
        VIRT=$(echo $process | cut -d: -f5)
        # MEMORY=$(sudo pmap $PID | tail -n 1 | awk '/[0-9]K/{print $2}')

        echo "PID: $PID"
        echo "OWNER: $OWNER"
        echo "COMMAND: $COMMAND"
        echo "RES MEMORY(KB): $RES"
        echo "VIRT MEMORY(KB): $VIRT"
        echo ""
done

