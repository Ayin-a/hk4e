-- 基础信息
local base_info = {
	group_id = 133210282
}

-- Trigger变量
local defs = {
	group_ID = 133210282,
	gadget_fundation01 = 282001,
	gadget_hand01 = 282003,
	gadget_fundation02 = 282002,
	gadget_hand02 = 282004,
	gadget_fundation03 = 282007,
	gadget_hand03 = 282008,
	gadget_fundation04 = 282009,
	gadget_hand04 = 282010,
	gadget_fundation05 = 282011,
	gadget_hand05 = 282012,
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1282006, name = "VARIABLE_CHANGE_282006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_282006", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 282001, gadget_id = 70950084, pos = { x = -3820.076, y = 112.601, z = -832.165 }, rot = { x = 0.000, y = 175.072, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 282002, gadget_id = 70950084, pos = { x = -3839.398, y = 105.366, z = -827.490 }, rot = { x = 0.000, y = 73.289, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 282003, gadget_id = 70950085, pos = { x = -3820.076, y = 112.601, z = -832.165 }, rot = { x = 0.000, y = 6.066, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 282004, gadget_id = 70950085, pos = { x = -3839.398, y = 105.366, z = -827.490 }, rot = { x = 0.000, y = 0.645, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 282005, gadget_id = 70211111, pos = { x = -3833.399, y = 104.609, z = -823.982 }, rot = { x = 349.216, y = 81.649, z = 12.774 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
		{ config_id = 282007, gadget_id = 70950084, pos = { x = -3794.974, y = 111.047, z = -819.557 }, rot = { x = 0.000, y = 265.435, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 282008, gadget_id = 70950085, pos = { x = -3794.974, y = 111.047, z = -819.557 }, rot = { x = 0.000, y = 9.690, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 282009, gadget_id = 70950084, pos = { x = -3812.622, y = 105.772, z = -818.388 }, rot = { x = 0.000, y = 236.399, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 282010, gadget_id = 70950085, pos = { x = -3812.622, y = 105.772, z = -818.388 }, rot = { x = 0.000, y = 290.990, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 282011, gadget_id = 70950084, pos = { x = -3825.079, y = 104.260, z = -817.973 }, rot = { x = 0.000, y = 142.002, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 282012, gadget_id = 70950085, pos = { x = -3825.079, y = 104.260, z = -817.973 }, rot = { x = 0.000, y = 290.006, z = 0.000 }, level = 30, area_id = 17 }
	}
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
		gadgets = { },
		regions = { },
		triggers = { },
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
function condition_EVENT_VARIABLE_CHANGE_282006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/MagneticGear"