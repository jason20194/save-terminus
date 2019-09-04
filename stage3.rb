module StageThree
    def self.run(health)
        stage = 3

    while health != 0
        play_option = gets.chomp.to_i
        puts `clear`
        puts "Health = #{health}"
        puts "Stage = #{stage}"
        puts "You are in the the cave of ice. You quickly look around and behind you is a giant mutated polar bear who looks like he is about to kill you. Make a Decision!:"
        #options
        puts "1) Throw ice"
        puts "2) Give it food"
        puts "3) Growl"
        puts "4) Play Dead"
        play_option = gets.chomp.to_i
        if  play_option == 1
            puts `clear`
            puts "Health = #{health -= 25}"
            puts "Stage = #{stage}"
            puts "You throw ice at the polar bear. He gets angry and chases you out of the cave. Whilst running for your life you slip over on ice and almost break your legs. You have lost some of your health"
            return health
        elsif
            play_option == 2
            puts `clear`
            puts "Health = 0"
            puts "Stage = #{stage}"
            puts "You give food to the polar bear but after eating the food it is still hungry. It eats you for dinner."
            return health
        elsif
            play_option == 3
            puts `clear`
            puts "Health = #{health -= 50}"
            puts "Stage = #{stage}"
            puts "You growl pretending to be a polar bear. The mutated polar bear growls too and within a few seconds appears its whole family. They all trample over you. You have lost a substancial amount of health!"
            return health
        elsif
            play_option == 4
            puts `clear`
            puts "Health = #{health}"
            puts "Stage = #{stage}"
            puts "You pretend to have been fatally injured and collapse. The polar bear walks away and once you see that he is completely out of your sight, you hurry out of the cave."
            return health
        end
    end
    end
end