-- 基础信息
local base_info = {
	group_id = 201011045
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
	{ config_id = 176, monster_id = 21030301, pos = { x = 420.470, y = 0.641, z = 44.716 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 177, monster_id = 21010301, pos = { x = 416.956, y = 0.641, z = 52.582 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 178, monster_id = 21010201, pos = { x = 416.638, y = 0.641, z = 48.552 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 179, monster_id = 21010501, pos = { x = 421.387, y = 0.641, z = 55.760 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 180, monster_id = 21030101, pos = { x = 470.979, y = 0.641, z = 51.830 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 181, monster_id = 21010701, pos = { x = 465.947, y = 0.641, z = 45.393 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 182, monster_id = 21010701, pos = { x = 465.680, y = 0.641, z = 49.069 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 183, monster_id = 21010901, pos = { x = 470.146, y = 0.641, z = 41.456 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 184, monster_id = 21030201, pos = { x = 519.138, y = 0.641, z = 41.770 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 185, monster_id = 21010701, pos = { x = 515.042, y = 0.641, z = 45.304 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 186, monster_id = 21010701, pos = { x = 515.306, y = 0.641, z = 49.206 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 187, monster_id = 21010501, pos = { x = 519.120, y = 0.641, z = 52.244 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 188, monster_id = 21030301, pos = { x = 567.528, y = 0.641, z = 41.346 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 189, monster_id = 21030101, pos = { x = 568.093, y = 0.641, z = 52.768 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 190, monster_id = 21010701, pos = { x = 563.188, y = 0.641, z = 49.296 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 191, monster_id = 21010701, pos = { x = 563.437, y = 0.641, z = 44.972 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 268, gadget_id = 70360002, pos = { x = 122.802, y = 0.500, z = 68.255 }, rot = { x = 0.000, y = 165.182, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000125, name = "GADGET_CREATE_125", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_125", action = "action_EVENT_GADGET_CREATE_125" },
	{ config_id = 1000126, name = "SELECT_OPTION_126", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_126", action = "action_EVENT_SELECT_OPTION_126", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000127, name = "SELECT_OPTION_127", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_127", action = "action_EVENT_SELECT_OPTION_127", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000128, name = "SELECT_OPTION_128", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_128", action = "action_EVENT_SELECT_OPTION_128", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000129, name = "SELECT_OPTION_129", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_129", action = "action_EVENT_SELECT_OPTION_129", trigger_count = 0, forbid_guest = false }
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
		monsters = { 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_CREATE_125", "SELECT_OPTION_126", "SELECT_OPTION_127", "SELECT_OPTION_128", "SELECT_OPTION_129" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 180, 181, 182, 183 },
		gadgets = { 268 },
		regions = { },
		triggers = { "GADGET_CREATE_125", "SELECT_OPTION_126", "SELECT_OPTION_127", "SELECT_OPTION_128", "SELECT_OPTION_129" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 184, 185, 186, 187 },
		gadgets = { 268 },
		regions = { },
		triggers = { "GADGET_CREATE_125", "SELECT_OPTION_126", "SELECT_OPTION_127", "SELECT_OPTION_128", "SELECT_OPTION_129" },
		rand_weight = 0
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 188, 189, 190, 191 },
		gadgets = { 268 },
		regions = { },
		triggers = { "GADGET_CREATE_125", "SELECT_OPTION_126", "SELECT_OPTION_127", "SELECT_OPTION_128", "SELECT_OPTION_129" },
		rand_weight = 0
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_125(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_125(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {135,136,137,138}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_126(context, evt)
	-- 判断是gadgetid 2
	if 2 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_126(context, evt)
	
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
function condition_EVENT_SELECT_OPTION_127(context, evt)
	-- 判断是gadgetid 2
	if 2 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_127(context, evt)
	
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
function condition_EVENT_SELECT_OPTION_128(context, evt)
	-- 判断是gadgetid 2
	if 2 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_128(context, evt)
	
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
function condition_EVENT_SELECT_OPTION_129(context, evt)
	-- 判断是gadgetid 2
	if 2 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_129(context, evt)
	
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