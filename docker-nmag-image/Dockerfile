FROM scratch

ADD nmag-ubuntu11.10.xz /

COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y

ENTRYPOINT ["su", "-", "nmag"]
