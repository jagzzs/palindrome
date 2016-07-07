#!/usr/bin/env ruby

app = "palindrome-jagzzs"
exec ("gem uninstall #{app} && gem build palindrome.gemspec && gem install #{app}")
