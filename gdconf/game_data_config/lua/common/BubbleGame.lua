
local extrTriggers = {
	initialtrigger = {
		--["Group_Load"] = { config_id = 8000001, name = "Group_Load", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_on_group_load", trigger_count = 0 },
		["TimeAxis_Event"] = { config_id = 6000001, name = "TimeAxis_Event", event= EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_trigger_timeacis", trigger_count = 0 },
		["Gallery_Stop"] = {name = "gallery_stop", config_id = 6000002, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
		--["Open_Door"] = {name = "open_door", config_id = 6000003, event = EventType.EVENT_TIMER_EVENT, source = "opendoordelay", condition = "", action = "action_open_door_delay", trigger_count = 0},
		["Player_Destination"] = { config_id = 6000004, name = "player_destination", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_player_destination", action = "action_player_destination", forbid_guest = false, trigger_count = 0 },
		["Rrandom_Flora1"] = { config_id = 6000005, name = "random_flora1", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_random_flora1", action = "action_random_flora1", forbid_guest = false },
		["Rrandom_Flora2"] = { config_id = 6000006, name = "random_flora2", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_random_flora2", action = "action_random_flora2", forbid_guest = false },
		["Rrandom_Flora3"] = { config_id = 6000007, name = "random_flora3", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_random_flora3", action = "action_random_flora3", forbid_guest = false },
		["Rrandom_Flora4"] = { config_id = 6000008, name = "random_flora4", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_random_flora4", action = "action_random_flora4", forbid_guest = false }

	}
}

local openDoorAxis = {5, 8, bubble_delay_sec, 17}

-- function action_on_group_load( context, evt )
-- 	-- 初始化计数变量
-- 	ScriptLib.SetGroupTempValue(context, "Times", 1, {})
-- 	ScriptLib.SetGroupTempValue(context, "BubbleSequence", 1, {})
-- end


function StartGallery( context, prev_context, activeStage )
	-- 开启小游戏玩法

	ScriptLib.AddExtraGroupSuite(context, BubbleGroupID, 2)

	if BubbleStep[activeStage].BubbleSpSuite ~=0 then
		ScriptLib.PrintContextLog(context, "Extra BubbleSpSuite Is ->"..BubbleStep[activeStage].BubbleSpSuite)
		ScriptLib.AddExtraGroupSuite(context, BubbleGroupID, BubbleStep[activeStage].BubbleSpSuite)
	end

	ScriptLib.SetGroupTempValue(context, "Times", 1, {})
	ScriptLib.SetGroupTempValue(context, "BubbleSequence", 1, {})
	ScriptLib.SetGroupTempValue(context, "Player_In_Des", 0, {})

	ScriptLib.SetGroupTempValue(context, "activeStage", activeStage, {})
	--初始化一个时间轴
	ScriptLib.PrintContextLog(context, "BubbleGame Start")

	--延时开门
	ScriptLib.InitTimeAxis(context, "opendoordelay", openDoorAxis, false)
	ScriptLib.ShowReminder(context, 358000001)

	ScriptLib.InitTimeAxis(context, "BubbleGameTimmer", TimeAxis, false)

	-- 开启gallery
	ScriptLib.StartGallery(context, galleryID)

	return 0
end

function condition_random_flora1( context,evt )
	if evt.param1 ~= flower_region_id[1] then return false end

	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end

	return true
end

function condition_random_flora2( context,evt )
	if evt.param1 ~= flower_region_id[2] then return false end

	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end

	return true
end

function condition_random_flora3( context,evt )
	if evt.param1 ~= flower_region_id[3] then return false end

	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end

	return true
end

function condition_random_flora4( context,evt )
	if evt.param1 ~= flower_region_id[4] then return false end

	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end

	return true
end

function condition_player_destination( context,evt )
	if evt.param1 ~= RegionID then return false end

	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end

	return true
end

function action_random_flora1( context,evt)

	local GadgetList = {}

	for i,v in ipairs(suites[flower_suite_index[1]].gadgets) do
		table.insert(GadgetList,v)
	end

	RandomFlora(context,random_flower_sum.min, random_flower_sum.max, GadgetList)

	return 1
end

function action_random_flora2( context,evt)

	local GadgetList = {}

	for i,v in ipairs(suites[flower_suite_index[2]].gadgets) do
		table.insert(GadgetList,v)
	end

	RandomFlora(context,random_flower_sum.min, random_flower_sum.max, GadgetList)

	return 1

end

function action_random_flora3( context,evt)

	local GadgetList = {}

	for i,v in ipairs(suites[flower_suite_index[3]].gadgets) do
		table.insert(GadgetList,v)
	end

	RandomFlora(context,random_flower_sum.min, random_flower_sum.max, GadgetList)

	return 1

end

function action_random_flora4( context,evt)

	local GadgetList = {}

	for i,v in ipairs(suites[flower_suite_index[4]].gadgets) do
		table.insert(GadgetList,v)
	end

	RandomFlora(context,random_flower_sum.min, random_flower_sum.max, GadgetList)

	return 1

end


function RandomFlora( context, minNum, maxNum, GadgetList )
	-- 随机抽取suit中的蓝色风之花创建

	math.randomseed(ScriptLib.GetServerTime(context))
	randomNum = math.random(minNum, maxNum)

	for i=1,randomNum do
		local configIndex = math.random(#GadgetList)
		ScriptLib.CreateGadget(context, { config_id = GadgetList[configIndex] })
		table.remove(GadgetList,configIndex)
	end

	return 0
end

function action_player_destination( context,evt)

	if ScriptLib.GetGroupTempValue(context, "Player_In_Des"..context.uid, {}) == 1 then
		return 0
	end

	local GameStartTime = ScriptLib.GetGroupTempValue(context, "GameStartTime", {})

	ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "get_destination_bubblegame", context.uid, ScriptLib.GetServerTime(context) - GameStartTime)

	ScriptLib.PrintContextLog(context, "##WINDFLORA_LOG: PLAYER GET DESTINATION UID IS->"..context.uid)

	ScriptLib.ChangeGroupTempValue(context, "Player_In_Des", 1, {})
	ScriptLib.SetGroupTempValue(context, "Player_In_Des"..context.uid, 1, {})

	local Player_In_Des = ScriptLib.GetGroupTempValue(context, "Player_In_Des", {})

	local UidList = ScriptLib.GetSceneUidList(context)

	if Player_In_Des >= #UidList then
		ScriptLib.StopGallery(context, galleryID, false)
	else
		ScriptLib.FinishFleurFairGalleryStageByUid(context, 235800001, 1, context.uid, false)
	end

	return 0
end

function action_open_door_delay( context,evt )
	
end


function action_gallery_stop( context,evt )
	-- 游廊结束时，判断是否超时

	ScriptLib.PrintContextLog(context, "BubbleGame Stop!!!!!")

	for i=2,#suites do
		ScriptLib.RemoveExtraGroupSuite(context, BubbleGroupID, i)
	end

	Achivment(context)

	if evt.param2 == 0 then
		ScriptLib.ExecuteGroupLua(context, 235800001, "EndPlayStage", {0,BubbleGroupID})
	else
		ScriptLib.ExecuteGroupLua(context, 235800001, "EndPlayStage", {1,BubbleGroupID})
	end

	return 0
end

function Achivment( context )
	--根据玩家行为进行结算
	local UidList = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(UidList) do

		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, collect_energy, v, 5 * ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "get_random_flora", v))

		if ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "get_destination_bubblegame", v) > 0 then

			ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "get_destination_bubblegame", v, ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "get_destination_bubblegame", v))
			ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, v, Bubble_TimeScore)
			ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, complete_timelimit_challenge, v, Bubble_TimeScore )

			ScriptLib.PrintContextLog(context, "##WINDFLORA_LOG: PLAYER GET DESTINATION ENERGY UID IS->"..v)
			
			--watcher结算
            ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_hit_by_bubble", v, ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_bubble", v))

			if ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_bubble", v) == 0 then

				ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, perfect_complete_timelimit_challenge, v, Bubble_PerfectScore )
				ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, v, Bubble_PerfectScore)
			end
		else
			--watcher结算
            ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_hit_by_bubble", v, -1)

			--未完成挑战强行设置泡泡命中参数
			ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_bubble", v, -1)
			ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "get_destination_bubblegame", v, 100)

			ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, v, Bubble_TimeOutScore)  
			ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, defeated_timelimit_challenge, v, Bubble_TimeOutScore )
		end
	end

	return 0
end

function action_trigger_timeacis( context, evt)
	-- 触发泡泡发射
	local activeStage = ScriptLib.GetGroupTempValue(context, "activeStage", {})

	if evt.source_name == "opendoordelay" and evt.param1 == 1 then
		ScriptLib.ShowReminder(context, 358000002)
	elseif evt.source_name == "opendoordelay" and evt.param1 == 2 then
		ScriptLib.ShowReminder(context, 358000003)
	elseif evt.source_name == "opendoordelay" and evt.param1 == 3 then
		ScriptLib.SetGroupTempValue(context, "GameStartTime", ScriptLib.GetServerTime(context), {})

		ScriptLib.SetGroupGadgetStateByConfigId(context, BubbleGroupID, BubbleWallID, 201)

	elseif evt.source_name == "opendoordelay" and evt.param1 == 4 and BubbleStep[activeStage].BubbleSpSuite ==21 then
		ScriptLib.ShowReminder(context, 358000012)
	elseif evt.source_name == "opendoordelay" and evt.param1 == 4 and BubbleStep[activeStage].BubbleSpSuite ~=21 then
		ScriptLib.ShowReminder(context, 358000011)
	end


	if evt.source_name == "BubbleGameTimmer" then

		local bubbleWeightList = BubbleStep[activeStage].list

		RandomBubbleNum(context,bubbleWeightList)
	end

	-- if evt.param1%3 == 0 then
	-- 	RandomFlora(context,random_flower_sum.min, random_flower_sum.max)
	-- end

	return 0
end


function RandomBubbleNum(context,bubbleWeightList)
	math.randomseed(ScriptLib.GetServerTime(context))

	local Times = ScriptLib.GetGroupTempValue(context, "Times", {})

	--ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Time Is -> "..Times)

	randomWeight = math.random(100)
	local CurNum = 0

	for i,v in ipairs(bubbleWeightList[Times]) do
		if v.weight >= randomWeight then
			CurNum = v.Num
			break
		end
		randomWeight = randomWeight - v.weight
	end

	ScriptLib.ChangeGroupTempValue(context, "Times", 1, {})
	Times = ScriptLib.GetGroupTempValue(context, "Times", {})


	if Times > #bubbleWeightList then
		ScriptLib.SetGroupTempValue(context, "Times", 1, {})
	end

	--ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Bubble Num Is -> "..CurNum)
	RandomBubbleCP(context,CurNum)

	return 0
end

function RandomBubbleCP(context, Num)
	math.randomseed(ScriptLib.GetServerTime(context))

	local BubbleSequence = ScriptLib.GetGroupTempValue(context, "BubbleSequence", {})

	--ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : BubbleSequence Is -> "..BubbleSequence)

	local TempBubbles = {}

	for i,v in ipairs(Bubbles) do
		table.insert(TempBubbles,v)
	end

	
	for i=1,Num do
		randomIndex = math.random(#TempBubbles)

		ScriptLib.SetGroupGadgetStateByConfigId(context, BubbleGroupID, TempBubbles[randomIndex], 901)


		--ScriptLib.CreateGadget(context, { config_id = TempBubbles[randomIndex] })

		--ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Bubble ConfigID Is -> "..TempBubbles[randomIndex])
		table.remove(TempBubbles, randomIndex)
	end

	ScriptLib.ChangeGroupTempValue(context, "BubbleSequence", 1, {})
	BubbleSequence = ScriptLib.GetGroupTempValue(context, "BubbleSequence", {})

	-- if BubbleSequence > #Bubbles then
	-- 	ScriptLib.SetGroupTempValue(context, "BubbleSequence", 1, {})
	-- end

	return 0
end

function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	return 0
end

LF_Initialize_Group()
