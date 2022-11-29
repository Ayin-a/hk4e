-- 基础信息
local base_info = {
	group_id = 133210294
}

-- Trigger变量
local defs = {
	group_ID = 133210294,
	gadget_fundation01 = 294001,
	gadget_hand01 = 294003,
	gadget_fundation02 = 294002,
	gadget_hand02 = 294004,
	gadget_fundation03 = 294007,
	gadget_hand03 = 294008,
	gadget_fundation04 = 294009,
	gadget_hand04 = 294010,
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
	{ config_id = 294001, gadget_id = 70950084, pos = { x = -3767.271, y = 121.516, z = -979.484 }, rot = { x = 0.000, y = 205.158, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 294002, gadget_id = 70950084, pos = { x = -3781.541, y = 121.303, z = -973.046 }, rot = { x = 0.000, y = 91.084, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 294003, gadget_id = 70950085, pos = { x = -3767.271, y = 121.516, z = -979.484 }, rot = { x = 0.000, y = 75.674, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 294004, gadget_id = 70950085, pos = { x = -3781.541, y = 121.303, z = -973.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 294005, gadget_id = 70211101, pos = { x = -3763.263, y = 121.135, z = -978.175 }, rot = { x = 355.754, y = 260.028, z = 1.652 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 294007, gadget_id = 70950084, pos = { x = -3779.207, y = 121.303, z = -992.697 }, rot = { x = 0.000, y = 86.860, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 294008, gadget_id = 70950085, pos = { x = -3779.207, y = 121.303, z = -992.697 }, rot = { x = 0.000, y = 164.135, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 294009, gadget_id = 70950084, pos = { x = -3814.916, y = 121.050, z = -989.611 }, rot = { x = 0.000, y = 83.210, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 294010, gadget_id = 70950085, pos = { x = -3814.916, y = 121.050, z = -989.611 }, rot = { x = 0.000, y = 19.990, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1294006, name = "VARIABLE_CHANGE_294006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_294006", action = "action_EVENT_VARIABLE_CHANGE_294006" }
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
		gadgets = { 294001, 294002, 294003, 294004, 294007, 294008, 294009, 294010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_294006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 294005 },
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
function condition_EVENT_VARIABLE_CHANGE_294006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_294006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210293, 2)
	
	return 0
end

require "BlackBoxPlay/MagneticGear"