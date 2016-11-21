///scr_InitMenu
menuSelected = 1; //To know which menu is selected
menuPage = 0; //Same as above but page

//Main menu
menuText[0,0] = 4; //Amout of options to pick
menuText[0,1] = "Start Game"
menuText[0,2] = "Options"
menuText[0,3] = "Instructions"
menuText[0,4] = "Quit Game"

//End of main menu

//Sub menus
    //Stat Game sub
        menuText[1,0] = 3 //This is the same as above but for "Page 2" submenu for start game
        menuText[1,1] = "Save 1 /Saves not added yet"
        menuText[1,2] = "Save 2 /Just starts game"
        menuText[1,3] = "Back"
        
    //Options sub
        menuText[2,0] = 3 //This is the same as above but for "Page 2" submenu for start game
        menuText[2,1] = "Master Volume"
        menuText[2,2] = "Music Volume"
        menuText[2,3] = "Back"
        
//End of sub menus
