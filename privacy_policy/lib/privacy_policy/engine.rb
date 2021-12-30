# frozen_string_literal: true

require 'rails/engine'
require 'action_dispatch'

module PrivacyPolicy
  class Engine < ::Rails::Engine
    isolate_namespace PrivacyPolicy
  end
end
