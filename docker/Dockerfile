FROM python:3.10-slim

RUN apt update && apt -y install x11vnc xvfb jwm &&\
    pip install notebook numpy matplotlib opencv-python &&\
    mkdir -p /app/code
COPY ./docker/startup.sh /app/startup.sh
RUN chmod -R 777 /app
ENV DISPLAY=:99
WORKDIR /app/code

ENTRYPOINT ["/app/startup.sh"]
