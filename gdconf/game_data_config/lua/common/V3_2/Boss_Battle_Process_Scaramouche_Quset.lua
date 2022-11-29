--[[======================================
||	filename:       Boss_Battle_Process_Scaramouche_Quest
||	owner:          chen.chen
||	description:    散兵BOSS战流程-任务
||	LogName:        TD
||	Protection:     [Protection]
=======================================]]

local bossMonsterId=
{
	29070101,
	29070102,
	29070103,
	29070104,
	29070105
}

-- 打印日志
function PrintLog(context, content)
	local log = "## [Boss_Battle_Process_Scaramouche_Quest] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end

local extraTriggers = 
{
    { config_id = 40000001, name = "monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE", trigger_count = 0 },
	{ config_id = 40000002, name = "quest_finish", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_EVENT_QUEST_FINISH", trigger_count = 0 },
	{ config_id = 40000003, name = "quest_start", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "action_EVENT_QUEST_START", trigger_count = 0 },
	{ config_id = 40000004, name = "monster_alive", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE", trigger_count = 0 },
	{ config_id = 40000005, name = "time_axis_pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS", trigger_count = 0},
	{ config_id = 40000006, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
}

------ Local Functions -----------
function LF_Initialize_Level()
    --- TRIGGER
	for i, _suite in ipairs(suites) do
		for _, _trigger in pairs(extraTriggers) do
			table.insert(_suite.triggers, _trigger.name)
		end
	end
	for _, _trigger in pairs(extraTriggers) do
		table.insert(triggers, _trigger)
	end
	table.insert(variables,{ config_id=51000000,name = "bossCreated", value = 0, no_refresh = true})
    return 0
end

function LF_IsBossMonster(context,monsterId)
	for k,v in pairs(bossMonsterId) do
		if v==monsterId then
			return true
		end
	end
	return false
end

------ Server Lua Call Functions -----------

function SLC_Scaramouche_All_Avatar_Die(context)
	ScriptLib.AddQuestProgress(context, "302808")
	return 0
end

function SLC_Scaramouche_All_Avatar_Die_Stage01(context)
	ScriptLib.PlayCutScene(context, 201520001, 0)
	ScriptLib.InitTimeAxis(context,"PlayCutScene",{2},false)
	return 0
end

------ conditions & actions ------
--group加载时重置variable
function action_EVENT_GROUP_LOAD(context, evt)
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_music_change })
	ScriptLib.SetGroupVariableValue(context, "bossCreated",0)
	return 0
end


--时间轴触发传送
function action_EVENT_TIME_AXIS_PASS(context, evt)
	if evt.source_name=="PlayCutScene" then
		ScriptLib.AddQuestProgress(context, "302825")
		ScriptLib.RefreshGroup(context, {group_id = base_info.group_id, suite = 2})
		ScriptLib.CreateMonster(context, {config_id=defs.phaseTwoBoss or 0 , delay_time=0})
		
		for k,v in pairs(points) do
			if v.config_id==defs.transTarget then
				ScriptLib.TransPlayerToPos(context, {uid_list = ScriptLib.GetSceneUidList(context), pos = v.pos, radius = 2, rot = v.rot})
				ScriptLib.DelSceneTag(context, 20168, 1201)
				ScriptLib.AddSceneTag(context, 20168 ,1202)
			end
		end
		PrintLog(context, "没找到传送目标点")
		ScriptLib.InitTimeAxis(context,"YAxisCheck",{5},true)
	end

	if evt.source_name=="YAxisCheck" then
		local uidList=ScriptLib.GetSceneUidList(context)
		for a,b in pairs(uidList) do
			local entity=ScriptLib.GetAvatarEntityIdByUid(context, b)
			local pos=ScriptLib.GetPosByEntityId(context, entity)
			if pos.y>= 0 then
				for k,v in pairs(points) do
					if v.config_id==defs.transTarget then
						ScriptLib.TransPlayerToPos(context, {uid_list = {b}, pos = v.pos, radius = 2, rot = v.rot})
					end
				end
			end
		end
	end
	return 0
end

--boss一阶段死亡传到下面去
function action_EVENT_ANY_MONSTER_DIE(context, evt)
	if evt.param1==defs.phaseOneBoss then
		ScriptLib.PlayCutScene(context, 201520001, 0)
		ScriptLib.InitTimeAxis(context,"PlayCutScene",{2},false)
		ScriptLib.SetGroupVariableValue(context, "bossCreated",1)
		return 0
	end
	if evt.param1==defs.phaseThreeBoss then
		ScriptLib.AddQuestProgress(context, "302810")
		return 0
	end
	return 0
end

function action_EVENT_ANY_MONSTER_LIVE(context, evt)
	--进入方法的log
	PrintLog(context, "monster alive:"..evt.param1)
	local monsterEntityId=ScriptLib.GetEntityIdByConfigId(context, evt.param1)
    local monsterId=ScriptLib.GetMonsterIdByEntityId(context, monsterEntityId)
	if LF_IsBossMonster(context,monsterId) then
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, evt.param1, "SGV_MONSTER_NADA", 1)
	end
	return 0
end

function action_EVENT_QUEST_FINISH(context, evt)
	--进入方法的log
	PrintLog(context, "quest finish:"..evt.param1)
	return 0
end

function action_EVENT_QUEST_START(context, evt)
	--进入方法的log
	PrintLog(context, "quest start:"..evt.param1)
	--根据任务ID来决定做什么处理
	--一开始隐藏一阶段boss，听任务的创
	if evt.param1==defs.questBossAppear then
		if ScriptLib.GetGroupVariableValue(context,"bossCreated") == 0 then
			ScriptLib.CreateMonster(context, {config_id=defs.phaseOneBoss or 0 , delay_time=0})
		end
	--团灭桥段时暂时remove二阶段boss
	elseif evt.param1==defs.questAllAvatarDie then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_music_change, 202)
		--ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.MONSTER, defs.phaseTwoBoss)
	--再开流程，把二阶段boss再加回来
	elseif evt.param1==defs.questAvatarRevive then
		ScriptLib.RefreshGroup(context, {group_id = base_info.group_id, suite = 2})
		ScriptLib.CreateMonster(context, {config_id=defs.phaseThreeBoss or 0 , delay_time=0})
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_music_change, 201)
	end
	return 0
end

LF_Initialize_Level()
