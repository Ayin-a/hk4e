-- 基础信息
local base_info = {
	group_id = 133313188
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 188001, monster_id = 26090901, pos = { x = -412.522, y = -240.333, z = 5517.950 }, rot = { x = 0.000, y = 286.824, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 102, area_id = 32 },
	{ config_id = 188002, monster_id = 26090901, pos = { x = -417.834, y = -238.608, z = 5514.674 }, rot = { x = 0.000, y = 55.036, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 102, area_id = 32 },
	{ config_id = 188003, monster_id = 26090901, pos = { x = -412.980, y = -238.499, z = 5520.570 }, rot = { x = 0.000, y = 196.832, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 102, area_id = 32 },
	{ config_id = 188004, monster_id = 26120401, pos = { x = -417.895, y = -240.581, z = 5511.543 }, rot = { x = 0.000, y = 18.064, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 101, area_id = 32 }
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
	{ config_id = 1188005, name = "MONSTER_BATTLE_188005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_188005", action = "action_EVENT_MONSTER_BATTLE_188005" }
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
		monsters = { 188001, 188002, 188003 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_188005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 188004 },
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
function condition_EVENT_MONSTER_BATTLE_188005(context, evt)
	if 188001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_188005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313188, 2)
	
	return 0
end