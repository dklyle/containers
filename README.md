# containers

Sample container runtime specs for use with [runc] forked from
[jessfraz/containers].  Changes include supporting changes in the
[OCI runtime-spec] and adding examples of [rootless] containers. There
are prestart hooks to configure networking properly leveraging [netns]. 

## use with runc
To run any of these, you will first need to populate the `rootfs` for each
container you wish to run. See the OCI runtime-spec [README] for detailed
instructions on how to accomplish this.

```
runc run irssi
```

For rootless containers, you will need to specify the --root directory where the
container state will be stored.
```
runc --root /tmp irssi
```

[runc]:https://github.com/opencontainers/runc
[jessfraz/containers]:https://github.com/jessfraz/containers
[OCI runtime-spec]:https://github.com/opencontainers/runtime-spec
[rootless]:https://www.cyphar.com/blog/post/rootless-containers-with-runc
[README]:https://github.com/opencontainers/runtime-spec/README.md
[netns]:https://github.com/jessfraz/netns
