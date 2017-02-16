# wtf logger

Gemfile:
```ruby
gem "wtf_logger", github:  "barnabyalter/wtf-logger"
```

In your code:
```ruby
require "wtf_logger"
```

Basically it's just:
```
# Levels: :debug, :info, :warn, :error, and :fatal
# AKA:    :btw,   :fyi,  :smh,  :wtf, and   :please_advise
def logger
  if defined?(::Rails)
    @logger ||= Rails.logger
  else
    @logger ||= Logger.new(STDOUT)
  end
end
```

## `btw`
```ruby
def btw(message)
  logger.debug(message.cyan)
end
```

## `fyi`
```ruby
def fyi(message)
  logger.info(message)
end
```

## `smh`
```ruby
def smh(message)
  logger.warn(message.magenta)
end
```

## `wtf`
```ruby
def wtf(message)
  logger.error(message.red)
end
```

## `please_advise`
```ruby
def please_advise(message)
  logger.fatal(message.upcase.black.on_red)
end
```
