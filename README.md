# Jetfuel

Jetfuel is a link-shortening app that mimics bit.ly's functionality. It is a solo project created by Jeffrey Wan during module 3 of the Turing School of Software Design.

### Getting Started
To get the app running locally or run the test suite:

```
git clone git@github.com:Jwan622/jetfuel.git
cd jetfuel (enter the directory)
bundle install

rails s # to run the server
redis-server in another console window to run redis
bundle exec sidekiq to run sidekiq (for background workers)
```
To run the tests:

```
rake test
```

### Using the app
* Enter a link in the link bar.
* Obtain the shortened url an use that in your twitter or any other place where a long  
url is less preferable to the shortened and better-looking short link.

### The code that I learned the most from:

- app/javascripts/templates/links.jst.ejs
- app/javascripts/links.js

### Main functionality of the app:
  app/services/title_parser.rb
  app/models/link.rb
  app/controllers/links_controller

### This personal project incorporates the following functionality:
* Consuming an HTML endpoint and parsing the response with Nokogiri to obtain HTML elements
* background workers with sidekiq and redis.
* My first time with RSpec!
* MVC structure for Rails.

# Things learned from this project:

* sort method in JavaScript is descructive. When I called json_data.sort { ... }, it changes json_data and so that's why I can just pass json_data
* building views with EJS and javascript and jquery
