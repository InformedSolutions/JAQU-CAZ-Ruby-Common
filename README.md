# JAQU-CAZ-Ruby-Common

A repository for housing shared/common components used by JAQU CAZ UIs.

## Custom Logger Installation

Add this line to your application's Gemfile:

```ruby
git 'https://github.com/InformedSolutions/JAQU-CAZ-Ruby-Common' do
  gem 'custom_logger'
end
```

And then execute:

    $ bundle install

## Privacy Policy Installation

Add this line to your application's Gemfile:

```ruby
git 'https://github.com/InformedSolutions/JAQU-CAZ-Ruby-Common' do
  gem 'privacy_policy'
end
```

And then execute:

    $ bundle install

### Props

- title_and_header - Page title, default value is 'Privacy Notice'

- caz_link_display_data - Array, shows caz links inside page , default value is '[]'

### Usage

Add this line to your erb file:

```ruby
 <%= render "privacy_policy/page", title_and_header: title_and_header, caz_link_display_data: @caz_link_display_data %>
```

Add this line to your haml file:

```ruby
= render "privacy_policy/page", title_and_header: title_and_header, caz_link_display_data: @caz_link_display_data
```
