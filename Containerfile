FROM ghcr.io/esphome/esphome:2025.11.4

COPY ./src/config /config

# Add .yaml and .h from zero-grid repository
RUN git clone https://github.com/x-real-ip/zero-grid.git /tmp/zero-grid \
    && mv /tmp/zero-grid/esphome/zero-grid.yaml /config/zero-grid.yaml \
    && mv /tmp/zero-grid/esphome/zero-grid.h /config/zero-grid.h

# DEBUG
RUN ls -la /config/
