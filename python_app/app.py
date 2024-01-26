import os
import redis

def connect_to_redis():
    host = os.environ.get('REDIS_HOST', 'localhost')

    port = int(os.environ.get('REDIS_PORT', 6379))

    password = os.environ.get('REDIS_PASSWORD', 'foobar')

    r = redis.Redis(host=host, port=port, password=password, db=0, decode_responses=True)
    return r

def set_key_value(redis_instance, prefix, key, value):
    full_key = f"{prefix}:{key}"
    redis_instance.set(full_key, value)

def get_value(redis_instance, prefix, key):
    full_key = f"{prefix}:{key}"
    value = redis_instance.get(full_key)
    return value

if __name__ == "__main__":
    redis_conn = connect_to_redis()

    key_prefix = os.environ.get('REDIS_PREFIX', 'python_')

    key = "example_key"
    value = "example_value"

    set_key_value(redis_conn, key_prefix, key, value)
    print(f"Set key: {key_prefix}:{key}, value: {value}")

    retrieved_value = get_value(redis_conn, key_prefix, key)
    print(f"Retrieved value for key {key_prefix}:{key}: {retrieved_value}")
