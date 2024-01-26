require 'redis'

redis_url_with_password = 'redis://foobar@localhost:6379'
folder = 'example_folder'
prefix = "#{folder}:"

redis = Redis.new(url: redis_url_with_password)

example_key = "#{prefix}example_key"
example_value = 'example_value'

redis.set(example_key, example_value)

retrieved_value = redis.get(example_key)
puts "Value for key '#{example_key}': #{retrieved_value}"

redis.quit
