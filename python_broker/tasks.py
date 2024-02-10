from redis import Redis
from config import TaskWorkerConfig

def set_example_key():
    redis_connection = Redis(**TaskWorkerConfig.broker)
    redis_connection.set("example_key", "example_value")
