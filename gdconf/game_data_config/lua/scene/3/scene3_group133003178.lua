-- 基础信息
local base_info = {
	group_id = 133003178
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
	{ config_id = 2842, gadget_id = 70211101, pos = { x = 2381.077, y = 283.493, z = -1795.409 }, rot = { x = 355.618, y = 238.532, z = 2.234 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2844, gadget_id = 70220021, pos = { x = 2217.789, y = 220.856, z = -1442.488 }, rot = { x = 0.000, y = 46.625, z = 0.000 }, level = 5, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 2845, gadget_id = 70211101, pos = { x = 2219.319, y = 220.857, z = -1441.195 }, rot = { x = 0.000, y = 245.697, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2846, gadget_id = 70220021, pos = { x = 2240.838, y = 240.812, z = -1446.774 }, rot = { x = 0.000, y = 22.111, z = 0.000 }, level = 5, isOneoff = true, area_id = 1 },
	{ config_id = 2847, gadget_id = 70211101, pos = { x = 2240.523, y = 242.389, z = -1445.642 }, rot = { x = 0.000, y = 245.697, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2848, gadget_id = 70211101, pos = { x = 2452.655, y = 271.440, z = -1526.560 }, rot = { x = 0.000, y = 54.421, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2849, gadget_id = 70211101, pos = { x = 2372.779, y = 273.384, z = -1517.824 }, rot = { x = 0.000, y = 12.013, z = 8.611 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2850, gadget_id = 70211101, pos = { x = 2069.816, y = 224.665, z = -1592.365 }, rot = { x = 0.000, y = 163.831, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2851, gadget_id = 70211101, pos = { x = 2392.046, y = 250.551, z = -1278.701 }, rot = { x = 0.000, y = 98.828, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2852, gadget_id = 70211101, pos = { x = 2160.761, y = 256.393, z = -1720.369 }, rot = { x = 6.779, y = 282.032, z = 355.228 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2853, gadget_id = 70211101, pos = { x = 2291.215, y = 284.946, z = -1744.794 }, rot = { x = 1.196, y = 24.455, z = 354.728 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2856, gadget_id = 70211101, pos = { x = 2373.006, y = 297.773, z = -1666.738 }, rot = { x = 0.000, y = 282.315, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 3139, gadget_id = 70211101, pos = { x = 2123.306, y = 233.157, z = -1563.928 }, rot = { x = 2.875, y = 185.395, z = 348.743 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000610, name = "ANY_GADGET_DIE_610", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_610", action = "action_EVENT_ANY_GADGET_DIE_610" },
	{ config_id = 1178001, name = "ANY_GADGET_DIE_178001", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_178001", action = "action_EVENT_ANY_GADGET_DIE_178001" }
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
		gadgets = { 2842, 2844, 2846, 2848, 2849, 2850, 2851, 2852, 2853, 2856, 3139 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_610", "ANY_GADGET_DIE_178001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2847 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2845 },
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
function condition_EVENT_ANY_GADGET_DIE_610(context, evt)
	if 2846 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_610(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003178, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_178001(context, evt)
	if 2844 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_178001(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003178, 3)
	
	return 0
end