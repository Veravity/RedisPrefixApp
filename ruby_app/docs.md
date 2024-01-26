Redis Example with Folder Structure

This Ruby script demonstrates how to connect to a Redis server using the redis gem and organize key-value pairs with a folder-like structure. It sets an example key-value pair within a simulated folder and retrieves the value for verification.
Usage

    Clone the repository.
    Navigate to the project directory.
    Install the required gem using gem install redis.
    Edit the Redis server connection details in redis.rb.
    Run the script with ruby redis.rb.

The script uses a password-protected Redis connection and simulates a folder structure by including a prefix in the key names. This organization helps prevent key conflicts and enhances the clarity of data storage.