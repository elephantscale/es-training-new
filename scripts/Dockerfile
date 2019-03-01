from ubuntu:bionic

# args for docker file
ARG MYUSER=ubuntu
ARG HOME_DIR=/home/${MYUSER}
ARG CONDA_DIR=${HOME_DIR}/conda
ARG NVM_VERSION=0.34.0

# envs for the runtime container
ENV NVM_DIR         ${HOME_DIR}/nvm
ENV NODE_VERSION    10.15.1
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
    libssl-dev \
    jq \
    openssh-client \
    nano \
    rsync \
    sudo \
    vim \
    unzip \
    wget \
    zip


## done with all installs
## cleanup apt
RUN apt-get clean && \
        rm -rf /var/lib/apt/lists/*


## Adding a regular ubuntu user
RUN useradd -rm -d ${HOME_DIR} -s /bin/bash -g root -G sudo -u 1000 ${MYUSER}

RUN echo "${MYUSER} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers


## ---------------- change to ubuntu user -------------
USER ${MYUSER}
## WORKDIR
WORKDIR ${HOME_DIR}

# Install nvm with node and npm
RUN mkdir -p ${NVM_DIR}
RUN curl https://raw.githubusercontent.com/creationix/nvm/v${NVM_VERSION}/install.sh | bash \
    && . ${NVM_DIR}/nvm.sh \
    && nvm install ${NODE_VERSION} \
    && nvm alias default ${NODE_VERSION} \
    && nvm use default


## install reveal-md
RUN  npm -g install npm
RUN  npm -g install  reveal-md

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

## work dir
RUN mkdir -p ${WORKING_DIR}

## Copy deployment key
RUN mkdir -p $HOME_DIR/.ssh/
COPY ./deploy-key1.*  $HOME_DIR/.ssh/
COPY ./ssh_config  $HOME_DIR/.ssh/config
RUN sudo chown ${MYUSER}  $HOME_DIR/*  $HOME_DIR/.ssh/*

## Get github key
RUN ssh-keyscan github.com >> $HOME_DIR/.ssh/githubKey
RUN cat $HOME_DIR/.ssh/githubKey >> $HOME_DIR/.ssh/known_hosts


## git repo setup
RUN git clone git@github.com:elephantscale/utils.git  $ES_HOME/utils

COPY ./startup.sh  $HOME_DIR/
RUN sudo chown ${MYUSER}  $HOME_DIR/*  $HOME_DIR/.ssh/*
RUN sudo chmod +x  $HOME_DIR/*.sh


USER ${MYUSER}

ENTRYPOINT ["./startup.sh"]
#CMD ["bash"]
