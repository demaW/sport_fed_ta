require 'logging'
class LoggerSF
  $logger = Logging.logger
  $logger.add_appenders(
      Logging.appenders.stdout,
      Logging.appenders.file('../log.log')
  )
  Logging::Config::YamlConfigurator.load('sf_logging.yaml')

  $logger.level = :info
end