-- 基础信息
local base_info = {
	group_id = 201011002
}

-- Trigger变量
local defs = {
	gadget_id_1 = 2,
	gadget_id_2 = 135,
	gadget_id_3 = 136,
	gadget_id_4 = 137,
	gadget_id_5 = 138
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21, monster_id = 21030301, pos = { x = 57.912, y = 0.500, z = -95.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 22, monster_id = 21010201, pos = { x = 61.062, y = 0.500, z = -91.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23, monster_id = 21010201, pos = { x = 56.126, y = 0.500, z = -92.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 24, monster_id = 21010401, pos = { x = 55.455, y = 0.500, z = -95.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25, monster_id = 21030101, pos = { x = 49.052, y = 0.500, z = -94.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 26, monster_id = 21010301, pos = { x = 51.089, y = 0.500, z = -91.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 27, monster_id = 21010301, pos = { x = 48.608, y = 0.500, z = -91.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28, monster_id = 21010901, pos = { x = 45.889, y = 0.500, z = -94.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 29, monster_id = 21030201, pos = { x = 71.403, y = 0.500, z = -95.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30, monster_id = 21010201, pos = { x = 73.416, y = 0.500, z = -92.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 31, monster_id = 21010201, pos = { x = 68.602, y = 0.500, z = -91.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32, monster_id = 21010501, pos = { x = 68.118, y = 0.500, z = -95.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33, monster_id = 21030301, pos = { x = 59.521, y = 0.500, z = -94.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34, monster_id = 21010901, pos = { x = 72.086, y = 0.500, z = -94.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 35, monster_id = 21010301, pos = { x = 63.029, y = 0.500, z = -88.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36, monster_id = 21010301, pos = { x = 54.168, y = 0.500, z = -89.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2, gadget_id = 70360002, pos = { x = 52.155, y = 0.500, z = -62.055 }, rot = { x = 0.000, y = 165.182, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000007, name = "GADGET_CREATE_7", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7", action = "action_EVENT_GADGET_CREATE_7" },
	{ config_id = 1000008, name = "SELECT_OPTION_8", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8", action = "action_EVENT_SELECT_OPTION_8", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000009, name = "SELECT_OPTION_9", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9", action = "action_EVENT_SELECT_OPTION_9", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000010, name = "SELECT_OPTION_10", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10", action = "action_EVENT_SELECT_OPTION_10", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000011, name = "SELECT_OPTION_11", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11", action = "action_EVENT_SELECT_OPTION_11", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
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
	rand_suite = true
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
		monsters = { 21, 22, 23, 24 },
		gadgets = { 2 },
		regions = { },
		triggers = { "GADGET_CREATE_7", "SELECT_OPTION_8", "SELECT_OPTION_9", "SELECT_OPTION_10", "SELECT_OPTION_11" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 25, 26, 27, 28 },
		gadgets = { 2 },
		regions = { },
		triggers = { "GADGET_CREATE_7", "SELECT_OPTION_8", "SELECT_OPTION_9", "SELECT_OPTION_10", "SELECT_OPTION_11" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 29, 30, 31, 32 },
		gadgets = { 2 },
		regions = { },
		triggers = { "GADGET_CREATE_7", "SELECT_OPTION_8", "SELECT_OPTION_9", "SELECT_OPTION_10", "SELECT_OPTION_11" },
		rand_weight = 0
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 33, 34, 35, 36 },
		gadgets = { 2 },
		regions = { },
		triggers = { "GADGET_CREATE_7", "SELECT_OPTION_8", "SELECT_OPTION_9", "SELECT_OPTION_10", "SELECT_OPTION_11" },
		rand_weight = 0
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_7(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {135,136,137,138}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_8(context, evt)
	-- 判断是gadgetid 2
	if 2 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_8(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_2 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, suite = 1 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9(context, evt)
	-- 判断是gadgetid 2
	if 2 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_3 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, suite = 2 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10(context, evt)
	-- 判断是gadgetid 2
	if 2 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_4 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, suite = 3 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11(context, evt)
	-- 判断是gadgetid 2
	if 2 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_5 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, suite = 4 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end