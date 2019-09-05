require 'tty-font'
require_relative 'save_terminus'

# def winner
#     font = TTY::Font.new(:DOOM)
#     puts font.write("CONGRATULATIONS")
#     puts "Congratulations on being Terminus's saviour. I hope you enjoyed this game! Feel free to play again and choose different decisions this time. Type ok to return to the main menu."
#     ok = gets.chomp
#     if ok == 'ok'
#         puts "restarting game. Press enter to continue."
#         main_menu(prompt, health)
#     else
#         puts `clear`
#         abort    
#     end
# end

def winner
    prompt = TTY::Prompt.new
    health = "#{health}"
    font = TTY::Font.new(:DOOM)
    puts font.write("CONGRATULATIONS")
    puts "Congratulations on being Terminus's saviour. I hope you enjoyed this game! Feel free to play again and choose different decisions this time. Type ok to return to the main menu."
    ok = gets.chomp
    if ok == "ok"
        puts `clear`
        main_menu(prompt, health)
    else
        puts `clear`
        abort    
    end
end