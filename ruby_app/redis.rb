require 'redis'

REDIS_SSL = ""
REDIS_HOST = ""
REDIS_PORT = ""
REDIS_USERNAME = ""
REDIS_PASSWORD = ""

if REDIS_SSL
  redis_url_with_password = "rediss://#{REDIS_USERNAME}:#{REDIS_PASSWORD}@#{REDIS_HOST}:#{REDIS_PORT}"
else
  redis_url_with_password = "redis://#{REDIS_HOST}:#{REDIS_PORT}"
end

folder = 'example_folder'
prefix = "#{folder}:"

redis = Redis.new(url: redis_url_with_password)

example_key = "#{prefix}example_key"
example_value = 'example_value'

redis.set(example_key, example_value)

retrieved_value = redis.get(example_key)
puts "Value for key '#{example_key}': #{retrieved_value}"

redis.quit
