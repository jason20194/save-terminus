module StageTwo
    def self.run(health)
        stage = 2

    while health != 0
        play_option = gets.chomp.to_i
        puts `clear`
        puts "Health = #{health}"
        puts "Stage = #{stage}"
        puts "You arrive at the second stage which looks to be a place full of mirrors. The Gohma awaits. You can see its eyes glowing. Suddenly it launches a laserbeam at you. You must avoid this laserbeam or else its game over! Make a move:"
        #options
        puts "1) Move left"
        puts "2) Move right"
        puts "3) Use shield"
        puts "4) Duck downwards"
        play_option = gets.chomp.to_i
        if  play_option == 1
            puts `clear`
            puts "Health = 0"
            health = 0
            puts "Stage = #{stage}"
            puts "You move towards the left direction. However, little did you know that on the mirrors on the left reflect the Gohmas laserbeams. The laserbeam reflects from the leftside and hits you directly, killing you."
            return health
        elsif
            play_option == 2
            puts `clear`
            puts "Health = #{health -= 25}"
            puts "Stage = #{stage}"
            puts "You move towards the right direction. Luckily for you, the mirror on the right side appears to be cracked so it stops the laserbeam from reflecting at you. However you have taken some damage from the laserbeam from barely missing your face."
            return health
        elsif
            play_option == 3
            puts `clear`
            puts "Health = 0"
            health = 0
            puts "You decide that the smart way to dodge the laserbeam is to hide behind your shield. However, little did you know your shield was made to protect you from only melee attacks. The laserbeam pierces through your shield and you die a very painful death."
            return health
        elsif
            play_option == 4
            puts `clear`
            puts "Health = 0"
            health = 0
            puts "Stage = #{stage}"
            puts "You try to duck down to avoid the laserbeam. However as it passes you it comes right back, since the mirrors reflect the laserbeams. The last thing you think about before suddenly falling to your demise is how easy that attack was to avoid. Spoke too soon didnt you?." 
            return health
        end
    end
    end
end