
-- local defs_laser_stages = {
-- 	[1] = {5,6,7,8},
-- 	[2] = {9,10,11,12,13},
-- 	[3] =  {14,15,16,17,18,19}
-- }

-- local defs = { 
-- 	laser_group_id = 235800005,
-- 	hurt_floor_id = 5293,
-- 	active_laser_timer = {5,13,21,27,33,39,43,47,51}
-- }

local Tri = {
	{name = "time_axis_pass", config_id = 850001, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
	{name = "platform_reach_point", config_id = 850002, event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_platform_reach_point", trigger_count = 0},
	{name = "gallery_stop", config_id = 850003, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
	{name = "flower_lifetime", config_id = 850004, event = EventType.EVENT_TIMER_EVENT, source = "flowelifetime", condition = "", action = "action_flower_lifetime", trigger_count = 0},
	{name = "hurt_floor_delay", config_id = 850005, event = EventType.EVENT_TIMER_EVENT, source = "hurtfloordelay", condition = "", action = "action_hurt_floor_delay", trigger_count = 0}
}

local gadget_list = {}

local RandomFloraAxis = {flower_life_time-3,flower_life_time}

function Initialize()
	for i,v in ipairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	return 0
end

function AddWindFloraScore( context )
	-- 计算接花总分

	if ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count_fly", context.uid) == 0 then
		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count_fly", context.uid, 1)
	else
		ScriptLib.AddSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count_fly", context.uid, 1)
	end
	ScriptLib.PrintContextLog(context, "@@ Require_WARNING : CATCHFLOWER ADD SCORE")
	ScriptLib.UpdatePlayerGalleryScore(context, 6002,{["catch_flower_score"] = Catch_Flower_Score})
	return 0
end

function SubWindFloraScore( context )
	-- 计算接花总分
	ScriptLib.PrintContextLog(context, "@@ Require_WARNING : CATCHFLOWER ADD SCORE")
	ScriptLib.UpdatePlayerGalleryScore(context, 6002,{["catch_flower_score"] = 10})

	return 0
end

function StartGallery( context, prev_context, activeStage )
	-- 开启小游戏玩法
	ScriptLib.ShowReminder(context, 358000004)
	--ScriptLib.AddExtraGroupSuite(context, 235800005, 2)
	ScriptLib.SetGroupTempValue(context, "LastWindFlowIndex", 0, {})
	--初始化一个时间轴
	ScriptLib.InitTimeAxis(context, "windflow_timer", wind_force_time_axis, false)

	ScriptLib.CreateGroupTimerEvent(context, 235800005, "hurtfloordelay", hurt_floor_delay)

	ScriptLib.InitTimeAxis(context, "randomFlower_timer", random_flower_time_axis, false)

	-- 开启gallery
	ScriptLib.StartGallery(context, 6002)

	return 0
end


function action_hurt_floor_delay( context,evt )
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.laser_group_id, defs.hurt_floor_id, 201)
	return 0
end

function action_gallery_stop( context,evt )
	-- 游廊结束时，判断是否超时

	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.laser_group_id, defs.hurt_floor_id, 0)

	for i=2,#suites do
		ScriptLib.RemoveExtraGroupSuite(context, 235800005, i)
	end

	if evt.param2 == 1 then
		GalleryWinBonus( context )
		ScriptLib.ExecuteGroupLua(context, 235800001, "EndPlayStage", {1,235800005})
	else
		GalleryLosePunish( context )
		ScriptLib.ExecuteGroupLua(context, 235800001, "EndPlayStage", {0,235800005})
	end

	return 0
end

function GalleryWinBonus( context )

	local UidList = ScriptLib.GetSceneUidList(context)

	for i,v in ipairs(UidList) do

		--watcher结算
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : HUAGUAN NUM -> "..ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "get_random_flora", v) + ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count_fly", v))
        ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_collect_energy_6002", v, ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "get_random_flora", v) + ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count_fly", v))
        ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_hit_by_floor", v, ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_floor", v))

		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "collect_energy_6002", v, 5 * ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "get_random_flora", v))

		ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, v, WindFlower_Flight_Clear_Bonus)

		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "complete_timelimit_challenge_6002", v, WindFlower_Flight_Clear_Bonus)

		--ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_counts_falldown_6002", v, -5 * ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_floor", v))
	
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : GALLERY WIN BONUS UID IS -> "..v)
	end

	return 0
end

function GalleryLosePunish( context )

	local UidList = ScriptLib.GetSceneUidList(context)

	for i,v in ipairs(UidList) do

		--watcher结算
        ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_collect_energy_6002", v, -1)
        ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_hit_by_floor", v, -1)

		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "collect_energy_6002", v, 5 * ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "get_random_flora", v))

		ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, v, WindFlower_Flight_Failed_Deduction)

		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "defeated_timelimit_challenge_6002", v, WindFlower_Flight_Failed_Deduction)

		--ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_counts_falldown_6002", v, -5 * ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_floor", v))
	
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : GALLERY LOSE UID IS-> "..v)
	end

	return 0
end

function RandonWindFlow( context )
	-- 触发随机风场

	local LastWindFlowIndex = ScriptLib.GetGroupTempValue(context, "LastWindFlowIndex", {})

	if LastWindFlowIndex==0 then
		--ScriptLib.KillExtraGroupSuite(context, 0, 2)
	else
		ScriptLib.KillExtraGroupSuite(context, 0, wind_force_suites[LastWindFlowIndex])
	end

	local CurWindFlow = {}

	for i,v in ipairs(wind_force_suites) do
		table.insert(CurWindFlow,v)
	end

	if LastWindFlowIndex ~= 0 then
		table.remove(CurWindFlow,LastWindFlowIndex)
	end

	math.randomseed(ScriptLib.GetServerTime(context))
	randomIdex = math.random(#CurWindFlow)

	ScriptLib.AddExtraGroupSuite(context, 235800005, CurWindFlow[randomIdex])

	if randomIdex >= LastWindFlowIndex and LastWindFlowIndex ~= 0 then
		randomIdex = randomIdex + 1
	end
	ScriptLib.SetGroupTempValue(context, "LastWindFlowIndex",randomIdex, {})

	return 0

end

function action_time_axis_pass(context, evt)

	if evt.source_name == "randomFlower_timer" then
		RandomFlora(context,random_flower_sum.min, random_flower_sum.max)
	elseif evt.source_name == "windflow_timer" then
		RandonWindFlow( context )
	elseif evt.source_name == "flowelifetime" and evt.param1 == 1 then
		--设置风之花闪烁状态
		for i,v in ipairs(suites[flower_suite_index].gadgets) do
			ScriptLib.SetGroupGadgetStateByConfigId(context, 235800005, v, 201)
		end
	elseif evt.source_name == "flowelifetime" and evt.param1 == 2 then
		ScriptLib.KillExtraGroupSuite(context, 235800005, flower_suite_index)
	end

	return 0
end

function RandomFlora( context, minNum, maxNum )
	-- 随机抽取suit中的蓝色风之花创建

	local GadgetList = {}

	for i,v in ipairs(suites[flower_suite_index].gadgets) do
		table.insert(GadgetList,v)
	end

	math.randomseed(ScriptLib.GetServerTime(context))
	randomNum = math.random(minNum, maxNum)

	for i=1,randomNum do
		local randomIndex = math.random(#GadgetList)
		ScriptLib.CreateGadget(context, { config_id = GadgetList[randomIndex] })
	end

	ScriptLib.InitTimeAxis(context, "flowelifetime", RandomFloraAxis, false)

	--ScriptLib.CreateGroupTimerEvent(context, 235800005, "flowelifetime", flower_life_time)

	return 0
end

function action_flower_lifetime( context,evt )
	-- 到达时间后清除场上的风之花
	ScriptLib.KillExtraGroupSuite(context, 235800005, flower_suite_index)

	return 0
end

function action_platform_reach_point(context, evt)
	ScriptLib.KillEntityByConfigId(context, { group_id = defs.laser_group_id, config_id = evt.param1}) 
	-- ScriptLib.PrintContextLog(context, "@@ Require_WARNING : KillEntityByConfigId >>> "..evt.param1)
	return 0
end

-- function PlayStart(context)
-- 	ScriptLib.InitTimeAxis(context, "laser_timer", defs.active_laser_timer, false)
-- end

-- function LF_Initialize_Level(context)

-- end

Initialize()

--LF_Initialize_Level()