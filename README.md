# Docker Redis Graph

## Introduction

RedisGraph is the first queryable [Property Graph](https://github.com/opencypher/openCypher/blob/master/docs/property-graph-model.adoc) database to use [sparse matrices](https://en.wikipedia.org/wiki/Sparse_matrix) to represent the [adjacency matrix](https://en.wikipedia.org/wiki/Adjacency_matrix) in graphs and [linear algebra](http://faculty.cse.tamu.edu/davis/GraphBLAS.html) to query the graph. To see RedisGraph in action, visit [Demos](https://github.com/RedisGraph/RedisGraph/tree/master/demo).
To read the docs, visit [redisgraph.io](http://redisgraph.io).

## Features

* Based off latest version of Redis Graph.
* Included bash scripts to run Redis Sentinel easily in Kubernetes.

## Usage

To run a simple setup of a single Redis Graph container in Docker use:

```bash
docker run -p 6379:6379 zappi/redis-graph:<tag>
```

And to run a more complex setup using Redis Sentinel in Kubernetes use the
reference [example manifests here][1]. Replace `zappi/redis:<tag>` with
`zappi/redis-graph:<tag>` and run:

```bash
kubectl apply -f examples/kubernetes/
```

[1]: https://github.com/Intellection/docker-redis/tree/main/examples/kubernetes
