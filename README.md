# RedisGraph

RedisGraph is the first queryable [Property Graph](https://github.com/opencypher/openCypher/blob/master/docs/property-graph-model.adoc) database to use [sparse matrices](https://en.wikipedia.org/wiki/Sparse_matrix) to represent the [adjacency matrix](https://en.wikipedia.org/wiki/Adjacency_matrix) in graphs and [linear algebra](http://faculty.cse.tamu.edu/davis/GraphBLAS.html) to query the graph.

Primary features:

* Adopting the [Property Graph Model](https://github.com/opencypher/openCypher/blob/master/docs/property-graph-model.adoc)
  * Nodes (vertices) and Relationships (edges) that may have attributes
  * Nodes that can be labeled
  * Relationships have a relationship type
* Graphs represented as sparse adjacency matrices
* [Cypher](http://www.opencypher.org/) as query language
  * Cypher queries translated into linear algebra expressions

To see RedisGraph in action, visit [Demos](https://github.com/RedisGraph/RedisGraph/tree/master/demo).
To read the docs, visit [redisgraph.io](http://redisgraph.io).

See upstream project at [github.com/RedisGraph/RedisGraph](https://github.com/RedisGraph/RedisGraph) for more details.

## Docker

To run the service in Docker use:

```bash
docker run -p 6379:6379 zappi/redis-graph:<tag>
```
