# frozen_string_literal: true

require 'rails/engine'
require 'action_dispatch'

# This module notifies Rails that there's an engine at the specified path,
# and will correctly mount the engine inside the application,
# performing tasks such as adding the app directory of the engine
# to the load path for views.

module PrivacyPolicy
  # The isolate_namespace is responsible for isolating the views into their own namespace,
  # away from similar components inside the application.

  class Engine < ::Rails::Engine
    isolate_namespace PrivacyPolicy
  end
end
