# run

`$ docker-compose run --rm app /bin/bash`

## trace systemcall

```
$ make install_hello
$ strace -c bin/install_hello
```
