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

Ispezionare i singoli nodi (il primo meno approfondito del secondo)
```bash
curl -XGET http://localhost:9200/_cluster/stats
curl -XGET http://localhost:9200/_nodes/stats
```

Statistiche sugli indici (singolo e tutti)
```bash
curl -XGET http://localhost:9200/singolo-indice/_stats
curl -XGET http://localhost:9200/_all/_stats
```

Verifica se ci sono operazioni in sospeso (o per blocco, o per sovraccarico)
```bash
curl -XGET http://localhost:9200/_cluster/pending_tasks
```

Funzioni CAT
------------

Visualizza lo stato del cluster
```bash
curl -XGET http://localhost:9200/_cat/health?v
```

Visualizza lo stato dei nodi
```bash
curl -XGET http://localhost:9200/_cat/nodes?v
```

Visualizza lo stato degl'indici
```bash
curl -XGET http://localhost:9200/_cat/indices?v
```





