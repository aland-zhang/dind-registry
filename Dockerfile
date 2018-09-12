FROM docker:17.12-dind
RUN echo 'net.bridge.bridge-nf-call-ip6tables = 1' >> /etc/sysctl.conf \
  && echo 'net.bridge.bridge-nf-call-iptables = 1' >> /etc/sysctl.conf \
  && echo 'net.bridge.bridge-nf-call-arptables = 1' >> /etc/sysctl.conf && mkdir -p /lib/modules/3.10.30 

COPY start.sh .
RUN chmod +x ./start.sh
CMD ["./start.sh"]
