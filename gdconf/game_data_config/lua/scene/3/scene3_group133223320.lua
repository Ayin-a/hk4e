-- 基础信息
local base_info = {
	group_id = 133223320
}

-- Trigger变量
local defs = {
	group_ID = 133223320,
	gadget_fundation01 = 320001,
	gadget_hand01 = 320003,
	gadget_fundation02 = 320002,
	gadget_hand02 = 320004,
	gadget_fundation03 = 0,
	gadget_hand03 = 0,
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
	{ config_id = 320001, gadget_id = 70950084, pos = { x = -6319.902, y = 200.348, z = -3176.250 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 320002, gadget_id = 70950084, pos = { x = -6320.686, y = 200.220, z = -3186.125 }, rot = { x = 0.000, y = 85.410, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 320003, gadget_id = 70950085, pos = { x = -6319.903, y = 200.348, z = -3176.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 320004, gadget_id = 70950085, pos = { x = -6320.686, y = 200.220, z = -3186.125 }, rot = { x = 0.000, y = 175.410, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 320005, gadget_id = 70211101, pos = { x = -6320.837, y = 200.439, z = -3181.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1320006, name = "VARIABLE_CHANGE_320006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_320006", action = "action_EVENT_VARIABLE_CHANGE_320006" }
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
		gadgets = { 320001, 320002, 320003, 320004 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_320006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 320005 },
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
function condition_EVENT_VARIABLE_CHANGE_320006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_320006(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133223321) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/MagneticGear"