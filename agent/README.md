# Logging agent

## Prerequisites

- Write the logs using the [helper methods](helper) in a file with extension `.privapp.log` (e.g. `traffic.privapp.log`) and save it in `/app/log/`. 
Filebeat agents only read the logs from these files to send them to the elasticsearch server.
- Set the IP of the elasticsearch server in `filebeat.yml`:

```
output.elasticsearch:
  # Array of hosts to connect to.
  # hosts: ["IP_elasticsearch:Port"], e.g.: 
  hosts: ["192.168.1.50:9200"]

```
## Install

This script installs the Filebeat agent (although other agents can be used):

```
sh install_agent.sh <sudo_password>

```

## Run

This script runs the Filebeat agent:

```
sudo service filebeat start

```

The agent automatically send losgs from any file with extension `.privapp.log` and saved in `/app/log/` to the elasticsearch server.

