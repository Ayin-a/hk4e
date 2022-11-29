--[[======================================

||	filename: TowerDefence_SpecialGears_V3.0

||	owner: chao.cui

||	description: 特殊机关（目前只有光桥）

||	LogName: TD_V3

||	Protection: ???

=======================================]]

--[[

	-- Trigger变量
	local defs = {
		group_id = 245002013,
		challenge_group_id = 245002001,
		close_cd = 5,
		reset_cd = 10,
	}

	-- DEFS_MISCS
	-- 特殊机关
	-- 关卡1光桥专用，且只会放一组
	local specialGears = 
	{
		-- operatorConfigId
		[1001] = {operatorEffectConfigId = 1002, bridgeConfigId = 1003},
	}

--]]

-- 打印日志
function PrintLog(context, content)
	local print = 1
	if print > 0 then 
		local log = "## [TowerDefence_SpecialGears_V3.0] TD_V3: "..content
		ScriptLib.PrintContextLog(context, log)
	end
end

-- 初始化Group
function LF_Initialize_Group(triggers, suites)

	local extraTriggers = 
	{
		{ config_id = 40000001, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0},
		{ config_id = 40000002, name = "GADGET_CREATE", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_GADGET_CREATE", trigger_count = 0 },
		{ config_id = 40000003, name = "SELECT_OPTION", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION", trigger_count = 0},
		{ config_id = 40000004, name = "TIMER_EVENT_001", event = EventType.EVENT_TIMER_EVENT, source = "close", condition = "", action = "action_EVENT_TIMER_EVENT_CLOSE", trigger_count = 0 },
		{ config_id = 40000005, name = "TIMER_EVENT_002", event = EventType.EVENT_TIMER_EVENT, source = "reset", condition = "", action = "action_EVENT_TIMER_EVENT_RESET", trigger_count = 0 },
	}

	for i = 1, #extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers, extraTriggers[i].name)
	end

	-- -- 操作次数
	-- table.insert(variables, {name = "operateTimes", value = 0})
	-- -- 下一个执行Close的Operator
	-- table.insert(variables, {name = "closePointer", value = 0})
	-- -- 下一个执行Reset的Operator
	-- table.insert(variables, {name = "resetPointer", value = 0})

	-- -- 20是个保险数字（操作台数量上限）
	-- for i = 1, 20 do
	-- 	table.insert(variables, {name = "Operator"..i, value = 0})
	-- end

end

function action_EVENT_GROUP_LOAD(context, evt)
	PrintLog(context, "SpecialGears Load.")
	return 0
end

-- 
function action_GADGET_CREATE(context, evt)

	-- 初始化所有操作台（其实只有一个）
	for operatorConfigId, info in pairs(specialGears) do
		if evt.param1 == operatorConfigId then 
			ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, operatorConfigId, {4007})
		end
	end

	return 0
end

-- 使用操作台
function action_EVENT_SELECT_OPTION(context, evt)

	if evt.param2 ~= 4007 then return 0 end

	local operatorConfigId = evt.param1

	-- 记录总次数
	-- local times = ScriptLib.GetGroupVariableValue(context, "operateTimes")
	-- times = times + 1
	-- ScriptLib.SetGroupVariableValue(context, "operateTimes", times)
	-- ScriptLib.SetGroupVariableValue(context, "Operator"..times, operatorConfigId)

	-- 删除操作选项
	ScriptLib.DelWorktopOption(context, 4007)

	-- 操作台激活
	ScriptLib.SetGadgetStateByConfigId(context, operatorConfigId, 201)

	if specialGears[operatorConfigId] == nil then 
		return 0
	end

	-- 光桥
	local bridgeConfigId = specialGears[operatorConfigId].bridgeConfigId
	ScriptLib.SetGadgetStateByConfigId(context, bridgeConfigId, 0)

	-- 特效
	local effectConfigId = specialGears[operatorConfigId].operatorEffectConfigId
	ScriptLib.KillEntityByConfigId(context, {group_id = defs.group_id, config_id = effectConfigId})
	-- ScriptLib.KillEntityByConfigId(context, {defs.group_id, effectConfigId, EntityType.GADGET})

	-- TIMER_CLOSE
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "close", defs.close_cd)
	
	-- TIMER_RESET
	local resetCd = defs.reset_cd
	local card_picked = ScriptLib.GetGroupVariableValueByGroup(context, "CardPicked_GearCoolDown", defs.challenge_group_id)
	if card_picked > 0 then 
		resetCd = resetCd * 0.5
	end
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "reset", resetCd)

	return 0
end

-- 计时器1（改变光桥状态）
function action_EVENT_TIMER_EVENT_CLOSE(context, evt)

	-- local closePointer = ScriptLib.GetGroupVariableValue(context, "closePointer")
	-- closePointer = closePointer + 1
	-- ScriptLib.SetGroupVariableValue(context, "closePointer", closePointer)
	--local operator = ScriptLib.GetGroupVariableValue(context, "Operator"..closePointer)


	local operator = 0
	for operatorConfigId, info in pairs(specialGears) do
		operator = operatorConfigId
	end

	PrintLog(context, "操作台ConfigId: "..operator)

	-- 操作台
	ScriptLib.SetGadgetStateByConfigId(context, operator, 202)

	-- 光桥
	local bridge = specialGears[operator].bridgeConfigId
	ScriptLib.SetGadgetStateByConfigId(context, bridge, 201)

	return 0
end

-- 计时器2（重置操作台）
function action_EVENT_TIMER_EVENT_RESET(context, evt)

	-- local resetPointer = ScriptLib.GetGroupVariableValue(context, "resetPointer")
	-- resetPointer = resetPointer + 1
	-- ScriptLib.SetGroupVariableValue(context, "resetPointer", resetPointer)

	-- local operator = ScriptLib.GetGroupVariableValue(context, "Operator"..resetPointer)

	local operator = 0
	for operatorConfigId, info in pairs(specialGears) do
		operator = operatorConfigId
	end

	PrintLog(context, "操作台ConfigId: "..operator)

	ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, operator, {4007})

	ScriptLib.SetGadgetStateByConfigId(context, operator, 0)

	return 0
end

LF_Initialize_Group(triggers, suites)
