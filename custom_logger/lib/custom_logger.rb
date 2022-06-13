# frozen_string_literal: true

require_relative 'custom_logger/version'

module CustomLogger
  # Default formatter for log messages in production mode.
  class Formatter
    # https://www.oreilly.com/library/view/regular-expressions-cookbook/9780596802837/ch07s16.html
    IP_REGEX = /\b(?:[0-9]{1,3}\.){3}[0-9]{1,3}\b/
    # Replace the sensitive string to '[REDACTED]'
    FILTERED_STRING = '[REDACTED]'

    # Override call method used in Logger::Formatter
    def call(severity, time, progname, msg)
      formatted_severity = format('%<sev>-5s', sev: severity.to_s)
      formatted_time = time.strftime('%Y-%m-%d %H:%M:%S')
      formatted_msg = filter_pii(msg)
      "[#{formatted_severity} #{formatted_time}] #{progname} #{formatted_msg}\n"
    end

    private

    # If log string contains IP address then replace it with custom string
    def filter_pii(msg)
      msg.gsub(IP_REGEX, FILTERED_STRING)
    end
  end

  class Logger
    # Override private method used in Logger to show 'INFO 1' in logs instead of `ANY`.
    def format_severity(severity)
      SEV_LABEL[severity] || 'INFO 1'
    end

    ##
    # Logging severity.
    module Severity
      # Add a new custom logger method to log important information in production mode when `config.log_level` is :error.
      # Example of usage: `Rails.logger.important_info('Some important information in production logs')`
      def important_info(progname = nil, &)
        add(6, nil, progname, &)
      end
    end
  end
end
