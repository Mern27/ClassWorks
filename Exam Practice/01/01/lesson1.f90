subroutine lesson1      ! program to give 10% discount to customers buying more than 2 fruits
    
    real    n_apple     ! declaring the amount of apples involved
    real    n_orange    ! declaring the amount of oranges involved
    
    real    p_apple     ! declaring the price of apples
    real    p_orange    ! declaring the price of oranges
       
    real    n_total     ! declaring the total number of fruits
    real    nodisc      ! declaring the price of the fruits without discount    
    real    wdisc       ! declaring the value after discount
    real    disc        ! declaring the value of discount
    
    p_apple     = 5.60  ! the price of apple
    p_orange    = 4.30  ! the price of orange
    
    print*, "Apples are for $5.60, and Oranges are for $4.30 per one"   ! printing the statement to the buyer
    
    print*, "how many apples would you like to buy?"                    ! asking the user how many apples they would like to buy
    read*, n_apple                                                      ! getting the users' input
    
    print*, "how many oranges would you like to buy?"                   ! asking the user how many oranges they would like to buy
    read*, n_orange                                                     ! getting user imput
    

    n_total = n_apple + n_orange    ! calculating the total number of fruits
    
    if ( n_total .GE. 2 ) then      ! if statement saying that you only get a discount if you're buying 2 or more
        
        print*, "you are eligible for a 10% discount."
        
        nodisc  = (n_apple * p_apple) + (n_orange * p_orange)   ! price without discount
        
        disc    = (0.10 * nodisc)                               ! discount amount
        
        wdisc   = nodisc - disc                                 ! final price 
        
        print*, "Your final price is "
        print*, wdisc                                           ! priniting the amount
        print*
        
    else
        
        nodisc  = (n_apple * p_apple) + (n_orange * p_orange)   ! no discount cause less than 2 fruits
        
        print*, "Your final price is "
        print*, nodisc  
        print*
        
    end if
    
    end