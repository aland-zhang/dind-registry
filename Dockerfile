FROM docker:17.09-dind

COPY start.sh .
RUN chmod +x ./start.sh
CMD ["./start.sh"]

