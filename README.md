# Palindrome Algorithm

Simple algorithm for analyzing if user's input is a palindrome.

A palindrome must be a:
* Text with at least one character
* Text that's is equal to it's reverted version. NOTE: this only applies to
  alphanumeric characters.

### Gem Installation:
    gem install palindrome-jagzzs

### Usage
In terminal, you can run:

    palindrome 'text input'
    palindrome

or

    palindromo 'text input'
    palindromo

if no input is sent, the application will prompt for the user to set an input

Or require it in ruby

    require 'palindrome'

    "example input".palindrome? # returns false

The method palindrome? will analyze the string.

### Executable's exit codes:
    0. Input is a palindrome
    1. Input is a palindrome
