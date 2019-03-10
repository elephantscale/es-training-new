# Using the docker image

## Step 1 : build the docker
```bash
    $   cd scripts  # be in scripts dir
    $   docker build -t es-reveal .
    # note the id  of docker image
```

## Step 2 : Running reveal

From the host env:
```bash
    $  cd  es-training-new  # be sure to be in root dir
    $  ./scripts/run-reveal-docker.sh  es-reveal # Or docker image id ($ docker ps -a)
```

And now within docker container
```bash
    # now should be in docker container

    $  cd work  # this is where the host environment is mapped to

    $  ./run-reveal-md-server.sh
```

Now go to [http://localhost:1948](http://localhost:1948)


## Step 3: Generating PDFs

```bash
    $  cd work  # this is where the host environment is mapped to

    $  ./gen-pdfs.sh   <md files>

    # example
    $ ./gen-pdfs.sh   deep-learning/generic/DL-Intro.md

    # PDFs are generated in the same dir as md

```
