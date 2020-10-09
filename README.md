
## Overview

The goal of this project is to build an application where users can keep track of the books they've read. By keeping track of the books they've read, it can prevent them from purchasing a book they have read. 


### File Structure

```
├── Gemfile
├── Gemfile.lock
├── README.md
├── Rakefile
├── app
│   ├── controllers
│   │   ├── application_controller.rb
│   │   ├── books_controller.rb
│   │   └── users_controller.rb
│   ├── models
│   │   ├── book.rb
│   │   └── user.rb
│   └── views
│       ├── welcome.erb
│       ├── layout.erb
│       ├── books
│       │   ├── new.erb
│       │   ├── edit.erb
│       │   ├── show.erb
│       │   └── index.erb
│       └── users
│           ├── signup.erb
│           └── login.erb
│           
├── config
│   └── environment.rb
├── config.ru
├── db
│   ├── development.sqlite
│   ├── migrate
│   │   ├── 20200930141528_create_users.rb
│   │   └── 20200930143317_create_books.rb
│   ├── schema.rb
│   └── development.sqlite
│   └── seeds.rb
└── spec
    ├── application_controller_spec.rb
    ├── spec_helper.rb


### Gemfile 

This project is supported by Bundler and includes a `Gemfile`.

Run bundle install.







