-- 基础信息
local base_info = {
	group_id = 199003124
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124008, monster_id = 21010101, pos = { x = -182.164, y = 120.446, z = 474.692 }, rot = { x = 0.000, y = 51.198, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9012, area_id = 403 },
	{ config_id = 124009, monster_id = 21010101, pos = { x = -185.266, y = 120.415, z = 477.954 }, rot = { x = 0.000, y = 39.144, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9012, area_id = 403 },
	{ config_id = 124010, monster_id = 21010101, pos = { x = -182.076, y = 120.265, z = 477.453 }, rot = { x = 0.000, y = 113.276, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9011, area_id = 403 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 124001, gadget_id = 70350261, pos = { x = -180.500, y = 120.261, z = 476.248 }, rot = { x = 356.072, y = 275.215, z = 356.260 }, level = 20, area_id = 403 },
	{ config_id = 124002, gadget_id = 70350240, pos = { x = -182.980, y = 120.059, z = 480.651 }, rot = { x = 0.000, y = 138.745, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 124003, gadget_id = 70220013, pos = { x = -179.859, y = 120.383, z = 473.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 124004, gadget_id = 70220026, pos = { x = -178.835, y = 120.046, z = 478.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 124005, gadget_id = 70220026, pos = { x = -178.529, y = 120.380, z = 471.127 }, rot = { x = 0.000, y = 306.001, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 124006, gadget_id = 70300089, pos = { x = -177.213, y = 120.350, z = 469.851 }, rot = { x = 0.000, y = 0.000, z = 357.049 }, level = 20, area_id = 403 },
	{ config_id = 124012, gadget_id = 70211101, pos = { x = -179.812, y = 120.388, z = 472.963 }, rot = { x = 0.000, y = 238.803, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 },
	{ config_id = 124013, gadget_id = 70950076, pos = { x = -182.980, y = 124.340, z = 480.651 }, rot = { x = 0.000, y = 52.273, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1124011, name = "ANY_GADGET_DIE_124011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_124011", action = "action_EVENT_ANY_GADGET_DIE_124011" }
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
		monsters = { 124008, 124009, 124010 },
		gadgets = { 124001, 124002, 124003, 124004, 124005, 124006, 124013 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_124011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 124012 },
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
function condition_EVENT_ANY_GADGET_DIE_124011(context, evt)
	if 124003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_124011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003124, 2)
	
	return 0
end