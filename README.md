# RAILS 6 Setup for BDD

A very minimal setup of Rails to start building an app with BDD.

Has test gems installed with RSpec and Cucumber initialised.
There is one rspec request test and a cucumber feature test, mainly implemented as a syntax example.

I have hacked the generators.rb file to restrict file bloat. If you want to generate more than just request specs you may need to comment out some of the restrictions `config/initializers/generators.rb`

## Before you start

- Use RVM to install Ruby 2.6.3
- `bundle install`
- `yarn`

## Setup Database

If you need to create the role 'teeny':

- `psql -d postgres`
- #`create role teeny login createdb;`
- #`\q`

Then setup db:

- `rails db:setup`
  
## To Run

- `rails s`

## To Test

- `rspec` to run the rspec request tests
- `cucumber` to run the feature tests

## Discussion Points

- Followed a BDD approach with Cucumber & capybara.
- Used this approach to [test for redirection to Original Url](https://makandracards.com/makandra/15217-test-redirects-to-an-external-url-with-cucumber-capybara)
- Set up short url using a custom route but haven't fathomed how to show domain + path in view
