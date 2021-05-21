# Twitter Clone

This is a web application developed with Ruby on Rails that contains some similar functions from Twitter social network.


## Features

* Create an account.
* Log in into your account.
* Tweet from your account only if you are logged in.
* Follow and unfollow another users.
* Search another users to follow them.
* Another users can follow and unfollow you.
* Feed view only with your tweets and tweets from people you follow.
* Profile view only with your tweets.
* Custom url with you username that redirect to your profile.


## Requeriments

* Ruby 2.7+
* Rails 6+


## Installation, Init and Usage

Make sure that you have installed rails 6+ before cloning:

1. Clone the repository: `git clone https://github.com/nathsotomayor/twitter_clone.git`
2. Go to the folder: `cd twitter_clone`
3. Install dependencies `yarn install`
4. Install requirements `bundle install`
5. Create the data base `rails db:create`
6. Run the migrations `rails db:migrate`
7. Run the server: `rails s -b 0.0.0.0 -p 3000`

Get into the URL `127.0.0.1:3000` or app live demo [link](twitter-clone-nathsotomayor.herokuapp.com/) to start the web app.