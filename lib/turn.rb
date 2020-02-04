def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
index = input.to_i
 index -= 1
  return index
end

def valid_move?(board, index)
  def position_taken?(board, index)
    if board[index] == " " ||  board[index] == "" ||  board[index] == nil
      return false
    else
      return true
    end
  end

  def on_board?(index)
    if index.between?(0, 8) == true
      return true
    else
      return false
    end
  end

  if (position_taken?(board, index)) == false && (on_board?(index) == true)
    return true
  else
    return false
  end
end

def move(board, index, character="X")
   board[index] = character
 end

def turn (board)
 puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
    return true
  else
    return false
    turn(board)
  end
 end
 