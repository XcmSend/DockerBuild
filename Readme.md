# Build me  
```
$ docker build -t xcmsend .
```

## Run me:  
```
$ docker run -d -p 8080:8080 xcmsend
```

### Notes:  
-  For bagpipes v0.1.0 and above, the docker host needs a bit more than 3gb of ram(can alternatively just give the image 10gb in swap)

## Get directly from Docker hub:
```
$ docker pull xcmsend/xcmsend:v0.1.0
```


### Latest:   
https://hub.docker.com/layers/xcmsend/xcmsend/v0.1.0/images/sha256-090e53bae8c3a50abb1c77fc2ab2939e878b9e76e8b998eebb6dc0ce6babb506?context=repo
