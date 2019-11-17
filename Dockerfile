FROM gcc:9.2

WORKDIR /wfdb
RUN apt-get update && apt-get install -y --no-install-recommends \
        libcurl4-openssl-dev\
        libexpat1-dev && \
    rm -rf /var/lib/apt/lists/* 

RUN curl -O https://archive.physionet.org/physiotools/wfdb.tar.gz && tar xzf wfdb.tar.gz

RUN ARCHIVE_PATH=$(ls | grep "^wfdb-") && \
    cd $PWD/$ARCHIVE_PATH && \ 
    ./configure && \ 
    make install && \
    make check

WORKDIR /Downloads
RUN chmod -R a+w .
