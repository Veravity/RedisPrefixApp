Cross-Language Redis Connection Example

This repository provides examples of connecting Python and Ruby applications to an external Redis server. The scripts in python_app/ and ruby_app/ demonstrate key-value operations using a specified prefix for organized data storage. Additionally, a docker-compose in docker-redis/ allows local testing with a Redis instance.
Repository Content

    python_app/: Python script (app.py) showcasing Redis connection with a prefix.
    ruby_app/: Ruby script (ruby.rb) demonstrating Redis connection with a prefix.
    docker-redis/: docker-compose for a local Redis instance, useful for testing.

Usage

    Run Local Redis (optional):
        Navigate to docker-redis/ and build/run the Docker image/container for local Redis.

    Adjust Connection Details:
        Update connection details in the scripts (python_app/ and ruby_app/) if needed.

    Run Applications:

        Execute the Python script:

        bash

cd python_app
python app.py

Run the Ruby script:

bash

        cd ruby_app
        ruby redis.rb

    Verify Results:
        Check the console outputs to confirm successful connections and key-value operations.

Notes

    Both scripts use key prefixes for organized data storage in Redis.
    The local Redis docker-compose enables testing without relying on an external Redis server.

Feel free to customize the scripts and docker-compose to suit your Redis server configuration and application needs.