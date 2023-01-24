require './player'
require './question'

player1 = Player.new
player2 = Player.new

player = 1
count = 0

until player1.lives == 0 || player2.lives == 0
  if player == 1 
    if count != 0
    end

    if count == 0 
      puts "-- ROUND 1 -- "
    else
      puts "-- ROUND #{count + 1} -- "
    end
    question = Question.new
    puts "player#{player} | #{question.get_question}"
    print ">> "
    p1Answer = gets.chomp.to_i
    if (question.check_question(p1Answer))
      puts "player#{player} | Correct Answer, Gj. 👌"
      puts "-- LIVES LEFT --"
      puts "P1 : #{player1.lives}/3 || P2 : #{player2.lives}/3"
    else
      player1.lose_life
      puts "player#{player} | Incorrect 😡 *slap*"
      puts "-- LIVES LEFT --"
      puts "P1 : #{player1.lives}/3 || P2 : #{player2.lives}/3"
      if player1.lives == 0
        break
      end
    end
    player = 2
    count += 1
  end

  if player == 2
    if count != 0
    end

    puts "-- ROUND #{count + 1} -- "
    question = Question.new
    puts "player#{player} | #{question.get_question}"
    print ">> "
    p2Answer = gets.chomp.to_i
    if (question.check_question(p2Answer))
      puts "player#{player} | Correct Answer, Nice One. 😎"
      puts "-- LIVES LEFT --"
      puts "P1 : #{player1.lives}/3 || P2 : #{player2.lives}/3"
    else
      player2.lose_life
      puts "player#{player} | -Wrong- 🤖 *zap*"
      puts "-- LIVES LEFT --"
      puts "P1 : #{player1.lives}/3 || P2 : #{player2.lives}/3"
      if player2.lives == 0
        break
      end
    end
    player = 1
    count += 1
  end
end


if player1.lives == 0
  puts "Yikes... might need to brush up mate. 😵‍💫"
  puts "P#{player} LOST #{player1.lives}/3"
  puts "-- GAME OVER --"
end

if player2.lives == 0
  puts "You really gonna let em' beat you like that? 😬"
  puts "P#{player} LOST #{player2.lives}/3"
  puts "-- GAME OVER --"
end