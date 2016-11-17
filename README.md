# wtf logger

```
# Levels: :debug, :info, :warn, :error, and :fatal
def logger
  if defined?(::Rails)
    @logger ||= Rails.logger
  else
    @logger ||= Logger.new(STDOUT)
  end
end
```

## `wtf`
```
def wtf(message)
  logger.info(message)
end
```
