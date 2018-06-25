# code your #valid_move? method here
def valid_move(board, index)
  #is index valid?
#if index.between?(0,8)
#  if position_taken?(board, index)
  #  false
#  else
#    true
#  end

index.between?(0,8) && !position_taken?(board, index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  board[index] != " "
end



def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9"
  input = gets.strip

  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index, "0")
  end

  display_board(board)
end
