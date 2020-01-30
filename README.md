romaji
======

[![Build Status](https://api.travis-ci.org/AjxLab/romaji.svg?branch=master)](https://travis-ci.org/AjxLab/romaji)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

Utility to convert between katakana and romaji for Ruby.


## Requirement
- Ruby


## Usage
```ruby
require './romaji.rb'

romaji = Romaji.new './romaji.csv'

romaji.to_romaji 'コンニチハ'
# => [["ko"], ["nn"], ["ni"], ["ti", "chi"], ["ha"]]

oooooo
romaji.to_katakana ["ko", "nn", "ni", "chi", "ha"]
# => コンニチハ
```
