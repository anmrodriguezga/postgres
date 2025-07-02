FROM postgres:latest

# Set environment variables (change values as needed)
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=dvdrental

USER root
RUN apt-get update && apt-get install -y sudo wget unzip && rm -rf /var/lib/apt/lists/*
COPY ./db /tmp/db

USER postgres
WORKDIR /tmp
RUN wget --no-check-certificate https://neon.tech/postgresqltutorial/dvdrental.zip && \
    unzip dvdrental.zip
    
VOLUME ["/var/lib/postgresql/data"]

# Expose the default PostgreSQL port
EXPOSE 5432
