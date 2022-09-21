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

## Contributing

1. Clone the main branch, and create a branch for the feature / fix.
2. Make your changes.
3. Update the changelog with your changes. The version should follow the upstream version of the packaged application. For example if the version of RedisGraph is 2.8.8, the version will be 2.8.8. In the case where the version already exists, you should append an incrementing single digit to it (i.e. 2.8.8-1).
4. Push your branch up and create a pull request.
5. After the pull request is merged, git pull origin main and ensure it's up-to-date.
6. Create a tag with the version you added to the changelog using git tag -a x.y.z. The title should be "Version x.y.z" followed by the changes as the message (as per the changelog).
7. Push your tag, which will kick off a CI workflow to build and release the image.