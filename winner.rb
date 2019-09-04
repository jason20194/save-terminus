def winner
    require 'tty-font'
    font = TTY::Font.new(:DOOM)
    puts font.write("CONGRATULATIONS")
    puts "Congratulations on being Terminus's saviour. I hope you enjoyed this game! Feel free to play again and choose different decisions this time"
end