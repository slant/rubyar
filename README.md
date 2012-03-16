# ActiveRecord with Ruby
This is a basic implementation of using ActiveRecord outside of Rails. In this case, in a Ruby script.

This implementation is using an external database.yml file, as Rails does, without the environments.

## Create the database and users table
These instructions are assuming that you are using the settings specified in my default database.yml. For the love of all that is holy, please do not use this configuration in any production anywhere.

    $ mysqladmin -u root create rubyrb
    $ mysql -u root rubyrb
    mysql> CREATE TABLE users (id INT PRIMARY KEY UNIQUE AUTO_INCREMENT, name VARCHAR(255));


## Running the script
    $ ruby rubyar.rb

## Expected output
The script will prompt you to enter your name. A User record will be created using the name entered. If no name is entered, it will simply skip that step. After this, it will output a count and a comma-separated list of names currently in the database.

## Logging and Debugging

If you wish to see output from the queries inline, uncomment the fllowing line:

    ActiveRecord::Base.logger = Logger.new(STDERR)

If you want this output in a separate file, uncomment this one:

    ActiveRecord::Base.logger = Logger.new(File.open('database.log', 'a'))

## Pull requests
This really is just something I put together for my own musings. If you know of a better way of doing anything that you see here, please do send me a pull request with an explanation of why you're suggesting the change. Thanks!

