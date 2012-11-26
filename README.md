error-locator
=============

Open erroneous code in your favorite editor by clicking exception call stack in browser. Gem for Ruby on Rails.

Usage:

1. setup $EDITOR variable. For example:
```sh
#.bash_login export
EDITOR=geany
```
2. Add "gem 'error-locator', :group => :development" to your Gemfile
3. Add "post '/error-locator' => ErrorLocator if Rails.env.development?" to your routes
4. bundle install
5. rails s
6. Open browser, when found error - click on the line with error.
Currently supported: Application and Full Traces.
Currently supported editors: Sublime Text 2, Geany.
Editor must support opening file with line number like 'dir/filename.rb:75'

*Current Issues: you need to open editor before locating an error.*
