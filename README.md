# Twitter Clone

This is a web application developed with Ruby on Rails that contains some similar functions from Twitter social network.


## Features

* Create an account.
* Log in into your account.
* Tweet from your account only if you are logged in.
* Follow and unfollow another users.
* Search another users to follow them (you should know if the user is already registered and the username).
* Another users can follow and unfollow you.
* Feed view only with your tweets and tweets from people you follow.
* Profile view only with your tweets.
* Custom url with you username that redirect to your profile.
* View with a list of your followers.
* View with a list of users you follow.
* Log out.


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


## Screenshots

Home page (feed):

![Screen Shot 2021-05-20 at 10 04 24 PM](https://user-images.githubusercontent.com/28455356/119075999-69327400-b9b7-11eb-9a08-3cee29e0ad19.png)


Profile view:

![Screen Shot 2021-05-20 at 10 14 09 PM](https://user-images.githubusercontent.com/28455356/119076757-c1b64100-b9b8-11eb-9988-59e6bc22a07b.png)
