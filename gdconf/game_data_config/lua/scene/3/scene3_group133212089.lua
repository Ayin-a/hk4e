-- 基础信息
local base_info = {
	group_id = 133212089
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 89002, monster_id = 25010201, pos = { x = -4068.946, y = 201.208, z = -2479.035 }, rot = { x = 0.000, y = 343.196, z = 0.000 }, level = 27, drop_tag = "盗宝团", affix = { 1101 }, pose_id = 9003, area_id = 13 },
	{ config_id = 89004, monster_id = 25010701, pos = { x = -4061.218, y = 200.202, z = -2497.473 }, rot = { x = 0.000, y = 249.507, z = 0.000 }, level = 27, drop_tag = "盗宝团", affix = { 1101 }, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 89006, gadget_id = 70210101, pos = { x = -4069.483, y = 200.921, z = -2476.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1089005, name = "MONSTER_BATTLE_89005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_89005", action = "action_EVENT_MONSTER_BATTLE_89005" }
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
		monsters = { 89002, 89004 },
		gadgets = { 89006 },
		regions = { },
		triggers = { "MONSTER_BATTLE_89005" },
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
function condition_EVENT_MONSTER_BATTLE_89005(context, evt)
	if 89002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_89005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212089, 2)
	
	return 0
end