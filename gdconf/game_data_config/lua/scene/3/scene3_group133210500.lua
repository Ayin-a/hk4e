-- 基础信息
local base_info = {
	group_id = 133210500
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 500001, monster_id = 21030601, pos = { x = -3884.449, y = 117.769, z = -873.594 }, rot = { x = 0.000, y = 54.010, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 17 },
	{ config_id = 500002, monster_id = 21020801, pos = { x = -3894.178, y = 117.149, z = -869.681 }, rot = { x = 0.000, y = 110.224, z = 0.000 }, level = 30, drop_tag = "丘丘岩盔王", area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 500003, gadget_id = 70300089, pos = { x = -3879.835, y = 118.042, z = -872.951 }, rot = { x = 2.893, y = 251.695, z = 357.039 }, level = 30, area_id = 17 },
	{ config_id = 500004, gadget_id = 70300107, pos = { x = -3883.072, y = 117.848, z = -872.675 }, rot = { x = 2.994, y = 261.962, z = 358.297 }, level = 30, area_id = 17 },
	{ config_id = 500006, gadget_id = 70300089, pos = { x = -3883.710, y = 117.741, z = -870.418 }, rot = { x = 358.611, y = 182.269, z = 355.347 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1500005, name = "MONSTER_BATTLE_500005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_500005", action = "action_EVENT_MONSTER_BATTLE_500005" }
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
		monsters = { 500001 },
		gadgets = { 500003, 500004, 500006 },
		regions = { },
		triggers = { "MONSTER_BATTLE_500005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 500002 },
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
function condition_EVENT_MONSTER_BATTLE_500005(context, evt)
	if 500001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_500005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210500, 2)
	
	return 0
end