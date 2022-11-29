--[[======================================
||	filename:       Activity_BattleMushroomMonster_FungusGroup
||	owner:          chen.chen
||	description:    蕈兽战斗怪物group
||	LogName:        TD
||	Protection:     [Protection]
=======================================]]

global_info=
{
	attackLevel={groupId=247101002,galleryId=28021,max_wave=3},
	defenseLevel={groupId=247102002,galleryId=28022,max_wave=1}
}
-- 打印日志
function PrintLog(context, content)
	local log = "## [Activity_BattleMushroomMonster_FungusGroup] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end

local extraTriggers = 
{
    { config_id = 40000001, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
    { config_id = 40000002, name = "monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE", trigger_count = 0 },
    { config_id = 40000003, name = "monster_alive", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE", trigger_count = 0 },
    { config_id = 40000004, name = "variable_change", event = EventType.EVENT_VARIABLE_CHANGE, source = "AttackUp", condition = "", action = "action_EVENT_VARIABLE_CHANGE", trigger_count = 0 },
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
	table.insert(variables,{ config_id=51000000,name = "AttackUp", value = 0,no_refresh = true})
	table.insert(variables,{ config_id=51000001,name = "FreeUseSkill", value = 0,no_refresh = true})
	table.insert(variables,{ config_id=51000002,name = "RebornGearUsed", value = 0,no_refresh = true})
    return 0
end

--获取gallery_id
function LF_GetGalleryId(context)
	if base_info.group_id==global_info.attackLevel.groupId then
		return global_info.attackLevel.galleryId
	elseif base_info.group_id==global_info.defenseLevel.groupId then
		return global_info.defenseLevel.galleryId
	end
	PrintLog(context, "galleryid获取失败")
	return 0
end

function LF_ResetVariables(context)
	ScriptLib.SetGroupVariableValue(context, "AttackUp",0)
    ScriptLib.SetGroupVariableValue(context, "FreeUseSkill",0)
	ScriptLib.SetGroupVariableValue(context, "RebornGearUsed",0)
	--无脑设
	if defs.reborn_gear ~= nil then
		ScriptLib.SetGadgetStateByConfigId(context, defs.reborn_gear, 0)
	end
	return 0
end

------ Server Lua Call Functions -----------
--怪物cd重置
function SLC_MushroomMonsterAlertRefreshSkill(context)
	PrintLog(context,"蕈兽技能CD重置")
	local beast = ScriptLib.GetMonsterConfigId(context, { monster_eid = context.source_entity_id })
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, beast, "SGV_Fungus_StartBurst_Immediately",0)
	return 0
end
--蕈兽放技能
function SLC_MushroomMonsterAlertDoSkill(context)
	PrintLog(context,"蕈兽开始释放技能")
	if ScriptLib.GetTeamServerGlobalValue(context, context.owner_uid, "SGV_Fungus_Burst_Count")>0 or defs.isFungusQuestGroup==1 then
		local beast = ScriptLib.GetMonsterConfigId(context, { monster_eid = context.source_entity_id })
		local fungusMonsterId=ScriptLib.GetMonsterIdByEntityId(context, context.source_entity_id)
		--埋点
		if defs.isFungusQuestGroup~=1 then
			ScriptLib.MarkGroupLuaAction(context, "FungusFighter_5",ScriptLib.GetGalleryTransaction(context, LF_GetGalleryId(context)) , {["monster_id"] = fungusMonsterId})
		end
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, beast, "SGV_Fungus_StartBurst_Immediately",1)
		--非任务group就通知主流程group处理
		if ScriptLib.GetGroupVariableValue(context, "FreeUseSkill")==0 and defs.isFungusQuestGroup~=1 then
			ScriptLib.ExecuteGroupLua(context, defs.battle_group, "LF_UpdateRestSkillCount", {})
		end
		--任务group就直接扣
		if ScriptLib.GetGroupVariableValue(context, "FreeUseSkill")==0 and defs.isFungusQuestGroup==1 then
			ScriptLib.AddTeamServerGlobalValue(context, context.owner_uid, "SGV_Fungus_Burst_Count", -1)
		end
	end
	return 0
end

------ conditions & actions ------
--group加载
function action_EVENT_GROUP_LOAD(context, evt)
    PrintLog(context, "group load")
	LF_ResetVariables(context)
    return 0
end

function action_EVENT_ANY_MONSTER_DIE(context, evt)
	PrintLog(context, "蕈兽死亡")
	--如果本房间没开过复活机关，开一个
	if ScriptLib.GetGroupVariableValue(context, "RebornGearUsed")==0 then
		local backupFungusList = ScriptLib.GetCurFungusFighterTrainingValidBackupFungusIdList(context)
		if #backupFungusList >0 then
			if defs.reborn_gear ~= nil then
				ScriptLib.SetGadgetStateByConfigId(context, defs.reborn_gear, 201)
			end
		end
		ScriptLib.SetGroupVariableValue(context, "RebornGearUsed",1)
	end
	return 0
end

function action_EVENT_VARIABLE_CHANGE(context, evt)
	local monsterList=ScriptLib.GetGroupAliveMonsterList(context, base_info.group_id)
	for _,v in pairs(monsterList) do
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_Burst_Attack_Up",evt.param1)
	end
	return 0
end

function action_EVENT_ANY_MONSTER_LIVE(context, evt)
	PrintLog(context, "蕈兽创生")
	--无脑设
	if defs.reborn_gear ~= nil then
		ScriptLib.SetGadgetStateByConfigId(context, defs.reborn_gear, 0)
	end
	--看看要不要加攻击
	if ScriptLib.GetGroupVariableValue(context, "AttackUp")==1 then
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, evt.param1, "SGV_Burst_Attack_Up",1)
	end
	return 0
end

LF_Initialize_Level()
