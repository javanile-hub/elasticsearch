Guida per Amministratori di Sistema
===================================

Ispezionare lo stato del cluster
```bash
curl -XGET http://localhost:9200/_cluster/health
```

Ispezionare lo stato dei singoli indici nel cluster 
```bash
curl -XGET http://localhost:9200/_cluster/health?level=indices
```

Ispezionare lo stato dei singoli shards nel cluster 
```bash
curl -XGET http://localhost:9200/_cluster/health?level=shards
```

Inviare una mail se lo status del cluster passa a RED
```bash
curl -XGET http://localhost:9200/_cluster/health?wait_for_status=red && sendmail "ERRORE SU ELASTIC" -to admin@system.com
```
