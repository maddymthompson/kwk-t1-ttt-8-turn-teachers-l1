def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i-1
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
index = "INVALID"

  until valid_move?(board, index)
    puts "Please enter 1-9"
    input = gets.strip

  index = input_to_index(input)
  end

  if valid_move?(board, index)
    move(board, index, "0")
  end
  display_board(board)
end


def valid_move?(board, index)
  index.is.a?(Integer) && index.between?(0,8) && !position_taken?(board, index)
end


def position_taken?(board, index)
  board[index] != " "
end
