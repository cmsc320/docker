Introduction
============

This is a docker images based on the
[`jupyter/scipy-notebook`](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook).
But with extended niceties for the CMSC 320 course.

 * lxml
 * folium
 * nltk

Usage
=====

If you would like to _use_ the docker image. You should just pull it from docker hub:

```{sh}
docker pull jmct/cmsc320
```

Once you have the image pulled, you can create a container in the standard way:

```{sh}
docker run -it -v $PWD:/home/jovyan/notebooks  --rm -p 8888:8888 jmct/cmsc320
```

Building
========

Building the docker image locally is mostly for those working on the image or
updating it:


```{sh}
docker build -t <name> .
```

Where `<name>` is whatever name you'd like to give the image as you test. (It
can be useful to have slightly different variants with different names so that
you can test the differences at the same time).

Sharing
=======

Once you've found a version of the image you'd like to share you can do so  as
follows:

```{sh}
docker push jmct/cmsc320:latest
```

Here, `latest` is the tag we'd like to push to. We could use different tags for
versioning, but I'm not sure how useful that is for us.
