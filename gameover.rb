def over
    require 'tty-font'
    font = TTY::Font.new(:DOOM)
        puts font.write("GAME OVER")
    puts "You have failed to save the world and the Evil king laughs as the world ends. Care to try again?"
    continue = gets.chomp
    if continue = "yes"
        puts `clear`
        puts "restarting game"
    end
end