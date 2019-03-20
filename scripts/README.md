# Using the docker image

## Step 1 : build the docker
```bash
    # be sure to be in root dir (es-training-new)

    $   docker build -t es-reveal scripts/docker/.
    # note the id  of docker image
```

## Step 2 : Running reveal container

From the host env:
* On MAC or Linux
```bash
    # be sure to be in root dir (es-training-new)

    $  ./run-reveal-in-docker.sh  es-reveal 
```

* On Windows
```bash
    # be sure to be in root dir (es-training-new)

    >  powershell -ExecutionPolicy ByPass -File run-reveal-in-docker.ps1  es-reveal  
```
> you can use **docker image id** instead of name(**es-reveal**). to see docker image list `($ docker image ls)`

Now go to [http://localhost:2000](http://localhost:2000)

## Step 3: Generating PDFs
Within docker container
```bash
    $  cd work  # this is where the host environment is mapped to

    $  ./gen-pdfs.sh   <md files>

    # example
    $ ./gen-pdfs.sh    deep-learning/keras/Keras-1__Intro.md

    # PDFs are generated in the same dir and name as md
```
