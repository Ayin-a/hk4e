-- 基础信息
local base_info = {
	group_id = 133210018
}

-- Trigger变量
local defs = {
	group_ID = 133210018,
	gadget_fundation01 = 18001,
	gadget_hand01 = 18003,
	gadget_fundation02 = 18002,
	gadget_hand02 = 18004,
	gadget_fundation03 = 18007,
	gadget_hand03 = 18008,
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
	{ config_id = 18001, gadget_id = 70950084, pos = { x = -4052.117, y = 213.622, z = -870.384 }, rot = { x = 0.000, y = 252.349, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 18002, gadget_id = 70950084, pos = { x = -4067.876, y = 214.567, z = -864.312 }, rot = { x = 0.000, y = 146.993, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 18003, gadget_id = 70950085, pos = { x = -4052.117, y = 213.622, z = -870.384 }, rot = { x = 0.000, y = 151.186, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 18004, gadget_id = 70950085, pos = { x = -4067.876, y = 214.567, z = -864.312 }, rot = { x = 0.000, y = 46.398, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 18007, gadget_id = 70950084, pos = { x = -4066.985, y = 214.881, z = -880.609 }, rot = { x = 0.000, y = 33.206, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 18008, gadget_id = 70950085, pos = { x = -4066.985, y = 214.881, z = -880.609 }, rot = { x = 0.000, y = 299.572, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1018006, name = "VARIABLE_CHANGE_18006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_18006", action = "action_EVENT_VARIABLE_CHANGE_18006" }
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
		gadgets = { 18001, 18002, 18003, 18004, 18007, 18008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_18006" },
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_18006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_18006(context, evt)
	-- 将本组内变量名为 "GadgetChange" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetChange", 1, 133210254) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组133210038中， configid为38004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133210038, 38004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/MagneticGear"