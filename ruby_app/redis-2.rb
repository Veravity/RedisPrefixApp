require 'redis'

redis_host = 'REDIS_HOST'
redis_port = REDIS_PORT
redis_password = 'REDIS_PASSWORD'
use_ssl = true

folder = 'example_folder'
prefix = "#{folder}:"

redis_config = {
  host: redis_host,
  port: redis_port,
  password: redis_password,
  ssl: use_ssl
}

redis = Redis.new(redis_config)

example_key = "#{prefix}example_key"
example_value = 'example_value'

redis.set(example_key, example_value)

retrieved_value = redis.get(example_key)
puts "Value for key '#{example_key}': #{retrieved_value}"

redis.quit
