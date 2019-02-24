def polybius(text)
  row_hash = Hash.new
  row_1 = {1 => ["1", "A", "B", "C", "D", "E"]}
  row_2 = {2 => ["2", "F", "G", "H", "I/J", "K"]}
  row_3 = {3 => ["3", "L", "M", "N", "O", "P"]}
  row_4 = {4 => ["4", "Q", "R", "S", "T", "U"]}
  row_5 = {5 => ["5", "V", "W", "X", "Y", "Z"]}
  row_hash[:rows] = [row_1, row_2, row_3, row_4, row_5]
  row_hash
  
  col_hash = Hash.new
  col_1 = {1 => ["1", "A", "F", "L", "Q", "V"]}
  col_2 = {2 => ["2", "B", "G", "M", "R", "W"]}
  col_3 = {3 => ["3", "C", "H", "N", "S", "X"]}
  col_4 = {4 => ["4", "D", "I/J", "O", "T", "Y"]}
  col_5 = {5 => ["5", "E", "K", "P", "U", "Z"]}
  col_hash[:cols] = [col_1, col_2, col_3, col_4, col_5]
  col_hash
  

end
