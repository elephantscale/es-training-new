# ES-Training-New
This is the repo for our new Markdown based content.

## How to use the es-labs on Azure
* [Instructions](es-labs-on-azure.md)

## How to author
Run
        ./run-reveal-in-docker.sh
And in browser go to port http://localhost:2000

## Dev Setup for writing markdown slides

Setup [elephantscale/es-reveal-md](https://hub.docker.com/r/elephantscale/es-reveal-md)

## Sample Starter Templates
- Course template in  [template/slides/Course-Template-1.md](template/slides/Course-Template-1.md).  Start by copying this
- For Markdown reference see [template/slides/sample.md](template/slides/sample.md)

## Creating PDFs

## Creating HTML

```bash
# in docker
$   cd  ~/dev

$   cd dev/deep-learning/generic

$   reveal-md    DL-RNNs.md  --static _site/deep-learning/generic  --static-dirs=../../assets

# the html bundle will be in in _site  directory
```

## Images

All images live in [assets/images](assets/images) directory

Free image resources
- https://www.pexels.com/
- https://pixabay.com/

Vector graphics
- https://undraw.co/ : funky, customizable graphics
- https://www.freepik.com/
- https://www.vecteezy.com/
- https://publicdomainvectors.org/

Cartoons
- https://xkcd.com/
- http://geek-and-poke.com/

