module StageThree
    def self.run(health)
        stage = 3
    while health != 0
        play_option = gets.chomp.to_i
        puts `clear`
        puts "Health = #{health}"
        puts "Stage = #{stage}"
        puts "You arrive at Hyrule Castle, where the evil king resides. Whilst walking inside, you notice many guards patrolling the area. To your astonishment, there is a maze infront of you. There are many directions to take but you must choose one. Choose a direction by typing in the number:"
        #options
        puts "1) Straight"
        puts "2) Turn Left"
        puts "3) Turn Right"
        puts "4) Fight the guards"
        play_option = gets.chomp.to_i
        if  play_option == 1
            puts `clear`
            puts "Health = #{health -= 25}"
            puts "Stage = #{stage}"
            puts "You decide to go straight ahead. As you walk straight ahead, you luckily encounter no guards but you get stabbed by a needle on the ground as you are nearing the entrance to the evil kings lair. You have lost some health."
            return health
        elsif
            play_option == 2
            puts `clear`
            puts "Health = 0"
            health = 0
            puts "Stage = #{stage}"
            puts "You turn left. As you are about to make it to the end a guard catches you. You get locked up for eternity until the evil king is ready to deal with you."
            return health
        elsif
            play_option == 3
            puts `clear`
            puts "Health = 0"
            health = 0
            puts "Stage = #{stage}"
            puts "You decide to take the right turn. However you didnt even walk longer than 2 metres before a guard stops you and calls the other guards. They all surround you. You get taken and locked up."
            return health
        elsif
            play_option == 4
            puts `clear`
            puts "Health = 0"
            health = 0
            puts "Stage = #{stage}"
            puts "You decide to go with the saying no guts no glory. As you lunge towards a guard a trap from underneath activates, pulling you inside. The last thing that was heard is your scream as you fall 100 feet underneath the ground to your death."
            return health
        end
    end
    end
end