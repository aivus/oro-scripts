# Quick ElasticSearch installation

* `docker-compose up -d`
* Open http://127.0.0.1:9200/_plugin/elasticfence/index.html with `root:password` credentials and add user
* Configurate `parameters.yml` according to info from previous step
* Use http://127.0.0.1:9200/_plugin/hq/#cluster to monitor state of the cluster
