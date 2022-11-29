function BubblePlatform(context)

	math.randomseed(ScriptLib.GetServerTime(context))

	local WindFloraCreator = { [1] =2035, [2] =2036, [3] =2037,}
	local WindFloraCreatorDev = 0
	local randomNum = math.random(1,100)
	
	--WindFloraCreatorDev = ScriptLib.GetGroupVariableValueByGroup(context, "WindFloraNum", 250041002) * 3 	
 	WindFloraCreatorDev = ScriptLib.GetGroupVariableValue(context, "WindFloraNum") * 3 	

	ScriptLib.PrintContextLog(context, "##001 WindFloraCreatorDev = "..WindFloraCreatorDev)

	--ScriptLib.ChangeGroupVariableValueByGroup(context, "WindFloraNum", 1, 250041002)	
	ScriptLib.ChangeGroupVariableValue(context, "WindFloraNum", 1)

	if WindFloraCreatorDev <= 30 then
		WindFloraCreator[1] = WindFloraCreator[1] + WindFloraCreatorDev
		WindFloraCreator[2] = WindFloraCreator[2] + WindFloraCreatorDev
		WindFloraCreator[3] = WindFloraCreator[3] + WindFloraCreatorDev
	end

	--WindFloraCreatorDev = ScriptLib.GetGroupVariableValueByGroup(context, "WindFloraNum", 250041002)
	WindFloraCreatorDev = ScriptLib.GetGroupVariableValue(context, "WindFloraNum")
	ScriptLib.PrintContextLog(context, "##001 WindFloraCreatorDev = "..WindFloraCreatorDev)

	if randomNum<30 then
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[1] })
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[2] })
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[3] })		
	elseif randomNum<40 then
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[1] })
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[2] })
	elseif randomNum<50 then
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[1] })
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[3] })
	elseif randomNum<60 then
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[2] })
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[3] })
	elseif randomNum<70 then
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[1] })
	elseif randomNum<80 then
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[2] })
	elseif randomNum<90 then
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[3] })
	else
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[1] })
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[3] })
	end


	--[[if (bit.band(randomNum, 1) > 0) then
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[1] })
		ScriptLib.StartPlatform(context, WindFloraCreator[1])
	--end

	--if (bit.band(randomNum, 2) > 0) then
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[2] })
		ScriptLib.StartPlatform(context, WindFloraCreator[2])
	--end

	--if (bit.band(randomNum, 4) > 0) then
		ScriptLib.CreateGadget(context, { config_id = WindFloraCreator[3] })
		ScriptLib.StartPlatform(context, WindFloraCreator[3])
	--end]]


end	
