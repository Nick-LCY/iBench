FROM gcc:9.4.0

ADD . /ibench

RUN cd /ibench && make

ENV PATH="/ibench/src:${PATH}"

WORKDIR /ibench/src