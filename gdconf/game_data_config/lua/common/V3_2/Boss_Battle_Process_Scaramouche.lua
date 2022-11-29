--[[======================================
||	filename:       Boss_Battle_Process_Scaramouche
||	owner:          chen.chen
||	description:    散兵BOSS战流程
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
	local log = "## [Boss_Battle_Process_Scaramouche] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end

local extraTriggers = 
{
    { config_id = 40000001, name = "monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE", trigger_count = 0 },
	{ config_id = 40000002, name = "time_axis_pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS", trigger_count = 0},
	{ config_id = 40000003, name = "monster_alive", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE", trigger_count = 0 },
	{ config_id = 40000004, name = "monster_battle", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE", trigger_count = 0 },
	{ config_id = 40000005, name = "enter_region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION", forbid_guest = false,trigger_count = 0 },
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



------ conditions & actions ------
--时间轴触发传送
function action_EVENT_TIME_AXIS_PASS(context, evt)
	if evt.source_name=="PlayCutScene" then
		for k,v in pairs(points) do
			if v.config_id==defs.transTarget then
				ScriptLib.TransPlayerToPos(context, {uid_list = ScriptLib.GetSceneUidList(context), pos = v.pos, radius = 2, rot = v.rot})
				ScriptLib.DelSceneTag(context, 20154, 1179)
				ScriptLib.AddSceneTag(context, 20154 ,1180)
			end
		end
		ScriptLib.InitTimeAxis(context,"YAxisCheck",{5},true)
		PrintLog(context, "没找到传送目标点")
	end
	if evt.source_name=="ShowReminder" then
		local uidList=ScriptLib.GetSceneUidList(context)
		local transUid={}
		for k,v in pairs(uidList) do
			if ScriptLib.IsInRegion(context, v, defs.phaseOneRegion)==false then
				table.insert(transUid,v)
			end
		end	
		for a,b in pairs(points) do
			if b.config_id==defs.bossBattleTransPoint then
				if #transUid>0 then
					ScriptLib.TransPlayerToPos(context, {uid_list = transUid, pos = b.pos, radius = 2, rot = b.rot})
				end	
			end
		end	
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

function action_EVENT_MONSTER_BATTLE(context, evt)
	if evt.param1==defs.phaseOneBoss then
		--起提示
		local uidList=ScriptLib.GetSceneUidList(context)
		for k,v in pairs(uidList) do
			if ScriptLib.IsInRegion(context, v, defs.phaseOneRegion)==false then
				ScriptLib.AssignPlayerShowTemplateReminder(context,214,{param_uid_vec={},param_vec={},uid_vec={v}})
			end
		end	
		--起时间轴
		ScriptLib.InitTimeAxis(context,"ShowReminder",{10},true)
	end
	return 0
end

function action_EVENT_ENTER_REGION(context, evt)
	ScriptLib.RevokePlayerShowTemplateReminder(context, 214, {context.uid})
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

--boss一阶段死亡传到下面去
function action_EVENT_ANY_MONSTER_DIE(context, evt)
	if evt.param1==defs.phaseOneBoss then
		local uidList=ScriptLib.GetSceneUidList(context)
		if #uidList<=1 then
			ScriptLib.PlayCutScene(context, 201520002, 0)
		end
		ScriptLib.InitTimeAxis(context,"PlayCutScene",{2},false)
		--回收一阶段的时间轴
		ScriptLib.EndTimeAxis(context,"ShowReminder")
		--回收所有的reminder
		for k,v in pairs(uidList) do
			ScriptLib.RevokePlayerShowTemplateReminder(context, 214, {v})
		end	
	end
	return 0
end

LF_Initialize_Level()
