romaji
======

Utility to convert between katakana and romaji for Ruby.


## Requirement
- Ruby


## Usage
```ruby
require './romaji.rb'

romaji = Romaji.new './romaji.csv'

romaji.to_romaji 'コンニチハ'
# => [["ko"], ["nn"], ["ni"], ["ti", "chi"], ["ha"]]

romaji.to_katakana [["ko"], ["nn"], ["ni"], ["ti", "chi"], ["ha"]]
# => コンニチハ
```
