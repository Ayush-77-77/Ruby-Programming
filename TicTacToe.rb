def play_game(board)

  p "|  |  |  |"
  p "|  |  |  |"
  p "|  |  |  |"
  
  play(board)
end

def play(a)
  
  (1..9).each do |chance|

      if chance%2!=0
          # print "odd loop"
        user1=gets.to_i
          if(user1==1)
            a[2][0] = 'x'
          end
          if(user1==2)
            a[2][1] = 'x'
          end
          if(user1==3)
            a[2][2] = 'x'
          end
          if(user1==4)
            a[1][0] = 'x'
          end
          if(user1==5)
            a[1][1] = 'x'
          end
          if(user1==6)
            a[1][2] = 'x'
          end 
          if(user1==7)
            a[0][0] = 'x'
          end 
          if(user1==8)
            a[0][1] = 'x'
          end
          if(user1==9)
            a[0][2] = 'x'
          end

      else
        #  print "even loop"
        user2=gets.to_i
        if(user2==1)
          a[2][0] = 'o'
        end
        if(user2==2)
          a[2][1] = 'o'
        end
        if(user2==3)
          a[2][2] = 'o'
        end
        if(user2==4)
          a[1][0] = 'o'
        end
        if(user2==5)
          a[1][1] = 'o'
        end
        if(user2==6)
          a[1][2] = 'o'
        end
        if(user2==7 )
          a[0][0] = 'o'
        end
        if(user2==8)
          a[0][1] = 'o'
        end
        if(user2==9)
          a[0][2] = 'o'
        end
      end
  end
    (0...a.length).each do |i|
      (0...(a[i].length)).each do |j|
        print a[i][j] + "   "
      end
      puts
    end

end


 
 
    # user1 =gets
    # user2=gets
    
    # if(position==1 && position ==0)
    #   a[2][0]
    # end
    # if(position==2 && position ==0)
    #   a[2][1]
    # end
    # if(position==3 && position ==0)
    #   a[2][2]
    # end
    # if(position==4)
    #   a[1][0]
    # end
    # if(position==5 && position ==0)
    #   a[1][1]
    # end
    # if(position==6 && position ==0)
    #   a[1][2]
    # end
    # if(position==7 && position ==0)
    #   a[0][0]
    # end
    # if(position==8 && position ==0)
    #   a[0][1]
    # end
    # if(position==9 && position ==0)
    #   a[0][2]
    # end
 


board = Array.new(3) { Array.new(3) { 0 } }
play_game(board)


# print board[2][0]