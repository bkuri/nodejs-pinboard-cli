# node-pinboard-cli
## Use [pinboard.in](https://pinboard.in) from the command line.
### Almost feature complete!


Utilizes the following modules:
  + [chalk](https://github.com/chalk/chalk)
  + [commander](http://tj.github.io/commander.js/)
  + [lodash](https://github.com/lodash/lodash/)
  + [moment](https://github.com/moment/moment/)
  + [node-env-file](https://github.com/grimen/node-env-file)
  + [node-pinboard](https://github.com/maxmechanic/node-pinboard) (forked)
  + [request](https://github.com/request/request)


## Setup:
You must specify a valid pinboard api token to use this tool. You can [find it here](https://pinboard.in/settings/password) after logging in to your pinboard account.

Simply copy the token and paste it as an environment variable with the name `PINBOARD_TOKEN`. In Linux and OSX it looks like this:
```
  export PINBOARD_TOKEN=user:XXXXXXXXXXXXXXXXXXXX
```

You can optionally set environment variables to set the default output format and verbosity like so:
```
  export PINBOARD_FORMAT=json
  export PINBOARD_VERBOSE=true
```

After that you're ready to start using pinboard in the command line! Most commands are available, but more is coming soon (namely tag handling is missing).


## Usage:
```
  Usage: pinboard [options] [command]


  Commands:

    add <url> <desc>  add a bookmark
    all               all the bookmarks in your account
    dates             bookmarks separated by date
    delete <url>      delete a bookmark
    get               get bookmark(s)
    notes [id]        get one/all note(s)
    recent            most recent bookmarks
    secret            your secret feed's RSS key
    suggest <url>     suggest tags
    update            datetime of most recent action
    help [cmd]        display help for [cmd]

  Use pinboard.in from the command line.

  Options:

    -h, --help     output usage information
    -V, --version  output the version number
```
