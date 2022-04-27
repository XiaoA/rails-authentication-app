# README

A simple authentication backend for a React Trivia app.

### Prerequisites

The setup steps assume that the following tools are installed on the system:

- [Ruby 3.1.0](https://www.ruby-lang.org/en/documentation/installation/)
- [Rails 7.0.2.2](https://guides.rubyonrails.org/getting_started.html)
- [PostgreSQL 13](https://www.postgresql.org/download/)

##### 1. Check out the repository

```bash
git clone git@github.com:XiaoA/rails-authentication-app.git
```

##### 2. Create database.yml file

Copy the sample database.yml file and edit the database configuration as required.

```bash
cp config/database.yml.sample config/database.yml
```

##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rails db:create
bundle exec rails db:setup
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

You can visit the local deployment of the site at: http://localhost:3000
