def polybius(text)

  row_hash = {
    1 => ["A", "B", "C", "D", "E"],
    2 => ["F", "G", "H", "I", "J", "K"],
    3 => ["L", "M", "N", "O", "P"],
    4 => ["Q", "R", "S", "T", "U"],
    5 => ["V", "W", "X", "Y", "Z"]
    }
    
  col_hash = {
    1 => ["A", "F", "L", "Q", "V"],
    2 => ["B", "G", "M", "R", "W"],
    3 => ["C", "H", "N", "S", "X"],
    4 => ["D", "I", "J", "O", "T", "Y"],
    5 => ["E", "K", "P", "U", "Z"]
   }
  
  array = text.scan(/./)
  #=> ["c", "o", "d", "e", "w", "a", "r", "s"]
  
  answer = []
  array.each do |letter|
    row_hash.each do |row, vals|
      if vals.include?(letter)
        answer<< row
      end
    end
  end
  
   array.each do |letter|
    col_hash.each do |col, vals|
      if vals.include?(letter)
        answer<< col
      end
    end
  end
  
  answer.join
end
