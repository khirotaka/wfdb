FROM alpine:3.10.3

WORKDIR /wfdb
RUN apk update && apk add --no-cache gcc curl-dev expat-dev libc-dev curl make 

RUN curl -O https://archive.physionet.org/physiotools/wfdb.tar.gz && tar xzf wfdb.tar.gz

RUN ARCHIVE_PATH=$(ls | grep "^wfdb-") && \
    cd $PWD/$ARCHIVE_PATH && \ 
    ./configure && \ 
    make install && \
    make check

WORKDIR /Downloads
RUN chmod -R a+w .

