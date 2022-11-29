-- 基础信息
local base_info = {
	group_id = 133223002
}

-- Trigger变量
local defs = {
	group_ID = 133223002,
	gadget_fundation01 = 2001,
	gadget_hand01 = 2003,
	gadget_fundation02 = 2002,
	gadget_hand02 = 2004,
	gadget_fundation03 = 2007,
	gadget_hand03 = 2008,
	gadget_fundation04 = 2009,
	gadget_hand04 = 2010,
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
	{ config_id = 2001, gadget_id = 70950084, pos = { x = -5861.718, y = 158.395, z = -2673.348 }, rot = { x = 0.000, y = 187.110, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 2002, gadget_id = 70950084, pos = { x = -5869.730, y = 158.634, z = -2686.998 }, rot = { x = 0.000, y = 49.021, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 2003, gadget_id = 70950085, pos = { x = -5861.718, y = 158.395, z = -2673.348 }, rot = { x = 0.000, y = 257.110, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 2004, gadget_id = 70950085, pos = { x = -5869.730, y = 158.634, z = -2686.998 }, rot = { x = 0.000, y = 139.021, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 2005, gadget_id = 70211121, pos = { x = -5871.261, y = 160.522, z = -2677.046 }, rot = { x = 0.000, y = 25.057, z = 0.000 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 2007, gadget_id = 70950084, pos = { x = -5873.451, y = 158.634, z = -2666.816 }, rot = { x = 0.000, y = 107.779, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 2008, gadget_id = 70950085, pos = { x = -5873.451, y = 158.634, z = -2666.816 }, rot = { x = 0.000, y = 177.779, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 2009, gadget_id = 70950084, pos = { x = -5881.345, y = 158.634, z = -2680.280 }, rot = { x = 0.000, y = 255.041, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 2010, gadget_id = 70950085, pos = { x = -5881.345, y = 158.634, z = -2680.280 }, rot = { x = 0.000, y = 325.041, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002006, name = "VARIABLE_CHANGE_2006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2006", action = "action_EVENT_VARIABLE_CHANGE_2006" }
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
		gadgets = { 2001, 2002, 2003, 2004, 2007, 2008, 2009, 2010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_2006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2005 },
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
function condition_EVENT_VARIABLE_CHANGE_2006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2006(context, evt)
	-- 将本组内变量名为 "markFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "markFinish", 1, 133223003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "markFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "markFinish", 1, 133223004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "markFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "markFinish", 1, 133223040) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/MagneticGear"