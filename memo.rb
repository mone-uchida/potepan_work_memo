require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.to_s.chomp
if memo_type == "1"
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.to_s.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したらCrrl+Dを押してください"
  memo_content = readlines.map(&:chomp)
  CSV.open("#{file_name}.csv","w", :encoding => "utf-8") do |csv|
    csv << memo_content
    end
elsif memo_type == "2"
  puts "編集したいメモから拡張子を除いたファイル名を入力してください"
  file_name = gets.to_s.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したらCrrl+Dを押してください"
  memo_content = readlines.map(&:chomp)
  CSV.open("#{file_name}.csv","a")do |csv|
  csv << memo_content
  end
else
  puts "入力された数字が正しくありません"
end
