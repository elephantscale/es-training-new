# Using the docker image

## Step 1 : build the docker
```bash
    $   cd scripts  # be in scripts dir
    
    $   docker build -t es-reveal .
    # note the id  of docker image
```

## Step 2 : Running reveal

From the host env:
* On MAC or Linux
```bash
    $  cd ..  # be sure to be in root dir (es-training-new)

    $  ./scripts/run-reveal-docker.sh  es-reveal  bash # Or docker image id ($ docker image ls)
```

* On Windows
```bash
    >  cd ..  # be sure to be in root dir (es-training-new)

    >  powershell -ExecutionPolicy ByPass -File ./scripts/run-reveal-docker.ps1  es-reveal  bash # Or docker image id ($ docker image ls)
```

Now go to [http://localhost:2000](http://localhost:2000)

## Step 3: Generating PDFs
Within docker container
```bash
    $  cd work  # this is where the host environment is mapped to

    $  ./gen-pdfs.sh   <md files>

    # example
    $ ./gen-pdfs.sh    deep-learning/slides/keras/Keras-1__Intro.md

    # PDFs are generated in the same dir as md

```
