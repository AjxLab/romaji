# -*- coding: utf-8 -*-

require 'csv'
require './romaji.rb'

romaji = Romaji.new('./romaji.csv')
text = CSV.read('./test/text.csv')
text.shift

# ローマ字に変換
text.map! do |arr|
  romaji_arr = romaji.to_romaji arr[1]
  romaji_arr.map! { |a| a[0]  }
  # [plain text, hiragana, romaji]
  [*arr, romaji_arr]
end

text.each do |arr|
  hiragana = romaji.to_katakana(arr[2], to_hiragana: true)
  p hiragana
end
