#FROM python:3.11-alpine3.17
ARG BUILD_FROM=ghcr.io/hassio-addons/base-python:3.11-alpine
FROM ${BUILD_FROM}

#LABEL org.opencontainers.image.description="Deltadore Tydom to MQTT Bridge"

# App base dir
WORKDIR /app

# Copy app
COPY /app .

# Install dependencies
RUN pip3 install -r requirements.txt

# Main command
CMD [ "python", "-u", "main.py" ]
