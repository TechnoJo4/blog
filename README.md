# blog

simple template system for my blog.

dependencies: `luvit`, `creationix/coro-fs`, markdown (included in the repo)

instructions:

```
luvit ./gen.lua
cp style.css dist/style.css

# delete old version
# move dist to whereever your http server serves static files from
```
