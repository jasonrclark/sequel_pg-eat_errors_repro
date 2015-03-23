To run:

    $ createdb eat_errors_test
    $ sequel -m ./migrations postgres://localhost/eat_errors_test
    $ bundle exec ruby script.rb

Segfault output is in `segfault.log`

Switching to 1.6.10 still gets an error, but not a segfault

Ruby version (in case it's pertinent):

    $ ruby --version
      ruby 2.1.5p273 (2014-11-13 revision 48405) [x86_64-darwin13.0]
