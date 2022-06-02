require "csv"
 
  puts "1(新規でメモを作成) 2(既存のメモ編集する)"
  
  memo_type = gets.to_i
  
  if memo_type == 1
  puts "新規でメモを作成します"
  puts "拡張子を抜いたファイル名を入力してください"
  
  file_name = gets.to_s
  puts "入力ありがとうございます感謝いたします"
  puts "それではメモ内容を入力してください"
  puts "※cont︎rol+Dで終了"
  
  CSV.open("#{file_name}.csv","w") do |csv|
    csv << [$stdin.read.chomp]
  end
  
  elsif memo_type == 2
  puts "既存のメモ編集をします"
  puts "拡張子を抜いた既存のファイル名を入力してください"
  
  file_name =gets.to_s
  puts "それではメモ内容を入力してください"
  puts "※cont︎rol+Dで終了"
  
  CSV.open("#{file_name}.csv","a") do |csv|
    csv << [$stdin.read.chomp]
  end
  else
  puts "数字が正しくありません"
  end
  
  

  