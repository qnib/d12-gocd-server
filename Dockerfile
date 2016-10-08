FROM qnib/gocd-server

HEALTHCHECK --interval=5s --retries=120 --timeout=2s \
CMD /opt/qnib/gocd/server/bin/healthcheck.sh
RUN echo "tail -f /var/log/supervisor/gocd-server.log" >> /root/.bash_history
