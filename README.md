# Twitter Plays Pokemon

Little implementation similar to twitch plays pokemon implemented using JRuby to use Robot.

![gif]()

## How to install everything

You need to get Java, then install jruby, if you are using rvm you can do:

```
rvm install jruby
rvm use jruby
```

Then `gem install bundler` and `bundle install`.

After you have all the dependencies in place run:

```
cp env.sample env
```

and add your credentials and the hashtag that you want to use to process the controls


then just run:

```
ruby pokemon.rb
```