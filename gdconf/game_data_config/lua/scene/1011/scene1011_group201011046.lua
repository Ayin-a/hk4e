-- 基础信息
local base_info = {
	group_id = 201011046
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
	{ config_id = 192, monster_id = 21020101, pos = { x = 617.195, y = 0.641, z = 47.455 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 193, monster_id = 21010301, pos = { x = 612.611, y = 0.641, z = 52.107 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 194, monster_id = 21010601, pos = { x = 612.528, y = 0.641, z = 48.015 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 195, monster_id = 21010601, pos = { x = 617.138, y = 0.641, z = 51.322 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 196, monster_id = 21020201, pos = { x = 652.783, y = 0.633, z = 98.090 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 197, monster_id = 22010101, pos = { x = 609.544, y = 0.633, z = 94.500 }, rot = { x = 0.000, y = 108.934, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 199, monster_id = 22010301, pos = { x = 558.979, y = 0.633, z = 98.214 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 201, monster_id = 20011501, pos = { x = 662.044, y = 0.641, z = 50.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 202, monster_id = 20011401, pos = { x = 663.893, y = 0.641, z = 49.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 203, monster_id = 20011401, pos = { x = 661.208, y = 0.641, z = 48.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 204, monster_id = 20010601, pos = { x = 707.417, y = 0.641, z = 51.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 205, monster_id = 20010701, pos = { x = 710.686, y = 0.641, z = 48.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 207, monster_id = 20011301, pos = { x = 714.243, y = 0.633, z = 102.958 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 208, monster_id = 20010601, pos = { x = 712.338, y = 0.633, z = 97.316 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 209, monster_id = 20010601, pos = { x = 716.007, y = 0.633, z = 98.627 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 210, monster_id = 20011301, pos = { x = 711.338, y = 0.633, z = 100.099 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 211, monster_id = 20011401, pos = { x = 660.315, y = 0.641, z = 52.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 212, monster_id = 20011401, pos = { x = 663.663, y = 0.641, z = 52.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 213, monster_id = 20010501, pos = { x = 710.243, y = 0.641, z = 51.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 214, monster_id = 20010501, pos = { x = 707.585, y = 0.641, z = 48.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 215, monster_id = 21020101, pos = { x = 652.992, y = 0.633, z = 103.938 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 216, monster_id = 21030201, pos = { x = 611.113, y = 0.633, z = 108.128 }, rot = { x = 0.000, y = 108.934, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 217, monster_id = 21010301, pos = { x = 614.020, y = 0.633, z = 100.788 }, rot = { x = 0.000, y = 108.934, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 218, monster_id = 21010301, pos = { x = 613.851, y = 0.633, z = 104.189 }, rot = { x = 0.000, y = 108.934, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 219, monster_id = 21030301, pos = { x = 559.765, y = 0.633, z = 93.973 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 220, monster_id = 21010301, pos = { x = 564.521, y = 0.633, z = 99.533 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 221, monster_id = 21010301, pos = { x = 563.924, y = 0.633, z = 102.215 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 222, monster_id = 22010201, pos = { x = 511.101, y = 0.633, z = 99.574 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 223, monster_id = 20011001, pos = { x = 514.858, y = 0.633, z = 95.796 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 224, monster_id = 20011101, pos = { x = 515.092, y = 0.633, z = 103.067 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 225, monster_id = 21030101, pos = { x = 509.994, y = 0.633, z = 104.114 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 226, monster_id = 20020101, pos = { x = 462.863, y = 0.633, z = 100.247 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7 },
	{ config_id = 227, monster_id = 20010801, pos = { x = 466.653, y = 0.633, z = 98.234 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 228, monster_id = 20010801, pos = { x = 465.478, y = 0.633, z = 102.958 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 229, monster_id = 20010801, pos = { x = 462.015, y = 0.633, z = 102.947 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 230, monster_id = 24010101, pos = { x = 417.875, y = 0.633, z = 102.643 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true, pose_id = 100 },
	{ config_id = 231, monster_id = 22010201, pos = { x = 415.663, y = 0.633, z = 106.946 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 232, monster_id = 21010401, pos = { x = 657.945, y = 0.633, z = 93.517 }, rot = { x = 0.000, y = 81.067, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 233, monster_id = 21010401, pos = { x = 658.088, y = 0.633, z = 108.542 }, rot = { x = 0.000, y = 81.067, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 234, monster_id = 21030201, pos = { x = 463.053, y = 0.633, z = 93.296 }, rot = { x = 0.000, y = 108.934, z = 0.000 }, level = 7, disableWander = true },
	{ config_id = 235, monster_id = 21010401, pos = { x = 417.164, y = 0.633, z = 109.388 }, rot = { x = 0.000, y = 81.067, z = 0.000 }, level = 7, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 269, gadget_id = 70360002, pos = { x = 123.510, y = 0.500, z = 69.446 }, rot = { x = 0.000, y = 270.134, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000130, name = "GADGET_CREATE_130", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_130", action = "action_EVENT_GADGET_CREATE_130" },
	{ config_id = 1000131, name = "SELECT_OPTION_131", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_131", action = "action_EVENT_SELECT_OPTION_131", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000132, name = "SELECT_OPTION_132", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_132", action = "action_EVENT_SELECT_OPTION_132", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000133, name = "SELECT_OPTION_133", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_133", action = "action_EVENT_SELECT_OPTION_133", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000134, name = "SELECT_OPTION_134", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_134", action = "action_EVENT_SELECT_OPTION_134", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000135, name = "SELECT_OPTION_135", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_135", action = "action_EVENT_SELECT_OPTION_135", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000136, name = "SELECT_OPTION_136", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_136", action = "action_EVENT_SELECT_OPTION_136", trigger_count = 0, forbid_guest = false }
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
		monsters = { 192, 193, 194, 195, 196, 197, 199, 201, 202, 203, 204, 205, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_CREATE_130", "SELECT_OPTION_131", "SELECT_OPTION_132", "SELECT_OPTION_133", "SELECT_OPTION_134", "SELECT_OPTION_135", "SELECT_OPTION_136" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 196, 197 },
		gadgets = { 269 },
		regions = { },
		triggers = { "GADGET_CREATE_130", "SELECT_OPTION_131", "SELECT_OPTION_132", "SELECT_OPTION_133", "SELECT_OPTION_134", "SELECT_OPTION_135", "SELECT_OPTION_136" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 199 },
		gadgets = { 269 },
		regions = { },
		triggers = { "GADGET_CREATE_130", "SELECT_OPTION_131", "SELECT_OPTION_132", "SELECT_OPTION_133", "SELECT_OPTION_134", "SELECT_OPTION_135", "SELECT_OPTION_136" },
		rand_weight = 0
	},
	{
		-- suite_id = 4,
		-- description = 0,
		monsters = { 201, 202, 203 },
		gadgets = { 269 },
		regions = { },
		triggers = { "GADGET_CREATE_130", "SELECT_OPTION_131", "SELECT_OPTION_132", "SELECT_OPTION_133", "SELECT_OPTION_134", "SELECT_OPTION_135", "SELECT_OPTION_136" },
		rand_weight = 0
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 204, 205, 207 },
		gadgets = { 269 },
		regions = { },
		triggers = { "GADGET_CREATE_130", "SELECT_OPTION_131", "SELECT_OPTION_132", "SELECT_OPTION_133", "SELECT_OPTION_134", "SELECT_OPTION_135", "SELECT_OPTION_136" },
		rand_weight = 0
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 208, 209, 210 },
		gadgets = { 269 },
		regions = { },
		triggers = { "GADGET_CREATE_130", "SELECT_OPTION_131", "SELECT_OPTION_132", "SELECT_OPTION_133", "SELECT_OPTION_134", "SELECT_OPTION_135", "SELECT_OPTION_136" },
		rand_weight = 0
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_130(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_130(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {145,146,147,148,149,150}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_131(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_131(context, evt)
	
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
function condition_EVENT_SELECT_OPTION_132(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_132(context, evt)
	
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
function condition_EVENT_SELECT_OPTION_133(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_133(context, evt)
	
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
function condition_EVENT_SELECT_OPTION_134(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_134(context, evt)
	
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
function condition_EVENT_SELECT_OPTION_135(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_135(context, evt)
	
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
function condition_EVENT_SELECT_OPTION_136(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_136(context, evt)
	
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