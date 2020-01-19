Solr Configuration
=================


# Solr Home

## About Solr Home

 * Solr home is the home for your solr configuration
 * It would depend on whether you are running in :
   - Solr Standalone
   - SolrCloud

## Solr Home for Standalone Mode

 * `<solr-home-directory>/`
   - `solr.xml`
 * `core_name1/`
    -  `core.properties`
    -  `conf/
       -  `solrconfig.xml`
       -  `managed-schema`
    -  `data/`
 * `core_name2/`
    -  `core.properties`
    -  `conf/
       -  `solrconfig.xml`
       -  `managed-schema`
    -  `data/`

## Solr Home for SolrCloud Mode

 * `<solr-home-directory>/`
   - `solr.xml
   - `core_name1/
      -`core.properties
      -`data/
   - `core_name2/
      - `core.properties
      - `data/

## Configuration Files

 * Inside Solr’s Home, you’ll find these files:

   - solr.xml specifies configuration options for your Solr server instance
 * Per Solr Core:
  - `core.properties` defines specific properties for each core :
     - its name, 
     - the collection the core belongs to
     - the location of the schema, etc 

## Configuration Files Contd

 * Per Solr Core:
  - `solrconfig.xml` controls high-level behavior. You can, for example, specify an alternate location for the data directory. For more information on solrconfig.xml, see Configuring solrconfig.xml.
  - `managed-schema` (or `schema.xml` instead) describes the documents you will ask Solr to index. The Schema define a document as a collection of fields. You get to define both the field types and the fields themselves. Field type definitions are powerful and include information about how Solr processes incoming field values and query values. 
  - `data/` The directory containing the low level index files.

## Other files
* there is no longer a `conf` directory for SolrCore
  - schema files etc are stored in zookeeper.
* If you are using SolrCloud with the embedded ZooKeeper instance, 
   - you may also see zoo.cfg and zoo.data which are ZooKeeper configuration and data files. 
   - However, if you are running your own ZooKeeper ensemble, you would supply your own ZooKeeper configuration file when you start it and the copies in Solr would be unused
