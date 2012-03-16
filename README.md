# ActiveRecord with Ruby
This is a basic implementation of using ActiveRecord outside of Rails, in this case, with a plain Ruby script.

This implementation is using an external database.yml file, as Rails does, without the environments.

## Create the database and users table
    mysql> CREATE TABLE users (id INT PRIMARY KEY UNIQUE AUTO_INCREMENT, name VARCHAR(255));


## Running the script
$ ruby rubyar.rb

## Expected output
The script will prompt you to enter your name. A User record will be created using the name entered. If no name is entered, it will simply skip that step.

## Pull requests
This really is just something I put together for my own musings. If you know of a better way of doing anything that you see here, please do send me a pull request with an explanation of why you're suggesting the change. Thanks!
