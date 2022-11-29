-- 基础信息
local base_info = {
	group_id = 133213257
}

-- Trigger变量
local defs = {
	group_ID = 133213257,
	gadget_fundation01 = 257001,
	gadget_hand01 = 257003,
	gadget_fundation02 = 257002,
	gadget_hand02 = 257004,
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
	{ config_id = 257001, gadget_id = 70950084, pos = { x = -3846.217, y = 246.937, z = -3196.706 }, rot = { x = 0.000, y = 222.194, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 257002, gadget_id = 70950084, pos = { x = -3844.437, y = 246.892, z = -3195.016 }, rot = { x = 0.000, y = 43.901, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 257003, gadget_id = 70950085, pos = { x = -3846.217, y = 246.937, z = -3196.706 }, rot = { x = 0.000, y = 312.194, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 257004, gadget_id = 70950085, pos = { x = -3844.437, y = 246.892, z = -3195.016 }, rot = { x = 0.000, y = 133.901, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 257005, gadget_id = 70211111, pos = { x = -3844.602, y = 247.026, z = -3196.605 }, rot = { x = 3.550, y = 135.584, z = 0.642 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1257006, name = "VARIABLE_CHANGE_257006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_257006", action = "" }
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
		gadgets = { 257001, 257002, 257003, 257004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 257005 },
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
function condition_EVENT_VARIABLE_CHANGE_257006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/MagneticGear"