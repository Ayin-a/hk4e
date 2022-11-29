local WindFloraPlay ={

[1] = {
	Uid = 0,
	Score = 0,
},

[2] = {
	Uid = 0,
	Score = 0,
},

[3] = {
	Uid = 0,
	Score = 0,
},

[4] = {
	Uid = 0,
	Score = 0,
}

}

local SumScore = 0

-- local defs = {
-- 	area_flower_suites = 2,
-- 	static_flower_suites = {3,4,5},
-- 	area_flower_timer = {2,12,22,32,42,52},
-- 	static_flower_timer = {15,30,45},
-- 	flower_group_id = 235800004,
-- 	start_suite = 2,
-- 	sequence_shoot_time_axis = {1,2,3,4,5,6,7,8,9,10}
-- }

local Tri = {
	{name = "time_axis_pass", config_id = 840001, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
	{name = "gallery_stop", config_id = 840002, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0}
}

function Initialize()
	for i,v in ipairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

	return 0
end

function action_time_axis_pass(context, evt)
	--发射花时间轴
	ScriptLib.PrintContextLog(context, "@@ Require_WARNING : action_time_axis_pass >>> "..evt.source_name)
	if evt.source_name == "area_flower_timer" then
		--开始随机范围发射初始化
		ScriptLib.PrintContextLog(context, "@@ Require_WARNING : LF_Area_Flower >>> Ready")
		LF_Area_Flower(context)
	elseif evt.source_name == "static_flower_timer" then
		--开始固定路径点射List初始化
		ScriptLib.PrintContextLog(context, "@@ Require_WARNING : LF_Static_Flower "..evt.param1.."  >>> Ready")
		LF_Static_Flower(context, evt.param1)
	elseif evt.source_name == "static_sequence_flower" then
		--按照点射序列依次发射
		ScriptLib.PrintContextLog(context, "@@ Require_WARNING : static_sequence_flower_Index "..evt.param1.."  >>> Ready")
		local curren_id = evt.param1
		local sum = ScriptLib.GetGroupVariableValue(context, "seq_sum")
		local seq_suites = ScriptLib.GetGroupVariableValue(context, "seq_suites")
		local suites_index = defs.static_flower_suites[seq_suites]
		if curren_id <= sum then
		        ScriptLib.SetGroupGadgetStateByConfigId(context, 0, suites[suites_index].gadgets[curren_id], GadgetState.GearStart)
		        ScriptLib.PrintContextLog(context, "@@ Require_WARNING : Shoot_Static_Flower_Index >>> "..curren_id)
		else
		        ScriptLib.RemoveExtraGroupSuite(context, defs.flower_group_id, suites_index)
		        ScriptLib.EndTimeAxis(context, "static_sequence_flower")
		        ScriptLib.SetGroupVariableValue(context, "seq_sum", 0)
		end
	end
	return 0
end

function StartGallery( context, prev_context, activeStage )
	-- 开启小游戏玩法

	ScriptLib.AddExtraGroupSuite(context, defs.flower_group_id, defs.start_suite)
	ScriptLib.InitTimeAxis(context, "area_flower_timer", defs.area_flower_timer, false)
	ScriptLib.PrintContextLog(context, "@@ Require_WARNING : InitTimeAxis >>> area_flower_timer")
	ScriptLib.InitTimeAxis(context, "static_flower_timer", defs.static_flower_timer, false)
	ScriptLib.PrintContextLog(context, "@@ Require_WARNING : InitTimeAxis >>> static_flower_timer")

	ScriptLib.InitTimeAxis(context, "BubbleGameTimmer", TimeAxis, false)

	-- 开启gallery
	ScriptLib.StartGallery(context, 6004)

	return 0
end

function AddWindFloraScore( context )
	-- 计算接花总分
	if ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count", context.uid) == 0 then
		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count", context.uid, 1)
	else
		ScriptLib.AddSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count", context.uid, 1)
	end

	if ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count2", context.uid) == 0 then
		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count2", context.uid, 1)
	else
		ScriptLib.AddSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count2", context.uid, 1)
	end

	ScriptLib.PrintContextLog(context, "@@ Require_WARNING : CATCHFLOWER ADD SCORE")
	ScriptLib.UpdatePlayerGalleryScore(context, 6004,{["catch_flower_score"] = Catch_Flower_Score})
	return 0
end

function SubWindFloraScore( context )
	-- 计算接花总分
	ScriptLib.PrintContextLog(context, "@@ Require_WARNING : CATCHFLOWER SUB SCORE")
	ScriptLib.UpdatePlayerGalleryScore(context, 6004,{["catch_flower_score"] = Bomb_Flower_Deduction})

	ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_bombflower", context.uid, 1)

	if ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count", context.uid) ~= 0 then
		if ScriptLib.AddSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count", context.uid, -1) < 0 then
			ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count", context.uid, 0)
		end
	end

	return 0
end

function GalleryWinBonus( context )

	local UidList = ScriptLib.GetSceneUidList(context)

	for i,v in ipairs(UidList) do

		--watcher结算
		ScriptLib.PrintContextLog(context, "@@ Require_WARNING : HUAGUAN NUM "..ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count2", v))
        ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_catch_flora_count", v, ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "catch_flora_count2", v))
        ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_hit_by_bombflower", v, ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_bombflower", v))

		ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, v, WindFlower_Clear_Bonus)

		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "complete_timelimit_challenge_6004", v, WindFlower_Clear_Bonus)
	
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Player Who AddSocre Is -> "..v)
	end

	return 0
end

function GalleryLosePunish( context )

	local UidList = ScriptLib.GetSceneUidList(context)

	for i,v in ipairs(UidList) do

		--watcher结算
        ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_catch_flora_count", v, -1)
        ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_hit_by_bombflower", v, -1)

		ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, v, WindFlower_Failed_Deduction)

		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "defeated_timelimit_challenge_6004", v, WindFlower_Failed_Deduction)
	
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Player Who AddSocre Is -> "..v)
	end

	return 0
end



function action_gallery_stop( context,evt )
	-- 游廊结束时，判断是否超时
	-- 未超时则为接满分数

	for i=2,#suites do
		ScriptLib.RemoveExtraGroupSuite(context, 235800004, i)
	end

	if evt.param2 == 1 then
		GalleryWinBonus( context )
		ScriptLib.ExecuteGroupLua(context, 235800001, "EndPlayStage", {1,235800004})
	else
		GalleryLosePunish( context )
		ScriptLib.ExecuteGroupLua(context, 235800001, "EndPlayStage", {0,235800004})
	end

	return 0
end


function LF_Area_Flower(context)
	--随机发射范围花
	math.randomseed(ScriptLib.GetServerTime(context))
	local WindFloraCreator = suites[defs.area_flower_suites].gadgets
	local randomIdx = math.random(#WindFloraCreator)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, WindFloraCreator[randomIdx], GadgetState.GearStart)
	ScriptLib.PrintContextLog(context, "@@ Require_WARNING : Shoot_Area_Flower >>> "..randomIdx)

	return 0
end

function LF_Static_Flower(context, stage)
	--固定路径发射list准备
	ScriptLib.SetGroupVariableValue(context, "seq_suites", stage)
	local suites_index = defs.static_flower_suites[stage]
	ScriptLib.PrintContextLog(context, "@@ Require_WARNING : suites_index >>>"..suites_index)
	ScriptLib.AddExtraGroupSuite(context, defs.flower_group_id, suites_index)
	local StaticList = suites[suites_index].gadgets
	local sum = 0
	for i,v in ipairs(StaticList) do
		sum = sum + 1
	end
	ScriptLib.PrintContextLog(context, "@@ Require_WARNING : sum >>>"..sum)
	ScriptLib.SetGroupVariableValue(context, "seq_sum", sum)
	ScriptLib.InitTimeAxis(context, "static_sequence_flower", defs.sequence_shoot_time_axis, false)
	ScriptLib.PrintContextLog(context, "@@ Require_WARNING : Init static_sequence_flower !!!")

	return 0
end	


Initialize()

-- function LF_Initialize_Level(context)

-- end

--LF_Initialize_Level()