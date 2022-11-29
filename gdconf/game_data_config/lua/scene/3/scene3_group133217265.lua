-- 基础信息
local base_info = {
	group_id = 133217265
}

-- Trigger变量
local defs = {
	group_ID = 133217265,
	gadget_fundation01 = 265001,
	gadget_hand01 = 265003,
	gadget_fundation02 = 265002,
	gadget_hand02 = 265004,
	gadget_fundation03 = 265007,
	gadget_hand03 = 265008,
	gadget_fundation04 = 265009,
	gadget_hand04 = 265010,
	gadget_fundation05 = 265011,
	gadget_hand05 = 265012,
	minDiscrapancy = 15
}

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
	{ config_id = 265001, gadget_id = 70950084, pos = { x = -4183.121, y = 203.915, z = -3829.609 }, rot = { x = 0.000, y = 238.009, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 265002, gadget_id = 70950084, pos = { x = -4196.434, y = 199.335, z = -3822.847 }, rot = { x = 0.054, y = 172.019, z = 358.691 }, level = 30, area_id = 14 },
	{ config_id = 265003, gadget_id = 70950085, pos = { x = -4183.121, y = 203.915, z = -3829.609 }, rot = { x = 0.000, y = 287.450, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 265004, gadget_id = 70950085, pos = { x = -4196.434, y = 199.335, z = -3822.847 }, rot = { x = 0.000, y = 255.551, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 265005, gadget_id = 70211121, pos = { x = -4195.854, y = 198.377, z = -3837.457 }, rot = { x = 358.050, y = 260.444, z = 0.367 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 265007, gadget_id = 70950084, pos = { x = -4198.386, y = 199.516, z = -3853.303 }, rot = { x = 0.000, y = 359.548, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 265008, gadget_id = 70950085, pos = { x = -4198.386, y = 199.516, z = -3853.303 }, rot = { x = 0.000, y = 69.548, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 265009, gadget_id = 70950084, pos = { x = -4208.846, y = 198.831, z = -3836.549 }, rot = { x = 0.000, y = 81.222, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 265010, gadget_id = 70950085, pos = { x = -4208.846, y = 198.831, z = -3836.549 }, rot = { x = 0.000, y = 151.222, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 265011, gadget_id = 70950084, pos = { x = -4183.821, y = 198.938, z = -3846.115 }, rot = { x = 0.000, y = 312.924, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 265012, gadget_id = 70950085, pos = { x = -4183.821, y = 198.938, z = -3846.115 }, rot = { x = 0.000, y = 4.748, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1265006, name = "VARIABLE_CHANGE_265006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_265006", action = "action_EVENT_VARIABLE_CHANGE_265006" },
	{ config_id = 1265014, name = "GROUP_LOAD_265014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_265014", action = "action_EVENT_GROUP_LOAD_265014", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 265013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4180.621, y = 200.000, z = -3834.111 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1265013, name = "ENTER_REGION_265013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
	}
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
		gadgets = { 265001, 265002, 265003, 265004, 265007, 265008, 265009, 265010, 265011, 265012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_265006", "GROUP_LOAD_265014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 265005 },
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_265006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_265006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217333, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组133217333中， configid为333003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133217333, 333003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_265014(context, evt)
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_265014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217333, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组133217333中， configid为333003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133217333, 333003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/MagneticGear"