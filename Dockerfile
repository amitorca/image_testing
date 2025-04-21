FROM postgres:latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends curl && \
    # Clean up the apt cache to keep the layer smaller
    rm -rf /var/lib/apt/lists/*
