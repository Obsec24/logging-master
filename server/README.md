# Logging servers (ElasticSearch + Kibana)

## Requisites

Install docker-compose:

```
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version  (to check the success installation)
```

## Build and Run

Elastic Search and Kibana images are built with the following command:

```
sudo docker-compose up
```

After the command has finished the Elastic Search and Kibana will be listening in ports 9200/9300 and 5601 ot the local machine, respectively.

IMPORTANT: If starting fails, change the owner of the `directory esdata01` by using `sudo chown "regular_user" esdata01`

## Testing servers

http://IP_or_hostaname:5601 and http://IP_or_hostname:9200 to access the servers kibana and elasticsearch, respectively. 
