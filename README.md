Forked from [https://github.com/scrapinghub/docker-devpi](https://github.com/scrapinghub/docker-devpi)

## Devpi Dockerfile


This repository contains **Dockerfile** of [Devpi](http://doc.devpi.net/). 


### Dependencies

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Usage

#### Build devpi image

```    
sudo docker build --rm -t thenobody/devpi .
```

#### Run `devpi-server`

```
sudo docker run -d --name devpi -p 3141:3141 thenobody/devpi
```

Devpi creates a user named `root` by default, its password can be set with
`DEVPI_PASSWORD` environment variable.

#### Uploading packages

In the root folder of your python project run the following:

```
devpi use http://localhost:3141/
devpi login root --password=''
devpi use public

devpi upload --no-vcs --formats=bdist_wheel
```

Now the package can be installed using `pip`:

```
pip install --index-url http://localhost:3141/root/public/ --extra-index-url https://pypi.python.org/simple/ --trusted-host localhost your-package
```
