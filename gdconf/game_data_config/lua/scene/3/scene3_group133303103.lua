-- 基础信息
local base_info = {
	group_id = 133303103
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 103001, monster_id = 24030201, pos = { x = -1808.120, y = 96.403, z = 3555.317 }, rot = { x = 0.000, y = 151.008, z = 0.000 }, level = 30, drop_tag = "遗迹龙兽", disableWander = true, pose_id = 102, area_id = 23 },
	{ config_id = 103003, monster_id = 24030101, pos = { x = -1807.751, y = 94.946, z = 3545.120 }, rot = { x = 0.000, y = 3.305, z = 0.000 }, level = 30, drop_tag = "遗迹龙兽", disableWander = true, pose_id = 101, area_id = 23 }
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
	{ config_id = 1103002, name = "SPECIFIC_MONSTER_HP_CHANGE_103002", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "103001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_103002", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_103002" }
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
		monsters = { 103001 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_103002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 103003 },
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
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_103002(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_103002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303103, 2)
	
	return 0
end