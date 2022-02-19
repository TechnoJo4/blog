# blog

simple template system for my blog.

dependencies: `luvit`, `creationix/coro-fs`, markdown (included in the repo)

usage instructions:

```
luvit ./gen.lua
cp res/* dist/

# delete old version
# move dist/ to whereever your http server serves static files from
```
