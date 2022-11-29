-- 基础信息
local base_info = {
	group_id = 155005099
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
	{ config_id = 99001, gadget_id = 70220096, pos = { x = 231.438, y = 262.661, z = 433.375 }, rot = { x = 10.437, y = 0.000, z = 349.672 }, level = 36, area_id = 200 },
	{ config_id = 99002, gadget_id = 70220097, pos = { x = 222.938, y = 264.812, z = 431.289 }, rot = { x = 13.221, y = 57.877, z = 357.739 }, level = 36, area_id = 200 },
	{ config_id = 99003, gadget_id = 70220098, pos = { x = 223.632, y = 264.912, z = 428.891 }, rot = { x = 1.731, y = 337.613, z = 342.618 }, level = 36, area_id = 200 },
	{ config_id = 99004, gadget_id = 70220099, pos = { x = 223.640, y = 264.404, z = 434.917 }, rot = { x = 358.478, y = 343.386, z = 345.808 }, level = 36, area_id = 200 },
	{ config_id = 99005, gadget_id = 70220098, pos = { x = 236.008, y = 262.424, z = 427.981 }, rot = { x = 17.624, y = 43.480, z = 354.128 }, level = 36, area_id = 200 },
	{ config_id = 99006, gadget_id = 70220099, pos = { x = 228.376, y = 263.361, z = 432.642 }, rot = { x = 340.645, y = 178.663, z = 18.375 }, level = 36, area_id = 200 },
	{ config_id = 99007, gadget_id = 70220096, pos = { x = 228.119, y = 263.449, z = 436.405 }, rot = { x = 51.919, y = 357.625, z = 315.333 }, level = 36, area_id = 200 },
	{ config_id = 99008, gadget_id = 70220096, pos = { x = 228.449, y = 262.741, z = 440.521 }, rot = { x = 0.962, y = 319.336, z = 38.724 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1099010, name = "ANY_GADGET_DIE_99010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_99010", action = "", trigger_count = 0 }
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
		gadgets = { 99001, 99002, 99003, 99004, 99005, 99006, 99007, 99008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_99010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_99010(context, evt)
	if 99008 ~= evt.param1 then
		return false
	end
	
	return true
end