# frozen_string_literal: true

desc 'Run all checks and tests'
task :build do
  puts('Run all checks and tests...')

  exec("echo 'Running rubocop...' && bundle exec rubocop &&
        echo 'Running `custom_logger` rspec...' && bundle exec rspec custom_logger/spec &&
        echo 'Running `encryption` rspec...' && bundle exec rspec encryption/spec &&
        echo 'Running `privacy_policy` rspec...' && bundle exec rspec privacy_policy/spec &&
        echo 'Running `vrn_formatter` rspec...' && bundle exec rspec vrn_formatter/spec")
end
