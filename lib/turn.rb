board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

puts "Welcome to Tic Tac Toe!"
display_board(board)
turn(board)

def turn(board)
  puts "Please enter 1-9:"
end
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
  index.between?(0,8) && !position_taken?(board, index)
end


def position_taken?(board, index)
  board[index] != " "
end
