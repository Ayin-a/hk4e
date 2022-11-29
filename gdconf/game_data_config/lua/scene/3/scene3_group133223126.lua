-- 基础信息
local base_info = {
	group_id = 133223126
}

-- Trigger变量
local defs = {
	group_ID = 133223126,
	gadget_fundation01 = 126001,
	gadget_hand01 = 126003,
	gadget_fundation02 = 126002,
	gadget_hand02 = 126004,
	gadget_fundation03 = 126009,
	gadget_hand03 = 126010,
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
	{ config_id = 126001, gadget_id = 70950084, pos = { x = -6176.349, y = 227.937, z = -2544.200 }, rot = { x = 1.529, y = 63.479, z = 358.356 }, level = 30, area_id = 18 },
	{ config_id = 126002, gadget_id = 70950084, pos = { x = -6183.825, y = 229.824, z = -2545.692 }, rot = { x = 0.000, y = 50.074, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 126003, gadget_id = 70950085, pos = { x = -6176.349, y = 227.937, z = -2544.200 }, rot = { x = 2.013, y = 140.622, z = 0.855 }, level = 30, area_id = 18 },
	{ config_id = 126004, gadget_id = 70950085, pos = { x = -6183.825, y = 229.824, z = -2545.692 }, rot = { x = 0.000, y = 140.074, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 126005, gadget_id = 70211111, pos = { x = -6188.543, y = 231.278, z = -2543.728 }, rot = { x = 14.112, y = 118.702, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 126009, gadget_id = 70950084, pos = { x = -6168.814, y = 225.562, z = -2547.172 }, rot = { x = 0.000, y = 145.753, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 126010, gadget_id = 70950085, pos = { x = -6168.814, y = 225.562, z = -2547.172 }, rot = { x = 0.000, y = 215.753, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1126006, name = "VARIABLE_CHANGE_126006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_126006", action = "action_EVENT_VARIABLE_CHANGE_126006" }
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
		gadgets = { 126001, 126002, 126003, 126004, 126009, 126010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_126006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 126005 },
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
function condition_EVENT_VARIABLE_CHANGE_126006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_126006(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133223128) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/MagneticGear"