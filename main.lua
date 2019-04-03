-----------------------------------------------------------------------------------------
--
-- command line Lua
--
-- show how to use an if statement
--  and random numbers
-- made by Davin Rousseau
--Made on Apr.1st/2019
-----------------------------------------------------------------------------------------
display.setDefault("background", 0, 0, 1)

math.randomseed(9485 )


local answer = display.newImageRect( "assets/Button.png", 60, 60 )
answer.x = 150
answer.y = 250
answer.id = "answer button"

local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 180, 100, 70 )
answerTextField.id = "answer textField"

print( "Pick a number from 1 to 6: " )

function answerTouch(event)

	local answerAsNumber= tonumber(answerTextField.text)

	local numberToGuess = math.random( 1, 6 )
	
	if numberToGuess == answerAsNumber then
	    print( "Correct" .. tostring(numberToGuess) )
	    local correct =  display.newText( "Correct", display.contentCenterX, display.contentCenterY + 150, native.systemFont, 18 )
	    correct: setFillColor  (0,1,0)
	else 
		print("Incorrect" .. tostring(numberToGuess) )
		local incorrect = display.newText( "Incorrect", display.contentCenterX, display.contentCenterY + 150, native.systemFont, 18 )
	    incorrect: setFillColor (1,0,0)
	end
	print("Please try again")
end

print( "Program done." )

answer:addEventListener( 'touch', answerTouch)