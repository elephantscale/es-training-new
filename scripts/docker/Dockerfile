FROM ubuntu:bionic

# args for docker file
ARG MYUSER=ubuntu
ARG HOME_DIR=/home/${MYUSER}
ARG CONDA_DIR=${HOME_DIR}/conda
ARG NVM_VERSION=0.34.0

# envs for the runtime container
ENV NVM_DIR         ${HOME_DIR}/nvm
ENV NODE_VERSION    10.15.2
ENV ES_HOME         ${HOME_DIR}
ENV WORKING_DIR     ${HOME_DIR}/work
ENV NODE_PATH       ${NVM_DIR}/v${NODE_VERSION}/lib/node_modules
ENV PATH            ${NVM_DIR}/versions/node/v${NODE_VERSION}/bin:${PATH}

## update all system
RUN apt-get update --fix-missing -yq && \
    apt-get -yq upgrade

## basic utils
RUN apt-get install -yq  --no-install-recommends \
    atop \
    build-essential \
    ca-certificates \
    curl \
    git \
    less \
    #libssl-dev \
    jq \
    openssh-client \
    nano \
    rsync \
    sudo \
    vim \
    unzip \
    wget \
    zip

## stuff for chromium
RUN apt-get install -yq \
        gnupg \
        gconf-service \
        libasound2 \
        libatk1.0-0 \
        libc6 \
        libcairo2 \
        libcups2 \
        libdbus-1-3 \
        libexpat1 \
        libfontconfig1 \
        libgcc1 \
        libgconf-2-4 \
        libgdk-pixbuf2.0-0 \
        libglib2.0-0 \
        libgtk-3-0 \
        libnspr4 \
        libpango-1.0-0 \
        libpangocairo-1.0-0 \
        libstdc++6 \
        libx11-6 \
        libx11-xcb1 \
        libxcb1 \
        libxcomposite1 \
        libxcursor1 \
        libxdamage1 \
        libxext6 \
        libxfixes3 \
        libxi6 \
        libxrandr2 \
        libxrender1 \
        libxss1 \
        libxtst6 \
        ca-certificates \
        fonts-liberation \
        libappindicator1 \
        libnss3 \
        lsb-release \
        xdg-utils \
        wget

## done with all APT installs
## cleanup apt
RUN apt-get clean && \
        rm -rf /var/lib/apt/lists/*


## Adding a regular ubuntu user
RUN useradd -rm -d ${HOME_DIR} -s /bin/bash -g root -G sudo,audio,video -u 1000 ${MYUSER}

RUN echo "${MYUSER} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers


## ---------------- change to ubuntu user -------------
USER ${MYUSER}
## WORKDIR
WORKDIR ${HOME_DIR}


## install miniconda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-4.5.12-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p ${CONDA_DIR} && \
    rm ~/miniconda.sh && \
#    ${CONDA_DIR}/bin/conda clean -tipsy && \
    echo ". ${CONDA_DIR}/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate base" >> ~/.bashrc

## install python packages
RUN ${CONDA_DIR}/bin/pip install \
        bs4 \
        matplotlib \
        mistletoe \
        Pillow \
        pygments \
        pytablewriter \
        python-pptx



# Install nvm with node and npm
RUN mkdir -p ${NVM_DIR}
RUN curl https://raw.githubusercontent.com/creationix/nvm/v${NVM_VERSION}/install.sh | bash \
    && . ${NVM_DIR}/nvm.sh \
    && nvm install ${NODE_VERSION} \
    && nvm alias default ${NODE_VERSION} \
    && nvm use default


## Install npm latest version
RUN  npm -g install npm

## install reveal-md by forcing to install puppeteer & Chromium
RUN  npm -g -f install  reveal-md@2.4.1
#RUN  npm -g -f install  reveal-md

## work dir
RUN mkdir -p ${WORKING_DIR}

## Copy deployment key
RUN mkdir -p $HOME_DIR/.ssh/
COPY ./deploy-key1.*  $HOME_DIR/.ssh/
COPY ./ssh_config  $HOME_DIR/.ssh/config
RUN sudo chown ${MYUSER}  $HOME_DIR/*  $HOME_DIR/.ssh/*
RUN chmod 0600 $HOME_DIR/.ssh/*


## Get github key
RUN ssh-keyscan github.com >> $HOME_DIR/.ssh/githubKey
RUN cat $HOME_DIR/.ssh/githubKey >> $HOME_DIR/.ssh/known_hosts


## git repo setup
RUN git clone git@github.com:elephantscale/utils.git  $ES_HOME/utils

COPY ./startup.sh  $HOME_DIR/
RUN sudo chown ${MYUSER}  $HOME_DIR/*
#RUN sudo chown -R ${MYUSER}  $HOME_DIR
RUN sudo chmod +x  $HOME_DIR/*.sh


USER ${MYUSER}

ENTRYPOINT ["./startup.sh"]
#CMD ["bash"]
