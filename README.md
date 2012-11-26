error-locator
=============

Open erroneous code in your favorite editor by clicking exception call stack in browser. Gem for Ruby on Rails.

Usage:  
1) setup ```$EDITOR``` variable.
For example:
```sh
#.bash_login
export EDITOR=geany
```
2) Add to your Gemfile:

```ruby
gem 'error-locator', :group => :development
```

3) Add to your routes.rb:
```ruby
post '/error-locator' => ErrorLocator if Rails.env.development?
```

4) ``` bundle install ```  
5) ``` rails s ```
6) Open browser, when found error - click on the line with error.  
Currently supported: Application and Full Traces.  
Currently supported editors: Sublime Text 2, Geany.  
Editor must support opening file with line number like 'dir/filename.rb:75'  

*Current Issues: you need to open editor before locating an error.*
