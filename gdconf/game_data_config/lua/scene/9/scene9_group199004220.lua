-- 基础信息
local base_info = {
	group_id = 199004220
}

-- Trigger变量
local defs = {
	group_ID = 199004220,
	gadget_fundation01 = 220001,
	gadget_hand01 = 220003,
	gadget_fundation02 = 220002,
	gadget_hand02 = 220004,
	gadget_fundation03 = 220007,
	gadget_hand03 = 220008,
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
	{ config_id = 220001, gadget_id = 70950084, pos = { x = -329.599, y = 160.720, z = -696.601 }, rot = { x = 0.000, y = 331.032, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 220002, gadget_id = 70950084, pos = { x = -341.972, y = 161.853, z = -691.900 }, rot = { x = 0.000, y = 94.418, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 220003, gadget_id = 70950085, pos = { x = -329.599, y = 160.720, z = -696.601 }, rot = { x = 0.000, y = 41.032, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 220004, gadget_id = 70950085, pos = { x = -341.972, y = 161.853, z = -691.900 }, rot = { x = 0.000, y = 184.418, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 220005, gadget_id = 70211111, pos = { x = -334.053, y = 161.138, z = -696.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 220007, gadget_id = 70950084, pos = { x = -335.215, y = 162.769, z = -688.289 }, rot = { x = 0.000, y = 129.545, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 220008, gadget_id = 70950085, pos = { x = -335.215, y = 162.769, z = -688.289 }, rot = { x = 0.000, y = 219.545, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1220006, name = "VARIABLE_CHANGE_220006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_220006", action = "", trigger_count = 0 }
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
		gadgets = { 220001, 220002, 220003, 220004, 220007, 220008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_220006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 220005 },
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
function condition_EVENT_VARIABLE_CHANGE_220006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/MagneticGear"