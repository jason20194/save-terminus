def over
    require 'tty-font'
    font = TTY::Font.new(:DOOM)
        puts font.write("GAME OVER")
    puts "You have failed to save the world and the Evil king Ganondorf laughs as Terminus ends in doom. Care to try again?"
    continue = gets.chomp
    if continue == "yes"
        puts `clear`
        puts "restarting game"
        puts `clear`
    else
        puts `clear`
        abort    
    end
end