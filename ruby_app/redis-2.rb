require 'redis'

redis_host = ""
redis_port = ""
redis_username = ""
redis_password = ""
use_ssl = true

folder = 'example_folder'
prefix = "#{folder}:"

redis_config = {
  host: redis_host,
  port: redis_port,
  password: redis_password,
  username: redis_username,
  ssl: use_ssl
}

puts "Connecting to Redis..."
redis = Redis.new(redis_config)
puts "Connected successfully."

example_key = "#{prefix}example_key"
example_value = 'example_value'

puts "Setting key '#{example_key}' with value '#{example_value}'..."
redis.set(example_key, example_value)
puts "Key set successfully."

puts "Retrieving value for key '#{example_key}'..."
retrieved_value = redis.get(example_key)
puts "Retrieved value: #{retrieved_value}"

puts "Closing Redis connection..."
redis.quit
puts "Connection closed."
