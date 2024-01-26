# Connect to local Redis

```redis-cli```

# Test for existing password

```AUTH PASSWORD```

# Expected result

```node_redis: Warning: Redis server does not require a password, but a password was supplied.```

# Set password

```CONFIG SET requirepass "foobar"```

# Test again

```AUTH foobar```

# Expected Result

```OK```