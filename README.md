# containers

Sample containers forked from [jessfraz/containers]. Changes are updating to
support changes in the [OCI runtime-spec] and adding examples of [rootless]
containers.

To test any of these, you will first need to populate the rootfs for the
containers. See the OCI runtime-spec [README] for detailed instructions.

```
runc run irssi
```

For rootless containers, you will need to specify the --root directory where the
container state will be stored.
```
runc --root /tmp irssi
```

[jessfraz/containers]:https://github.com/jessfraz/containers
[OCI runtime-spec]:https://github.com/opencontainers/runtime-spec
[rootless]:https://www.cyphar.com/blog/post/rootless-containers-with-runc
[README]:https://github.com/opencontainers/runtime-spec/README.md
