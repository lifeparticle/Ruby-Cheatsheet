# Initialization

For macOS

Postgresql setup
```
brew install postgresql
brew services start postgresql
```

Create an app with postgresql

```
rails new app --database=postgresql
bin/rails db:migrate
```

```
rails g controller admin index
```



# Database

Student model represents a single student, so it's singular. The students table holds all of the students, so it's plural.

Create a model

```
rails g model Student first_name:string last_name:string gender:string
```

Model validations

https://guides.rubyonrails.org/active_record_validations.html
https://learn.co/lessons/activerecord-lifecycle-reading


List all tables
```
ActiveRecord::Base.connection.tables

List all columns of a table
```
ActiveRecord::Base.connection.columns('student').map(&:name)
```

When creating a new database, the following command tends to be faster

Delete all records in a database table

```
Post.delete_all
```

```
bin/rails db:schema:load
```


# Resources
1. https://dev.to/ericchapman/my-beloved-ruby-on-rails-cheat-sheet-50pi
2. https://gist.github.com/mdang/95b4f54cadf12e7e0415
