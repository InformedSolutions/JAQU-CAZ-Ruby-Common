# frozen_string_literal: true

##
# Module used for encrypting and decrypting data.
module Encryption
  ##
  # Class is used to encrypt data.
  #
  class Encrypt < Base
    ##
    # Initializer method.
    #
    # ==== Attributes
    #
    # * +data+ - string or json
    #
    def initialize(data:)
      @data = data
    end

    # Encrypting data.
    def call
      cipher = OpenSSL::Cipher.new('AES-128-CBC').encrypt
      cipher_keys(cipher)
      Base64.urlsafe_encode64(cipher.update(@data) + cipher.final)
    end
  end
end
