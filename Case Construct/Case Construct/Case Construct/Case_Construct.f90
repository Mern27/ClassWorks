Implicit none
    
    character CH
    
    do
        
        read*, CH
        print*, ichar(CH)
        
        if (CH == '@') exit
        
        if (CH >= 'A' .AND. CH <= 'z' .OR. CH >= 'a' .AND. CH <= 'z') then
            
            select case (CH)
                
            case ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u')
                
                Print*, 'Vowel'
                
                case default
                
                print*, 'Consonant'
                
            end select
            
        else
            print*, 'Something else'
        end if
    end do
    end
    