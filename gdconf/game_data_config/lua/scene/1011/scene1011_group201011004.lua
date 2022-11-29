-- 基础信息
local base_info = {
	group_id = 201011004
}

-- Trigger变量
local defs = {
	gadget_id_1 = 4,
	gadget_id_2 = 145,
	gadget_id_3 = 146,
	gadget_id_4 = 147,
	gadget_id_5 = 148,
	gadget_id_6 = 149,
	gadget_id_7 = 150
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58, monster_id = 21020101, pos = { x = -13.562, y = 0.500, z = -91.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 59, monster_id = 21010201, pos = { x = -11.702, y = 0.500, z = -87.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 60, monster_id = 21010201, pos = { x = -14.572, y = 0.500, z = -87.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 61, monster_id = 21011001, pos = { x = -9.918, y = 0.500, z = -92.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 62, monster_id = 21020201, pos = { x = -13.955, y = 0.540, z = -81.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 63, monster_id = 22010101, pos = { x = -5.854, y = 0.500, z = -88.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 64, monster_id = 21020101, pos = { x = -20.566, y = 0.500, z = -87.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 65, monster_id = 22010301, pos = { x = -24.448, y = 0.500, z = -90.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 66, monster_id = 21010901, pos = { x = -19.798, y = 0.500, z = -92.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 67, monster_id = 20011501, pos = { x = -8.957, y = 0.500, z = -86.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 68, monster_id = 20011401, pos = { x = -7.107, y = 0.500, z = -87.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 69, monster_id = 20011401, pos = { x = -9.793, y = 0.500, z = -88.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 70, monster_id = 20010601, pos = { x = -19.191, y = 0.500, z = -84.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 71, monster_id = 20010701, pos = { x = -16.105, y = 0.500, z = -86.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 72, monster_id = 20011001, pos = { x = -18.275, y = 0.500, z = -85.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73, monster_id = 20011001, pos = { x = -20.342, y = 0.500, z = -85.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 74, monster_id = 20010901, pos = { x = -6.283, y = 0.500, z = -83.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 75, monster_id = 20011001, pos = { x = -1.867, y = 0.500, z = -84.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 76, monster_id = 20011101, pos = { x = -5.092, y = 0.500, z = -85.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4, gadget_id = 70360002, pos = { x = -20.818, y = 0.500, z = -61.807 }, rot = { x = 0.000, y = 270.134, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000019, name = "GADGET_CREATE_19", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_19", action = "action_EVENT_GADGET_CREATE_19" },
	{ config_id = 1000020, name = "SELECT_OPTION_20", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_20", action = "action_EVENT_SELECT_OPTION_20", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000021, name = "SELECT_OPTION_21", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_21", action = "action_EVENT_SELECT_OPTION_21", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000022, name = "SELECT_OPTION_22", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_22", action = "action_EVENT_SELECT_OPTION_22", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000023, name = "SELECT_OPTION_23", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_23", action = "action_EVENT_SELECT_OPTION_23", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000024, name = "SELECT_OPTION_24", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_24", action = "action_EVENT_SELECT_OPTION_24", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000025, name = "SELECT_OPTION_25", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_25", action = "action_EVENT_SELECT_OPTION_25", trigger_count = 0, forbid_guest = false }
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
		monsters = { 58, 59, 60, 61 },
		gadgets = { 4 },
		regions = { },
		triggers = { "GADGET_CREATE_19", "SELECT_OPTION_20", "SELECT_OPTION_21", "SELECT_OPTION_22", "SELECT_OPTION_23", "SELECT_OPTION_24", "SELECT_OPTION_25" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 62, 63 },
		gadgets = { 4 },
		regions = { },
		triggers = { "GADGET_CREATE_19", "SELECT_OPTION_20", "SELECT_OPTION_21", "SELECT_OPTION_22", "SELECT_OPTION_23", "SELECT_OPTION_24", "SELECT_OPTION_25" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 64, 65, 66 },
		gadgets = { 4 },
		regions = { },
		triggers = { "GADGET_CREATE_19", "SELECT_OPTION_20", "SELECT_OPTION_21", "SELECT_OPTION_22", "SELECT_OPTION_23", "SELECT_OPTION_24", "SELECT_OPTION_25" },
		rand_weight = 0
	},
	{
		-- suite_id = 4,
		-- description = 0,
		monsters = { 67, 68, 69 },
		gadgets = { 4 },
		regions = { },
		triggers = { "GADGET_CREATE_19", "SELECT_OPTION_20", "SELECT_OPTION_21", "SELECT_OPTION_22", "SELECT_OPTION_23", "SELECT_OPTION_24", "SELECT_OPTION_25" },
		rand_weight = 0
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 70, 71, 72, 73 },
		gadgets = { 4 },
		regions = { },
		triggers = { "GADGET_CREATE_19", "SELECT_OPTION_20", "SELECT_OPTION_21", "SELECT_OPTION_22", "SELECT_OPTION_23", "SELECT_OPTION_24", "SELECT_OPTION_25" },
		rand_weight = 0
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 74, 75, 76 },
		gadgets = { 4 },
		regions = { },
		triggers = { "GADGET_CREATE_19", "SELECT_OPTION_20", "SELECT_OPTION_21", "SELECT_OPTION_22", "SELECT_OPTION_23", "SELECT_OPTION_24", "SELECT_OPTION_25" },
		rand_weight = 0
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_19(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_19(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {145,146,147,148,149,150}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_20(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_20(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_2 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, suite = 1 }) then
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
function condition_EVENT_SELECT_OPTION_21(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_21(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_3 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, suite = 2 }) then
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
function condition_EVENT_SELECT_OPTION_22(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_22(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_4 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, suite = 3 }) then
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
function condition_EVENT_SELECT_OPTION_23(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_23(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_5 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, suite = 4 }) then
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
function condition_EVENT_SELECT_OPTION_24(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_24(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_6 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, suite = 5 }) then
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
function condition_EVENT_SELECT_OPTION_25(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_25(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_7 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, suite = 6 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end