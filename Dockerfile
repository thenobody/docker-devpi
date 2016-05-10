FROM python:3
RUN pip install "devpi-server" "devpi-client" "devpi-web"
VOLUME /mnt
EXPOSE 3141
ADD run.sh /
CMD ["/run.sh"]
