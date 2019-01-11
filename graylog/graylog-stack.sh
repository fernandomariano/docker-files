sudo sysctl -w vm.max_map_count=262144
docker run --name mongo -d mongo:3
docker run --name elasticsearch -e "http.host=0.0.0.0" -e "xpack.security.enabled=false" -d docker.elastic.co/elasticsearch/elasticsearch:5.6.12
docker run --name graylog --link mongo --link elasticsearch -p 9000:9000 -p 12201:12201 -p 514:514 -p 5555:5555 -e GRAYLOG_WEB_ENDPOINT_URI="http://127.0.0.1:9000/api" -d graylog/graylog:2.4
