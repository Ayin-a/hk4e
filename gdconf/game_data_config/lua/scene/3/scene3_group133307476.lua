-- 基础信息
local base_info = {
	group_id = 133307476
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 476001, monster_id = 20011201, pos = { x = -1402.458, y = 53.666, z = 5369.344 }, rot = { x = 0.000, y = 191.273, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 },
	{ config_id = 476002, monster_id = 20011201, pos = { x = -1403.455, y = 54.235, z = 5364.897 }, rot = { x = 0.000, y = 359.579, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 },
	{ config_id = 476004, monster_id = 20011301, pos = { x = -1405.648, y = 54.052, z = 5367.786 }, rot = { x = 0.000, y = 276.031, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 32 }
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
	{ config_id = 1476003, name = "MONSTER_BATTLE_476003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_476003", action = "action_EVENT_MONSTER_BATTLE_476003" }
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
		monsters = { 476001, 476002 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_476003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 476004 },
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
function condition_EVENT_MONSTER_BATTLE_476003(context, evt)
	if 476001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_476003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307476, 2)
	
	return 0
end