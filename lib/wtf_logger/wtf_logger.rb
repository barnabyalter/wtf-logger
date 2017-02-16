require 'logger'
require 'colorize'
def logger
  if defined?(::Rails)
    @logger ||= Rails.logger
  else
    @logger ||= Logger.new(STDOUT)
  end
end

def btw(message)
  logger.debug(message.cyan)
end

def fyi(message)
  logger.info(message)
end

def smh(message)
  logger.warn(message.magenta)
end

def wtf(message)
  logger.error(message.red)
end

def please_advise(message)
  logger.fatal(message.upcase.black.on_red)
end

def fyi(message)
  logger.info(message.yellow)
end




# btw("yo")
# fyi("yo")
# smh("yo")
# wtf("yo")
# please_advise("yo")
