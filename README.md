# docker-jekyll

Install it

    docker pull brigand/jekyll

You can run it like this:

    docker -it --rm -v $PWD:/usr/ws brigand/jekyll jekyll --help

But I always put this in an alias

    alias jekyll='docker -it --rm -v $PWD:/usr/ws brigand/jekyll jekyll '

    # If you're using fish, persist it.  Otherwise put the alias in your shell's profile.
    funcsave jekyll

    jekyll --help

Note: docker has some issues with watch tasks on mounted directories, YMMV.  An external watcher makes more sense.

