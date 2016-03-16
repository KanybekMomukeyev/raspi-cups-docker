FROM resin/rpi-raspbian
RUN apt-get update && \
  apt-get -y upgrade && \
  apt-get -y install cups nginx
ADD cupsd.conf /etc/cups/
EXPOSE 631
VOLUME /dev/usb
ADD start-cups.sh /root/start-cups.sh
ADD default.conf /etc/nginx/sites-available/default
RUN chmod +x /root/start-cups.sh
CMD ["/root/start-cups.sh"]
