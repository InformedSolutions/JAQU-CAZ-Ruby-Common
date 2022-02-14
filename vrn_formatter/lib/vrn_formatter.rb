# frozen_string_literal: true

require_relative 'vrn_formatter/version'

module VrnFormatter
  # Default formatter for vrn strings.
  class Format
    ##
    # Initializer method.
    #
    # +vrn+ - string, eg. 'CAZ453'
    #
    def initialize(vrn:)
      @vrn = vrn
    end

    # Search for vrn pattern and insert whitespace in expected position.
    def call
      return unless vrn

      found = FORMAT_REGEXPS.find { |x| vrn.match?(x) }
      found ? vrn.scan(found).first.join(' ') : vrn
    end

    private

    # Vrn patterns.
    FORMAT_REGEXPS = [
      /^([0-9]{4})([A-Z]{3})$/, # AAAA999
      /^([A-Z]{2}[0-9]{2})([A-Z]{3})$/, # AA99AAA
      /^([A-Z]{3})([0-9]{4})$/, # AAA9999
      /^([A-Z]{3})([0-9]{3}[A-Z]{1})$/, # AAA999A
      /^([A-Z]{1}[0-9]{3})([A-Z]{3})$/, # A999AAA
      /^([0-9]{4})([A-Z]{2})$/, # 9999AA
      /^([A-Z]{2})([0-9]{4})$/, # AA9999
      /^([0-9]{3})([A-Z]{3})$/, # 999AAA
      /^([A-Z]{3})([0-9]{3})$/, # AAA999
      /^([A-Z]{3})([0-9]{2}[A-Z]{1})$/, # AAA99A
      /^([A-Z]{1}[0-9]{2})([A-Z]{3})$/, # A99AAA
      /^([A-Z]{1})([0-9]{4})$/, # A9999
      /^([0-9]{4})([A-Z]{1})$/, # 9999A
      /^([0-9]{3})([A-Z]{2})$/, # 999AA
      /^([0-9]{2})([A-Z]{3})$/, # 99AAA
      /^([A-Z]{2})([0-9]{3})$/, # AA999
      /^([A-Z]{3})([0-9]{2})$/, # AAA99
      /^([A-Z]{3})([0-9]{1}[A-Z]{1})$/, # AAA9A
      /^([A-Z]{1}[0-9]{1})([A-Z]{3})$/, # A9AAA
      /^([0-9]{2})([A-Z]{2})$/, # 99AA
      /^([0-9]{1})([A-Z]{3})$/, # 9AAA
      /^([A-Z]{2})([0-9]{2})$/, # AA99
      /^([A-Z]{1})([0-9]{3})$/, # A999
      /^([0-9]{3})([A-Z]{1})$/, # 999A
      /^([A-Z]{3})([0-9]{1})$/, # AAA9
      /^([0-9]{1})([A-Z]{2})$/, # 9AA
      /^([A-Z]{1})([0-9]{2})$/, # A99
      /^([0-9]{2})([A-Z]{1})$/, # 99A
      /^([A-Z]{2})([0-9]{1})$/, # AA9
      /^([A-Z]{1})([0-9]{1})$/, # 9A
      /^([0-9]{1})([A-Z]{1})$/  # A9
    ].freeze

    attr_reader :vrn
  end
end
