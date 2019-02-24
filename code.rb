def polybius(text)

  row_hash = {
    1 => ["A", "B", "C", "D", "E"],
    2 => ["F", "G", "H", "I", "J", "K"],
    3 => ["L", "M", "N", "O", "P"],
    4 => ["Q", "R", "S", "T", "U"],
    5 => ["V", "W", "X", "Y", "Z"],
    6 => [" "]
    }
    
  col_hash = {
    1 => ["A", "F", "L", "Q", "V"],
    2 => ["B", "G", "M", "R", "W"],
    3 => ["C", "H", "N", "S", "X"],
    4 => ["D", "I", "J", "O", "T", "Y"],
    5 => ["E", "K", "P", "U", "Z"],
    6 => [" "]
   }
  
  text_array = text.upcase.scan(/./)
  #=> "hello there" => ["H", "E", "L", "L", "O", "", "T", "H", "E", "R", "E"]
  
  row_coords = []
  text_array.each do |letter|
    row_hash.each do |row, rvals|
      row_coords<< row if rvals.include?(letter)
    end
  end
  
  col_coords = []
  text_array.each do |letter|
    col_hash.each do |col, cvals|
      col_coords<< col if cvals.include?(letter)
    end
  end
  answer = (row_coords.zip col_coords).flatten.join
  answer.gsub("66"," ")
end
  
