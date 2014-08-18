# Prerequisites

- rubygems
- redis

# Set it up

`git clone git@bitbucket.org:katzmopolitan/color-chooser.git`

`gem install bundler`

`bundle install`

# Start the server

This will start the server and kick off the job that is responsible for populating the color queue

`foreman start`

# Running test

`rspec`

# Open the color chooser page

http://localhost:3000/colors

# Monitor the job

http://localhost:3000/sidekiq
