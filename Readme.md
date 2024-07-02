# Build me  
```shell
$ docker build -t xcmsend .
```

## Run me:  
```shell
$ docker run -d -p 8080:8080 xcmsend
```

### Notes:  
-  For bagpipes >= v0.1.0 and above, the docker host needs a bit more than 3gb of ram(can alternatively just give the image 10gb in swap)

## Get directly from Docker hub:
```shell
$ docker pull xcmsend/xcmsend:v0.2.0
```


### Latest:   
https://hub.docker.com/layers/xcmsend/xcmsend/0.2.0/images/sha256-d12a89c64f21c9c1435815445076742747b80da2435d57cb0dd12aeeca80f8ad?context=explore
