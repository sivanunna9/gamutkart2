#!/bin/bash
NAME=` sudo docker ps -a| awk '{print $NF}' | sed -e 1d`
#container_name=docker ps -f "status=exited" | awk '{print $NF}' | sed -e 1d
b=$NAME
for a in $b ;
do
  if [ "$( sudo docker inspect -f '{{.State.Running}}' ${a} 2>/dev/null)" = "true" ];
  then echo ${a} ture;
  else echo "The Docker container \"$a\"on $(hostname) has been exited at $(date)"|mail -s"Docker container Alert: $a has been exited $(hostname)" towritekishore@gmail.com;


  fi
done
<<EOF
#!/bin/sh
df -Ph | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5,$1 }' | while read output;
do
  echo $output
  used=$(echo $output | awk '{print $1}' | sed s/%//g)
  partition=$(echo $output | awk '{print $2}')
  if [ $used -ge 60 ]; then
  echo "The partition \"$partition\" on $(hostname) has used $used% at $(date)" | mail -s "Disk Space Alert: $used% Used On $(hostname)" 2daygeek@gmail.com
  fi
done
EOF

