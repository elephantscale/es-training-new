# V2 API

---


## V2 Operations 

| Path Prefix                                           | Some Supported Operations                           |
|-------------------------------------------------------|-----------------------------------------------------|
| /api/collections or equivalently: /api/c              | Create, alias, backup, and restore a collection.    |
| /api/c/collection-name/update                         | Update requests.                                    |
| /api/c/collection-name/config                         | Configuration requests.                             |
| /api/c/collection-name/schema                         | Schema requests.                                    |
| /api/c/collection-name/handler-name                   | Handler-specific requests.                          |
| /api/c/collection-name/shards/shard-name              | Split a shard, create a shard, add a replica.       |
| /api/c/collection-name/shards/shard-name/replica-name | Delete a shard, force leader election               |
| /api/cores                                            | Delete a replica.                                   |
| /api/cores/core-name                                  | Create a core.                                      |
| /api/node                                             | Reload, rename, delete, and unload a core.          |
| /api/cluster                                          | Perform overseer operation, rejoin leader election. |
| /api/c/.system/blob                                   | Add role, remove role, set cluster property.        |


---


## Introspect

 * Append `/_introspect` to any valid v2 API path and the API specification will be returned in JSON format.

 * `http://localhost:8983/api/c/_introspect`

 * To limit the introspect output to include just one particular HTTP method, add request param method with value GET, POST, or DELETE.

   - `http://localhost:8983/api/c/_introspect?method=POST`

 * Most endpoints support commands provided in a body sent via POST. To limit the introspect output to only one command, add request param command=command-name.

   - `http://localhost:8983/api/c/gettingstarted/_introspect?method=POST&command=modify`

## Introspect example:

 * `http://localhost:8983/api/c/gettingstarted/get/_introspect`


```json
  "spec":[{
      "documentation":"https://lucene.apache.org/solr/guide/real-time-get.html",
      "description":"RealTime Get allows retrieving documents by ID.",
      "methods":["GET"],
      "url":{
        "paths":["/c/gettingstarted/get"],
        "params":{
          "id":{
            "type":"string",
            "description":"A single document ID to retrieve."},
          "ids":{
            "type":"string",
            "description":"docment ID."},
          "fq":{
            "type":"string",
            "description":"filters."}}}}],
  "WARNING":"This response format is experimental..",
  "availableSubPaths":{}
}
```

---

## Examples

 * `curl http://localhost:8983/api/c/gettingstarted -H 'Content-type:application/json' -d ' { modify: { replicationFactor: "3", autoAddReplicas: false } }'`
   - response: `{"responseHeader":{"status":0,"QTime":842}}`

* Examples

 * See the state of the cluster:

```console
$ curl http://localhost:8983/api/cluster

{"responseHeader":{"status":0,"QTime":0},"collections":["gettingstarted",".system"]}
```

  * Set a cluster property:

```console
$ curl http://localhost:8983/api/cluster -H 'Content-type: application/json' -d '
{ set-property: { name: autoAddReplicas, val: "false" } }'

{"responseHeader":{"status":0,"QTime":4}} 
```
