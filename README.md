# ES-Training-New
This is the repo for our new MD based content.

## Dev Setup for writing markdown slides

## Using Reveal.js / Reveal-md plugins

[reveal js](https://github.com/hakimel/reveal.js)
[reveal md](https://github.com/webpro/reveal-md)

### Install
```bash

# on Mac
brew install npm
npm install -g reveal-md

# On Ubuntu 18.04
sudo apt-get remove nodejs npm  #old versions -- use nvm instead
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
source ~/.bashrc # May have to open new terminal window
nvm install v10.15.1
npm -g install npm # get latest version
npm -g instal reveal-md
```

### Setup

- place 'reveal.json' config file in the top level directory.
- 'reveal-md.json' can also be used to further customize
- see provided template files

### Writing

```bash
## customized start
./run-reveal-md-server.sh

## Quick run
## start in 'watch mode' - changes will be automatically reloaded
# reveal-md -w .

## to use a different theme
# reveal-md --theme simple -w .

```

### To generate pdf
```bash

## custom made for us
./gen-pdfs.sh

## the position of '--print output.pdf' seems to matter
## keep these as the last options

## default theme (black)
# reveal-md --port 1949  input.md  --print output.pdf

## 'simple' theme
#reveal-md --theme simple --port 1949  input.md  --print output.pdf

```

## Tips

#### For Animation
Use
```
<div class="fragment" />
```

## TODOs

### TODO-1 : Adding a header / footer
- Header logo can be Elephant Scale logo or a client logo.
- Footer will contain copyright messages .etc

Links
- https://stackoverflow.com/questions/34706859/set-header-and-footer-reveal-js-presentation
- https://github.com/hakimel/reveal.js/issues/806#issuecomment-222417787

## Best Practices
- https://dzone.com/articles/switching-to-revealjs-for-presentations

- Turning off shows notes:
in url, append this : `?&showNotes=false`

- good example : https://theno.github.io/revealjs_template
    git clone https://github.com/theno/revealjs_template
