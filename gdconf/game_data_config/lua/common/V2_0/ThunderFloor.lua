--自定义函数部分
local extrTriggers = {
	initialtrigger = {
		["Enter_Region"] = { config_id = 8000001, name = "Enter_Region", event= EventType.EVENT_ENTER_REGION, source = "1", condition = "", action = "player_in_region", trigger_count = 0, forbid_guest = false },
		["Random_Floor"] = { config_id = 8000002, name = "Random_Floor", event= EventType.EVENT_TIME_AXIS_PASS, source = "triggerThunderFloor", condition = "", action = "action_timeaxis_randomfloor", trigger_count = 0 },
	}
}


function DeduplicationRandom( context, configIDList, randomNum )
	math.randomseed(ScriptLib.GetServerTime(context))

	local TempList = {}

	local ReturnList = {}

	for i,v in ipairs(configIDList) do
		table.insert(TempList, v)
	end

	for i=1,randomNum do
		local TempNum = math.random(#TempList)

		table.insert(ReturnList, TempList[TempNum] )

		table.remove(TempList, TempNum)
	end

	ScriptLib.PrintContextLog(context, "##TF LOG : return random lsit")


	return ReturnList
end





function player_in_region( context, evt )
	-- 监听玩法开始

	if evt.param1 ~= EnterConfigID then
		return 0
	end

	ScriptLib.PrintContextLog(context, "##TF LOG : player in region")

	ScriptLib.InitTimeAxis(context, "triggerThunderFloor", thunderFloorTimer, true)


	math.randomseed(ScriptLib.GetServerTime(context))
	local randomNum = math.random(randomNumMin, randomNumMax)

	local CurList = DeduplicationRandom(context, floorList, randomNum)

	for i,v in ipairs(CurList) do

		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 201)

	end



		-- ScriptLib.EndTimeAxis(context, "triggerThunderFloor")

		-- for i,v in ipairs(floorList) do

		-- 	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 0)

		-- end

	return 0

end


function action_timeaxis_randomfloor( context, evt )
	-- 每次随机一套地板
	if randomNumMax > #floorList then

		ScriptLib.PrintContextLog(context, "##TF LOG : randomNumMax is bigger than Listlength")
		return 0

	elseif randomNumMin > randomNumMax then

		ScriptLib.PrintContextLog(context, "##TF LOG : randomNumMin is bigger than randomNumMax")
		return 0
	end

	for i,v in ipairs(floorList) do

		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 0)

	end

	math.randomseed(ScriptLib.GetServerTime(context))
	local randomNum = math.random(randomNumMin, randomNumMax)

	local CurList = DeduplicationRandom(context, floorList, randomNum)

	for i,v in ipairs(CurList) do

		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 201)

	end

	return 0
end



function LF_Initialize_Group(triggers, suites)
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

	return 0
end

LF_Initialize_Group(triggers, suites)