-- 基础信息
local base_info = {
	group_id = 133225027
}

-- Trigger变量
local defs = {
	group_ID = 133225027,
	gadget_fundation01 = 27001,
	gadget_hand01 = 27003,
	gadget_fundation02 = 27002,
	gadget_hand02 = 27004,
	gadget_fundation03 = 27006,
	gadget_hand03 = 27007,
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
	{ config_id = 27001, gadget_id = 70950084, pos = { x = -6255.732, y = 199.870, z = -2378.914 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 27002, gadget_id = 70950084, pos = { x = -6268.463, y = 199.909, z = -2374.988 }, rot = { x = 0.000, y = 239.936, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 27003, gadget_id = 70950085, pos = { x = -6255.732, y = 199.870, z = -2378.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 27004, gadget_id = 70950085, pos = { x = -6268.463, y = 199.909, z = -2374.988 }, rot = { x = 0.000, y = 63.126, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 27005, gadget_id = 70211101, pos = { x = -6267.873, y = 200.082, z = -2379.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 27006, gadget_id = 70950084, pos = { x = -6275.023, y = 200.034, z = -2380.649 }, rot = { x = 0.000, y = 172.172, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 27007, gadget_id = 70950085, pos = { x = -6275.022, y = 200.034, z = -2380.649 }, rot = { x = 0.000, y = 20.384, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1027008, name = "VARIABLE_CHANGE_27008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_27008", action = "" }
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
		gadgets = { 27001, 27002, 27003, 27004, 27006, 27007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 27005 },
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
function condition_EVENT_VARIABLE_CHANGE_27008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/MagneticGear"