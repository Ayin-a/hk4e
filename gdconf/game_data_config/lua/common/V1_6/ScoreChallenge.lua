-- local ProgressTable = {0,10,100}
-- local GalleryID = 0
-- -- local SubScoreTimeAxis = {1}
-- local GroupID = 144004004

--misc

--自定义函数部分
local extrTriggers = {
	initialtrigger = {
		["Start_Gallery"] = { config_id = 8000001, name = "Start_Gallery", event= EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_whern_gallery_start", trigger_count = 0 },
		--["GadgetSate_Change"] = { config_id = 8000002, name = "GadgetSate_Change", event= EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadgetstate_change", trigger_count = 0 },
		["Progress_Pass"] = { config_id = 8000003, name = "Progress_Pass", event= EventType.EVENT_GALLERY_PROGRESS_PASS, source = "", condition = "", action = "action_progress_pass", trigger_count = 0 },
		["TimeAxis_Event"] = { config_id = 8000004, name = "TimeAxis_Event", event= EventType.EVENT_TIME_AXIS_PASS, source = "SubScoreTimeAxis", condition = "", action = "action_trigger_timeaxis", trigger_count = 0 },
		["Monster_Die"] = { config_id = 8000005, name = "Monster_Die", event= EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_monster_die", trigger_count = 0 },
		--["Const_Target"] = { config_id = 8000006, name = "Const_Target", event= EventType.EVENT_TIME_AXIS_PASS, source = "consttarget", condition = "", action = "action_timeaxis_consttarget", trigger_count = 0 },
		["Random_Target"] = { config_id = 8000007, name = "Random_Target", event= EventType.EVENT_TIME_AXIS_PASS, source = "randomtarget", condition = "", action = "action_timeaxis_randomtarget", trigger_count = 0 },
		--["Gadget_Die"] = { config_id = 8000006, name = "Gadget_Die", event= EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_gadget_die", trigger_count = 0 },
		["Stop_Gallery"] = { config_id = 8000008, name = "Stop_Gallery", event= EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_whern_gallery_stop", trigger_count = 0 },
		["Group_Unload"] = {name = "Group_Unload", config_id = 8000009, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},
		["Small_Region"] = { config_id = 9000001, name = "Small_Region", event= EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "player_in_optimizationRegion", trigger_count = 0, forbid_guest = false },
		["Big_Region"] = { config_id = 9000002, name = "Big_Region", event= EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "player_leave_optimizationRegion", trigger_count = 0, forbid_guest = false },
	}
}

local extrSuites = {
	{
		monsters = { },
		gadgets = { },
		regions = {smallRegion, bigRegion },
		triggers = { "Small_Region","Big_Region"},
		rand_weight = 100
	}
}

--自定义函数部分

function MonsterAddScore(context)
	-- 杀怪进度
	ScriptLib.AddGalleryProgressScore(context, "ScoreProgress", GalleryID, 10)
	--杀怪加分
	ScriptLib.UpdatePlayerGalleryScore(context, GalleryID, {["monster_id"]=70350175, ["target_id"]=0})

	return 0
end


function TargetAddScore(context)

	local UidList = ScriptLib.GetSceneUidList(context)
	-- 杀靶标进度
	ScriptLib.AddGalleryProgressScore(context, "ScoreProgress", GalleryID, GadgetTargetScore)
	--杀靶标加分
	ScriptLib.PrintContextLog(context, "##SC LOG : uid == "..UidList[1])
	ScriptLib.UpdatePlayerGalleryScore(context, GalleryID, {["uid"] = UidList[1], ["monster_id"]=0, ["target_id"]= 70350253})

	return 0
end

function DeduplicationRandom( context, configIDList, randomNum )
	math.randomseed(ScriptLib.GetServerTime(context))

	local TempList = {}

	for i,v in ipairs(configIDList) do
		table.insert(TempList, v)
	end

	for i=1,randomNum do
		local TempNum = math.random(#TempList)

		ScriptLib.CreateGadget(context, { config_id = TempList[TempNum] })

		table.remove(TempList, TempNum)
	end

	ScriptLib.ShowReminder(context, 600038)

	return 0
end


--Event调用部分

function player_leave_optimizationRegion( context, evt )

	ScriptLib.PrintContextLog(context, "##BD LOG : optimization Stop~~~~~ regionID == "..evt.param1)

	if evt.param1 ~= bigRegion then
		return 0
	end

	--优化结束

	ScriptLib.PrintContextLog(context, "##BD LOG : optimization Stop!!!!!!!! uid == "..context.uid)

	ScriptLib.ClearPlayerEyePoint(context, smallRegion)
	ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
	ScriptLib.SetLimitOptimization(context, context.uid, false)
	ScriptLib.SetGroupTempValue(context, "optimize_"..context.uid, 0, { group_id = 144002077})

	return 0
end

function player_in_optimizationRegion( context, evt )

	if evt.param1 ~= smallRegion then
		return 0
	end

	ScriptLib.PrintContextLog(context, "##BD LOG : optimization Start uid == "..context.uid)

	--优化部分
	ScriptLib.SetPlayerEyePoint(context, smallRegion, bigRegion)
	ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0})
	ScriptLib.SetLimitOptimization(context, context.uid, true)
	ScriptLib.SetGroupTempValue(context, "optimize_"..context.uid, 1, { group_id = 144002077})

	return 0
end


function action_timeaxis_randomtarget( context,evt )
	math.randomseed(ScriptLib.GetServerTime(context))

	local TargetConfigID = RandomTargetConfigID[math.random(#RandomTargetConfigID)]

	ScriptLib.PrintContextLog(context, "##SC LOG : random target configID == "..TargetConfigID)

	ScriptLib.ShowReminder(context, 600038)

	ScriptLib.CreateGadget(context, { config_id = TargetConfigID })

	return 0
end

function action_timeaxis_consttarget( context,evt )
	math.randomseed(ScriptLib.GetServerTime(context))

	local TempList = {}

	for i,v in ipairs(ConstTargetConfigID) do
		table.insert(TempList, v)
	end

	for i=1,2 do
		local TempNum = math.random(#TempList)

		ScriptLib.CreateGadget(context, { config_id = TempList[TempNum] })

		table.remove(TempList, TempNum)
	end

	return 0
end

function action_monster_die( context,evt  )
	-- body
	local UidList = ScriptLib.GetSceneUidList(context)

	ScriptLib.PrintContextLog(context, "##SC LOG : monster entityID == "..evt.source_eid)

	local MonsterID = ScriptLib.GetMonsterIdByEntityId(context, evt.source_eid)

	ScriptLib.PrintContextLog(context, "##SC LOG : monsterID == "..MonsterID)

	-- 杀怪进度
	local MonsterScore = 0
	for i,v in ipairs(MonsterTargetScore) do
		if v.monsterID == MonsterID then
			MonsterScore = v.score
			break
		end
	end

	ScriptLib.AddGalleryProgressScore(context, "ScoreProgress", GalleryID, MonsterScore)
	--杀怪加分

	ScriptLib.PrintContextLog(context, "##SC LOG : uid == "..UidList[1])
	ScriptLib.UpdatePlayerGalleryScore(context, GalleryID, {["uid"] = UidList[1], ["monster_id"] = MonsterID, ["target_id"]=0})

	return 0

end

function action_gadget_die( context,evt  )
	-- body
	local UidList = ScriptLib.GetSceneUidList(context)

	ScriptLib.PrintContextLog(context, "##SC LOG : gadget entityID == "..evt.source_eid)

	-- 杀怪进度
	ScriptLib.AddGalleryProgressScore(context, "ScoreProgress", GalleryID, 10)
	--杀怪加分
	ScriptLib.PrintContextLog(context, "##SC LOG : uid == "..UidList[1])
	ScriptLib.UpdatePlayerGalleryScore(context, GalleryID, {["uid"] = UidList[1], ["monster_id"]=0, ["target_id"]= ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid)})

	return 0
end


function action_whern_gallery_start( context,evt )
	ScriptLib.PrintContextLog(context, "##SC LOG : Gallery Start")

	math.randomseed(ScriptLib.GetServerTime(context))

	--优化suite开启
	ScriptLib.AddExtraGroupSuite(context, GroupID, #suites)

	--初始化扣分数值
	ScriptLib.SetGroupTempValue(context, "SubNum", PerSecondSubScore[1], {})

	--初始化两个靶标时间轴
	--ScriptLib.InitTimeAxis(context, "consttarget", ConstTimeAxis, true)
	ScriptLib.InitTimeAxis(context, "randomtarget", RandomTimeAxis[math.random(#RandomTimeAxis)], true)

	--初始化一个热度条
	ScriptLib.InitGalleryProgressScore(context, "ScoreProgress", GalleryID, ProgressTable, GalleryProgressScoreUIType.GALLERY_PROGRESS_SCORE_UI_TYPE_BUOYANT_COMBAT)
	

	ScriptLib.AttachGalleryAbilityGroup(context, {}, GalleryID, 0)
	if GalleryID == 8002 then
		ScriptLib.SetGroupTempValue(context, "_phase", 0, {})
		local uid_list = ScriptLib.GetSceneUidList(context)
		ScriptLib.SetTeamEntityGlobalFloatValue(context, uid_list, "BuoyantCombat_Water_Level", 0.5)
	end
	--初始化一个定时器扣分
	ScriptLib.InitTimeAxis(context, "SubScoreTimeAxis", SubScoreTimeAxis, true)

	return 0
end

function action_whern_gallery_stop( context, evt )
	if GalleryID == 8002 then
		ScriptLib.SetGroupTempValue(context, "_phase", 0, {})
		local uid_list = ScriptLib.GetSceneUidList(context)
		ScriptLib.SetTeamEntityGlobalFloatValue(context, uid_list, "BuoyantCombat_Water_Level", 0.5)
	end
	--优化suite卸载
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.REGION, bigRegion)

	ScriptLib.EndTimeAxis(context, "randomtarget")
	ScriptLib.EndTimeAxis(context, "SubScoreTimeAxis")

	ScriptLib.RefreshGroup(context, { group_id = GroupID, suite = 1 })

	return 0
end

function action_group_will_unload( context, evt )

	ScriptLib.PrintContextLog(context, "##SC LOG : optimization Group will unload")

	--优化suite卸载
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.REGION, bigRegion)

	ScriptLib.StopGallery(context, GalleryID, false)

	return 0
end

function action_gadgetstate_change( context,evt )
	-- if evt.param2 ~= TestEnterConfigID or evt.param1 ~= 201 then
	-- 	return 0
	-- end
	-- ScriptLib.PrintContextLog(context, "##SC LOG : GadgetState Change GameStart")

	-- --GM手段进入玩法
	-- ScriptLib.StartGallery(context, GalleryID)

	return 0
end

function action_progress_pass( context,evt )
	-- 阶段变更后
	local LastPhase = evt.param3+1
	local CurPhase = evt.param1+1

	ScriptLib.PrintContextLog(context, "##SC LOG : param1 =="..evt.param1.."param3 =="..evt.param3)

	if CurPhase > #PerSecondSubScore then
		CurPhase = #PerSecondSubScore
	end

	ScriptLib.SetGroupTempValue(context, "SubNum", PerSecondSubScore[CurPhase], {})

	--水元素有bug,换一种新的做法,不替换abilityGroup,直接改GlobalValue
	if GalleryID ~= 8002 then
		if evt.param2 == 1 then
			--阶段上升
			for i= LastPhase+1, CurPhase do
				ScriptLib.AttachGalleryAbilityGroup(context, {}, GalleryID, i-1)
			end
			ScriptLib.ShowReminder(context, 600034+CurPhase-1)
		else
			--阶段下降
			for i= LastPhase-1, CurPhase do
				ScriptLib.DelGalleryAbilityGroup(context, {}, GalleryID, i)
			end
		end
	elseif GalleryID == 8002 then
		ScriptLib.SetGroupTempValue(context, "_phase", evt.param1, {})
		local ratio = 0.5
		ScriptLib.PrintContextLog(context, "##SC LOG : Gallery is 8002")
		if evt.param1 == 1 then
			ratio = 1
		elseif evt.param1 == 2 then
			ratio = 2
		elseif evt.param1 == 3 then
			ratio = 4.5
		end
		local uid_list = ScriptLib.GetSceneUidList(context)
		ScriptLib.SetTeamEntityGlobalFloatValue(context, uid_list, "BuoyantCombat_Water_Level", ratio)
	end

	return 0
end


function action_trigger_timeaxis( context,evt )
	-- 扣分
	local SubNum = ScriptLib.GetGroupTempValue(context, "SubNum", {})

	ScriptLib.AddGalleryProgressScore(context, "ScoreProgress", GalleryID, SubNum)
	return 0
end


function LF_Initialize_Group(triggers, suites)
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

	for i,v in ipairs(extrSuites) do
		table.insert(suites, v)
	end
	return 0
end

--水元素断线重连有风险，要slc辅助恢复
function SLC_Recover_BuoyantCombat_Water_Level(context)
	local _p = ScriptLib.GetGroupTempValue(context, "_phase", {})
	local ratio = 0.5
	ScriptLib.PrintContextLog(context, "##SC LOG : SLC_Recover_BuoyantCombat_Water_Level | phase = ".._p)
	if _p == 1 then
		ratio = 1
	elseif _p == 2 then
		ratio = 2
	elseif _p == 3 then
		ratio = 4.5
	end
	ScriptLib.SetTeamEntityGlobalFloatValue(context, {context.uid}, "BuoyantCombat_Water_Level", ratio)
	return 0
end



LF_Initialize_Group(triggers, suites)