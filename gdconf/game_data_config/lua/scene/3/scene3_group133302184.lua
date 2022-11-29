-- 基础信息
local base_info = {
	group_id = 133302184
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 184001, monster_id = 24020401, pos = { x = -72.582, y = 280.400, z = 2789.536 }, rot = { x = 0.000, y = 222.377, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 101, area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 184002, monster_id = 24020401, pos = { x = -87.917, y = 275.640, z = 2817.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 184003, gadget_id = 70330219, pos = { x = -88.168, y = 276.731, z = 2816.870 }, rot = { x = 0.000, y = 123.874, z = 0.000 }, level = 27, isOneoff = true, area_id = 20 },
	{ config_id = 184004, gadget_id = 70310198, pos = { x = -88.812, y = 278.802, z = 2791.771 }, rot = { x = 0.000, y = 93.122, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1184005, name = "ANY_GADGET_DIE_184005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_184005", action = "action_EVENT_ANY_GADGET_DIE_184005" }
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
		monsters = { 184001 },
		gadgets = { 184003, 184004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_184005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 184002 },
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
function condition_EVENT_ANY_GADGET_DIE_184005(context, evt)
	if 184003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_184005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302184, 2)
	
	return 0
end