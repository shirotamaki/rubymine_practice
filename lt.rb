begin
  1/0
rescue => e
puts "エラークラス: #{e.class}"
puts "エラーメッセージ: #{e.message}"
puts "バクトレス------"
puts e.backtrace
puts "--------"
end

def test
  if test == 0
  else

  end
end