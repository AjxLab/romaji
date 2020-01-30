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


b_correct = true
text.each do |arr|
  hiragana = romaji.to_katakana(arr[2], to_hiragana: true)

  # 変換に失敗した場合
  if hiragana != arr[1].strip
    puts "失敗：「#{arr[1].strip}」 -- 「#{hiragana}」"
    b_correct = false
  end
end

if b_correct
  puts "Successful passing all cases!"
else
  raise "Did not pass.."
end
