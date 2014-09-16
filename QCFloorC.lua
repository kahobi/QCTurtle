dofile("QCVar.lua")



--Starting location, middle block of end of last section

turtle.turnLeft()
turtle.forward()
turtle.forward()
turtle.turnRight()

turtle.select(SmokedQ)
for i = 1 , NumSect do						--Colum 2 - Left smoked, Send
	for i = 1 , SectDim do
		turtle.forward()
		turtle.placeDown()
	end
end
turtle.forward()
turtle.turnRight()
turtle.forward()
turtle.turnRight()


turtle.select(NetherQ)
for i =1 , NumSect do							--Colum 3, - Left Nether, Return
	for i = 1 , SectDim do
		turtle.forward()
		turtle.placeDown()
	end
end
turtle.forward()
turtle.turnLeft()
turtle.forward()
turtle.turnLeft()


for i = 1 , NumSect do 						--Colum 4, - Centre Nether --Send
	for i = 1 , SectDim do
		turtle.select(NetherF)
		turtle.forward()
		turtle.placeDown()
		if MENetwork then
			turtle.select(IOMECon)
			turtle.placeDown()
		end
		if EnNetwork then
			turtle.select(IOEnCon)
			turtle.placeDown()
		end
	end
end
turtle.forward()
turtle.turnRight()
turtle.forward()
turtle.turnRight()

turtle.select(NetherQ)
if (NumSect > = 2) then
	for i = 1 , (NumSect - 1) do						--Colum 5, - Right Nether --Return
		for i = 1 , SectDim do
			turtle.forward()
			turtle.placeDown()
		end
	end
end
turtle.select(NetherF)
turtle.forward()
turtle.placeDown()
if MENetwork then
	turtle.select(IOMECon)
	turtle.placeDown()
end
if EnNetwork then
	turtle.select(IOEnCon)
	turtle.placeDown()
end
turtle.select(NetherQ)
for i = 1 , (SectDim-1)  do
	turtle.forward()
	turtle.placeDown()
end
turtle.forward()
turtle.turnLeft()
turtle.forward()
turtle.turnLeft()

turtle.select(SmokedQ)
if (NumSect > = 2) then
	for i = 1 , (NumSect - 1) do								--Colum 6, - Right Smoked --Send
		for i = 1 , SectDim do
			turtle.forward()
			turtle.placeDown()
		end
	end
end
for i = 1 , (SectDim-1) do
	turtle.forward()
	turtle.placeDown()
end
turtle.select(SmokedF)
turtle.forward()
turtle.placeDown()
	if MENetwork then
		turtle.select(IOMECon)
		turtle.placeDown()
	end
	if EnNetwork then
		turtle.select(IOEnCon)
		turtle.placeDown()
	end
turtle.turnLeft()												--Return to start
turtle.forward()
turtle.forward()
turtle.turnRight()

for i = 1 , NumSect do
	for i = 1 , SectDim do
	turtle.back()
	end
end
