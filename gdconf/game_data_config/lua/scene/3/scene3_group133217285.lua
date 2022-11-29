-- 基础信息
local base_info = {
	group_id = 133217285
}

-- Trigger变量
local defs = {
	group_ID = 133217285,
	gadget_fundation01 = 285001,
	gadget_hand01 = 285003,
	gadget_fundation02 = 285002,
	gadget_hand02 = 285004,
	gadget_fundation03 = 285008,
	gadget_hand03 = 285009,
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
	{ config_id = 285001, gadget_id = 70950084, pos = { x = -4391.643, y = 201.107, z = -3703.702 }, rot = { x = 0.000, y = 272.328, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 285002, gadget_id = 70950084, pos = { x = -4411.016, y = 200.864, z = -3702.930 }, rot = { x = 0.000, y = 90.639, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 285003, gadget_id = 70950085, pos = { x = -4391.643, y = 201.107, z = -3703.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 285004, gadget_id = 70950085, pos = { x = -4411.016, y = 200.864, z = -3702.930 }, rot = { x = 0.000, y = 180.639, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 285005, gadget_id = 70211111, pos = { x = -4401.383, y = 201.156, z = -3703.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 285007, gadget_id = 70330094, pos = { x = -4401.417, y = 201.525, z = -3705.924 }, rot = { x = 9.656, y = 350.537, z = 0.640 }, level = 30, area_id = 14 },
	{ config_id = 285008, gadget_id = 70950084, pos = { x = -4401.188, y = 203.306, z = -3715.552 }, rot = { x = 0.000, y = 356.736, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 285009, gadget_id = 70950085, pos = { x = -4401.187, y = 203.306, z = -3715.552 }, rot = { x = 0.000, y = 86.736, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1285006, name = "VARIABLE_CHANGE_285006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_285006", action = "" }
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
		gadgets = { 285001, 285002, 285003, 285004, 285007, 285008, 285009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 285005 },
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
function condition_EVENT_VARIABLE_CHANGE_285006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/MagneticGear"