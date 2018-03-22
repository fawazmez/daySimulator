-----------------------------------------------------------------------------------------
--
-- main.Lua
--
-- tells you the day
--
--
-- Created by: Fawaz Mezher
-- Created on: March 2018 
-----------------------------------------------------------------------------------------
local InstructionTextField = display.newText( "type the day of the weekend", display.contentCenterX - 300, display.contentCenterY - 400, native.systemFont, 95 )

local weekendTextField = native.newTextField( display.contentCenterX - 500, display.contentCenterY - 200, 750, 150 )
weekendTextField.id = "weekend textField"

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX +800
calculateButton.y = display.contentCenterY +500
calculateButton.id = "calculate button"
 
 local function calculateButtonTouch( event )
    -- this function calculates the subtotal,tax,and total
 	local weekend

    weekend = weekendTextField.text
    
    if weekendTextField == "saturday" then 
    	display.newText( "it a weekend your smart here a cookie", display.contentCenterX, display.contentCenterY + 200, native.systemFont, 100 )
    elseif weekendTextField == "sunday" then 
    	display.newText( "it a weekend your smart here a cookie", display.contentCenterX, display.contentCenterY + 200, native.systemFont, 100 )	
    else 
    	display.newText( "it weekday have fun at work nerd", display.contentCenterX, display.contentCenterY + 200, native.systemFont, 100 )
     end
end

calculateButton:addEventListener( "touch", calculateButtonTouch )