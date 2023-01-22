# README

![demo](https://user-images.githubusercontent.com/68574311/213937743-6eecabe1-93f9-4db2-8993-25960ab564d5.png)

Chucks Jokes App

This is an app made entirely in Ruby On Rails.

As an user, you can get jokes (as many as you want) and save the ones you likes.

The app was made using https://api.chucknorris.io/ to get the jokes.

The jokes are fetched through the API using the standard module net/http, using a service for that purpose.

When user clicks to get a joke, the joke displays in a turbo_frame_tag and it's rendered automatically.

When user clicks to save the joke as favorite, it's persisted in the database.

Favorite jokes belongs to each user, so you can see only the ones you liked.

It was used devise for authentication.

Feel free to use the demo credentials: user: info@example.com password: example123

You can find the app deployed in the next link: http://chuck.fly.dev/
