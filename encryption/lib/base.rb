# frozen_string_literal: true

require 'openssl'
require 'base64'

##
# Module used for encrypting and decrypting data.
module Encryption
  ##
  # This is an abstract class used as a base for encryption classes.
  class Base
    ##
    # Creates an instance of a service and calls its +call+ method passing all the arguments.
    #
    # ==== Attributes
    #
    # Accepts all arguments and passes them to the service initializer.
    #
    def self.call(**args)
      new(**args).call
    end

    ##
    # Default initializer. May be overridden in each service
    #
    def initialize(_options = {}); end\

    private

    # Gets cipher key and iv from env variables and assigns it to cipher.
    def cipher_keys(cipher)
      cipher.key = Base64.decode64(ENV['ENCRYPTION_KEY'])
      cipher.iv = Base64.decode64(ENV['ENCRYPTION_VECTOR'])
    end
  end
end
