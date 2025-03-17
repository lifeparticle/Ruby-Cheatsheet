# Rails Debugging and Development Guide

## Development Tools and URLs

### Rails Development URLs

- **Routes Information**: `http://localhost:3000/rails/info/routes`

  - Lists all available routes in your Rails application
  - Helpful for debugging routing issues
  - Shows controller actions and their corresponding URLs

- **Letter Opener**: `http://localhost:3000/letter_opener`
  - Preview emails in the browser instead of sending them
  - Great for testing email functionality locally

## Debugging Tools

### Rails Console

```bash
rails c  # or rails console
```

- Interactive console to test Ruby code
- Direct database access
- Test model associations
- Execute arbitrary Ruby code in your app's environment

### Rails Logger

```ruby
Rails.logger.debug "Debug: @user = #{@user}"
```

Other log levels:

```ruby
Rails.logger.info "Info message"
Rails.logger.warn "Warning message"
Rails.logger.error "Error message"
Rails.logger.fatal "Fatal message"
```

## Database Commands

### Seeding Data

```bash
rails db:seed:development:users  # Seed development user data
rails db:seed                    # Run all seed files
```

Other useful database commands:

```bash
rails db:migrate                                               # Run pending migrations
rails db:rollback                                              # Rollback last migration
rails db:reset                                                 # Drop & recreate database
rails db:setup                                                 # Create database, load schema, and initialize with seed data
rails db:drop db:create db:migrate                             # Reset database by dropping, creating, and running migrations
ActiveRecord::Base.connection.tables                           # List all database tables
ActiveRecord::Base.connection.columns('users').map(&:name)     # List all column names of the 'users' table
```

## Code Quality Tools

### RuboCop

Basic usage:

```bash
rubocop                         # Check code style
```

Auto-correction options:

```bash
rubocop -a                      # Safe auto-corrections (--auto-correct)
rubocop -A                      # Safe + unsafe auto-corrections (--auto-correct-all)
```

Common RuboCop flags:

```bash
rubocop --only Style/StringLiterals    # Check specific cop
rubocop --format html > rubocop.html   # Generate HTML report
rubocop --auto-gen-config              # Generate .rubocop_todo.yml
```

### Performance Monitoring

```ruby
# Add at the start of a block you want to measure
start_time = Time.now

# Add at the end of the block
end_time = Time.now
Rails.logger.debug "Operation took #{end_time - start_time} seconds"
```

----------------------------

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
```

List all columns of a table
```
ActiveRecord::Base.connection.columns('student').map(&:name)
```

When creating a new database, the following command tends to be faster

```
bin/rails db:schema:load
```

Delete all records in a database table

```
Post.delete_all
```


# **Rails Best Practices**

## Comments

* File/class-level comments

    1. Every class definition should have an accompanying comment
       that describes what it is for and how it should be used.
    2. A file that contains zero classes or more than one class should have
       a comment at the top describing its contents.
    3. All files, including data and config files, should have file-level comments.

* Function comments
    1. Every function declaration should have comments immediately
       preceding it that describe what the function does and how to use it.
    2. Every function should mention what the inputs and outputs are,
       unless it meets all of the following criteria:
        1. not externally visible
        2. very short
        3. obvious

* Block and inline comments
    1. Complicated operations get a few lines of comments before
       the operations commence. Non-obvious ones get comments at the end of the line.
    2. do not use block comments. They cannot be preceded by whitespace and are not
       as easy to spot as regular comments.
* Punctuation, spelling and grammar
    1. Pay attention to punctuation, spelling, and grammar;
       it is easier to read well-written comments than badly written ones.
    2. Comments should be as readable as narrative text,
       with proper capitalization and punctuation.
    3. In many cases, complete sentences are more readable than sentence fragments.
    4. Shorter comments, such as comments at the end of a line of code, can sometimes be
       less formal, but you should be consistent with your style.
* TODO comments
    1. Use **TODO** comments for code that is temporary,
       a short-term solution, or good-enough but not perfect.
    2. TODOs should include the string **TODO** in all caps, followed by the full name of the person who can best provide
       context about the problem referenced by the TODO, in parentheses.
    3. A **colon** is optional.
    4. A comment explaining what there is to do is required.
    5. The main purpose is to have a consistent TODO format that can be searched to find the person who can provide more details upon request.
    6. A TODO is not a commitment that the person referenced will fix the problem.

```ruby
# bad
# TODO(TDO): Use proper namespacing for this constant.

# bad
# TODO(orinify122): Use proper namespacing for this constant.

# good
# TODO(Orin): Use proper namespacing for this constant.
```

* Commented-out code

1. Never leave commented-out code in the codebase.



# Resources
1. https://dev.to/ericchapman/my-beloved-ruby-on-rails-cheat-sheet-50pi
2. https://gist.github.com/mdang/95b4f54cadf12e7e0415
