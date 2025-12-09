if [ $# -ne 1 ]
then
	echo "Usage: install_agent.sh"
	return
fi
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.3.2-amd64.deb
dpkg -i filebeat-7.3.2-amd64.deb
cp filebeat.yml /etc/filebeat
service filebeat start
