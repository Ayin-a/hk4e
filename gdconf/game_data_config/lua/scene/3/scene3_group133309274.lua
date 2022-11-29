-- 基础信息
local base_info = {
	group_id = 133309274
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 274001, monster_id = 21010101, pos = { x = -2143.932, y = 25.406, z = 5315.959 }, rot = { x = 0.000, y = 240.392, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9003, area_id = 27 },
	{ config_id = 274007, monster_id = 28010201, pos = { x = -2146.445, y = 25.847, z = 5314.409 }, rot = { x = 0.000, y = 77.456, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 274002, gadget_id = 70330426, pos = { x = -2145.866, y = 25.141, z = 5316.542 }, rot = { x = 2.555, y = 25.703, z = 292.630 }, level = 32, area_id = 27 },
	{ config_id = 274003, gadget_id = 70330426, pos = { x = -2143.862, y = 25.686, z = 5315.148 }, rot = { x = 334.431, y = 282.896, z = 318.079 }, level = 32, area_id = 27 },
	{ config_id = 274004, gadget_id = 70330426, pos = { x = -2143.150, y = 25.953, z = 5314.485 }, rot = { x = 65.337, y = 24.085, z = 11.471 }, level = 32, area_id = 27 },
	{ config_id = 274005, gadget_id = 70330426, pos = { x = -2146.700, y = 25.872, z = 5314.476 }, rot = { x = 303.725, y = 355.078, z = 274.812 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1274006, name = "ANY_GADGET_DIE_274006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_274006", action = "action_EVENT_ANY_GADGET_DIE_274006" }
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
		monsters = { 274001 },
		gadgets = { 274002, 274003, 274004, 274005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_274006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 274007 },
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
function condition_EVENT_ANY_GADGET_DIE_274006(context, evt)
	if 274005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_274006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309274, 2)
	
	return 0
end