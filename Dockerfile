FROM sergiomtzlosa/ubuntu-nmag:latest

RUN     apt-get install -y x11vnc xvfb
RUN     mkdir ~/.vnc
# Setup a password
RUN     x11vnc -storepasswd nmagnmag ~/.vnc/passwd

EXPOSE 6900:5900

ENTRYPOINT ["su", "-", "nmag"]
