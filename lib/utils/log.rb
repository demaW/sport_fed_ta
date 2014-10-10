require 'logging'
class LoggerSF
  $logger = Logging.logger[STDOUT]
  $logger.add_appenders(
      Logging.appenders.stdout(),
      Logging.appenders.file('../log.log')
  )
  $logger.level = :info
end