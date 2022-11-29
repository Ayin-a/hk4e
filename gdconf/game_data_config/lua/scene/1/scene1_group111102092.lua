-- 基础信息
local base_info = {
	group_id = 111102092
}

-- Trigger变量
local defs = {
	gadget_iris = 92001,
	gadget_block = 92002
}

-- DEFS_MISCS
function LF_ChangeIrisStateByBlock (context, block_state)
	--石块在地面关闭神瞳交互
	if 300 == block_state then 
		ScriptLib.SetGroupVariableValue(context, "isActive", 0)
		ScriptLib.InitTimeAxis(context, "blockfalling", {1}, false)
	else -- 否则激活神瞳交互
		ScriptLib.SetGroupVariableValue(context, "isActive", 1)
		ScriptLib.InitTimeAxis(context, "blockRised", {1}, false)
	end
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 92001, gadget_id = 70500000, pos = { x = 1395.819, y = 277.561, z = -1440.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 4014, isOneoff = true, persistent = true, is_enable_interact = false },
	{ config_id = 92002, gadget_id = 70330199, pos = { x = 1395.602, y = 276.598, z = -1440.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.DestroyState }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 石块状态改变
	{ config_id = 1092003, name = "GADGET_STATE_CHANGE_92003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_92003", trigger_count = 0 },
	-- 升起
	{ config_id = 1092004, name = "TIME_AXIS_PASS_92004", event = EventType.EVENT_TIME_AXIS_PASS, source = "blockRised", condition = "", action = "action_EVENT_TIME_AXIS_PASS_92004", trigger_count = 0 },
	-- 初始化
	{ config_id = 1092005, name = "GROUP_LOAD_92005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_92005", trigger_count = 0 },
	-- 降下
	{ config_id = 1092006, name = "TIME_AXIS_PASS_92006", event = EventType.EVENT_TIME_AXIS_PASS, source = "blockfalling", condition = "", action = "action_EVENT_TIME_AXIS_PASS_92006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 92001, 92002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_92003", "TIME_AXIS_PASS_92004", "GROUP_LOAD_92005", "TIME_AXIS_PASS_92006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_92003(context, evt)
	if defs.gadget_block ~= evt.param2 then
		return 0
	end
	LF_ChangeIrisStateByBlock(context,evt.param1)
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_92004(context, evt)
		    ScriptLib.SetGadgetEnableInteract(context, base_info.group_id, defs.gadget_iris, true)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_92005(context, evt)
	if  ScriptLib.CheckIsInGroup(context, base_info.group_id, defs.gadget_iris) ~= true then 
		return -1
	end
	ScriptLib.SetGadgetEnableInteract(context, base_info.group_id, defs.gadget_iris, false)
	ScriptLib.SetGroupVariableValue(context, "isActive", 0)
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_92006(context, evt)
		    ScriptLib.SetGadgetEnableInteract(context, base_info.group_id, defs.gadget_iris, false)
	return 0
end