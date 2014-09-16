dofile("QCVar.lua")
os.loadAPI("qc.lua")
--Starting location, middle block of end of last section

turtle.turnLeft()
turtle.forward()
turtle.forward()
turtle.turnRight()

if (NumSect >= 2) then
												            	--Colum 1 - Not added in this program
	turtle.select(SmokedQ)							--Colum 2 - Left Smoked, Send
	for i = 1 , (NumSect - 1) do
		qc.SDBlock()
	end
	qc.ColumR()

	
	turtle.select(NetherQ)							--Colum 3, Left Nether, Return
	for i = 1 , (NumSect - 1) do
		qc.SDBlock()
	end
	qc.ColumL()

	turtle.select(NetherQ) 							--Colum 4, Centre Nether, Send
	for i = 1 , (NumSect - 1) do
		qc.SDBlock()
	end
	qc.ColumR()

	turtle.select(NetherQ)							--Colum 5, Right Nether --Return
	for i = 1 , NumSect do
		qc.SDBlock()
	end
	qc.ColumL()

	turtle.select(SmokedQ)							--Colum 6, Right Smoked --Send
	for i = 1 , (NumSect - 1) do
		qc.SDBlock()
	end
												            	--Colum 7, Not added in this program
	turtle.turnLeft()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.turnRight()						  		--Repositioning for Final Section
end
--
--
--
turtle.select(SmokedQ)								--Colum 2, Left Smoked, Send
qc.SDBlock()
qc.ColumR()

turtle.select(NetherQ)								--Colum 3, - Left Nether, Return
qc.SDBlock()
qc.ColumL()

turtle.select(NetherF)								--Colum 4, - Centre Nether --Send
qc.SDConduit()
qc.ColumR()

turtle.select(NetherF)								--Colum 5, - Right Nether --Return
qc.1Conduit()
turtle.select(NetherB)
qc.SDless1Block()
qc.ColumL()

turtle.select(SmokedQ)								--Colum 6, - Right Smoked --Send
qc.SDless1Block()
turtle.select(SmokedF)
qc.1Conduit()


turtle.turnLeft()						  				--Return to start
turtle.forward()
turtle.forward()
turtle.turnRight()
for i = 1 , NumSect do
	qc.ReturnStart()
end
