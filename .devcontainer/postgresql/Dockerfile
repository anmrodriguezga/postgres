FROM postgres:latest

# Set environment variables (change values as needed)
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=platzimovies

USER root
RUN apt-get update && apt-get install -y sudo wget unzip && rm -rf /var/lib/apt/lists/*
COPY ./db /tmp/db

USER postgres
WORKDIR /tmp
RUN wget --no-check-certificate https://neon.tech/postgresqltutorial/dvdrental.zip && \
    unzip dvdrental.zip
RUN wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1oE7A4z_D2o-udn_yflwZ03uN3cA0gVpr' -O platzimovies.tar
    
VOLUME ["/var/lib/postgresql/data"]

# Expose the default PostgreSQL port
EXPOSE 5432
