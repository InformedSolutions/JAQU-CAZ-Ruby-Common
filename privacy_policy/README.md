# Privacy Policy

Shared privacy notice page used by JAQU CAZ UIs.

## Props

- title_and_header - Page title, default value is 'Privacy Notice'

- caz_link_display_data - Array, shows caz links inside page , default value is '[]'

## Usage

Add this line to your erb file:

```ruby
 <%= render "privacy_policy/page", title_and_header: title_and_header, caz_link_display_data: @caz_link_display_data %>
```

Add this line to your haml file:

```ruby
= render "privacy_policy/page", title_and_header: title_and_header, caz_link_display_data: @caz_link_display_data
```
