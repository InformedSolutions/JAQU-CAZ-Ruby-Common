# frozen_string_literal: true

##
# Module used for encrypting and decrypting data.
module Encryption
  ##
  # Class is used to decrypt data.
  #
  class Decrypt < Base
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

    # Decrypting data.
    def call
      cipher = OpenSSL::Cipher.new('AES-128-CBC').decrypt
      cipher_keys(cipher)
      cipher.update(Base64.urlsafe_decode64(@data)) + cipher.final
    end
  end
end
