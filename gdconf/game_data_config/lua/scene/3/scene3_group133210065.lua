-- 基础信息
local base_info = {
	group_id = 133210065
}

-- Trigger变量
local defs = {
	group_ID = 133210065,
	gadget_fundation01 = 65002,
	gadget_hand01 = 65004,
	gadget_fundation02 = 65007,
	gadget_hand02 = 65008,
	gadget_fundation03 = 65009,
	gadget_hand03 = 65010,
	gadget_fundation04 = 0,
	gadget_hand04 = 0,
	gadget_fundation05 = 0,
	gadget_hand05 = 0,
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
	-- #1
	{ config_id = 65002, gadget_id = 70950084, pos = { x = -3729.327, y = 145.559, z = -594.747 }, rot = { x = 0.000, y = 190.411, z = 0.000 }, level = 30, area_id = 17 },
	-- #1
	{ config_id = 65004, gadget_id = 70950085, pos = { x = -3729.327, y = 145.559, z = -594.747 }, rot = { x = 0.000, y = 18.829, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 65005, gadget_id = 70211111, pos = { x = -3721.712, y = 129.428, z = -607.996 }, rot = { x = 356.984, y = 0.312, z = 12.107 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 65007, gadget_id = 70950084, pos = { x = -3717.771, y = 129.595, z = -602.093 }, rot = { x = 0.000, y = 218.662, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 65008, gadget_id = 70950085, pos = { x = -3717.771, y = 129.595, z = -602.093 }, rot = { x = 0.000, y = 118.292, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 65009, gadget_id = 70950084, pos = { x = -3739.473, y = 128.764, z = -612.329 }, rot = { x = 0.000, y = 9.034, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 65010, gadget_id = 70950085, pos = { x = -3739.473, y = 128.764, z = -612.329 }, rot = { x = 0.000, y = 194.829, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1065006, name = "VARIABLE_CHANGE_65006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_65006", action = "action_EVENT_VARIABLE_CHANGE_65006" }
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
		monsters = { },
		gadgets = { 65002, 65004, 65007, 65008, 65009, 65010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_65006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 65005 },
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
function condition_EVENT_VARIABLE_CHANGE_65006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65006(context, evt)
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210426) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/MagneticGear"