# README

See the deployed app here:

https://io-mart-demo.herokuapp.com

You may login with the following credentials:

- email: admin@example.com
- password: password

## App summary

A Rails 7 app using Ruby 3 and a postgresql database. Very much a work in progress. The models and associations seem to be working well. Admins are able to sign-in and create events and comments.

If you plan to run this locally make sure to run migrations followed by seeding the data in `db/seeds.rb`.


## Working Features

- Status model with 3 instances representing _critical_, _amber_ and _good_.
- `Event` model associated with `Status` and `Comment`.
- `User` model for admins with sign-in.

## Known Bugs
- Updating the status of an event when editing an existing comment doesn't always work. 

## To do
- create modern views with bootstrap.
- scheduled events should become active on specified date.
- Associate _comments_ with _users_.
- Comments should only be editable/deletable by the comment-owner.
- use hotwire (a prominent feature in Rails 7).
- write tests.
- manual tests.
- check task/challenge description for anything that may have been missed.
