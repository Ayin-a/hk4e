-- 基础信息
local base_info = {
	group_id = 133103344
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 344001, monster_id = 20011301, pos = { x = 599.698, y = 300.531, z = 1377.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "大史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 344002, monster_id = 20011201, pos = { x = 592.806, y = 300.236, z = 1377.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 344003, monster_id = 20011201, pos = { x = 607.118, y = 300.978, z = 1377.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 344004, monster_id = 20011201, pos = { x = 596.278, y = 299.979, z = 1383.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 344005, monster_id = 20011201, pos = { x = 602.727, y = 300.124, z = 1383.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 344006, monster_id = 20011201, pos = { x = 596.026, y = 300.981, z = 1371.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 344007, monster_id = 20011201, pos = { x = 603.150, y = 301.295, z = 1371.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 344008, gadget_id = 70211011, pos = { x = 601.456, y = 300.637, z = 1377.574 }, rot = { x = 5.078, y = 0.164, z = 3.499 }, level = 21, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1344009, name = "ANY_MONSTER_DIE_344009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_344009", action = "action_EVENT_ANY_MONSTER_DIE_344009" }
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
		monsters = { 344001, 344002, 344003, 344004, 344005, 344006, 344007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_344009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 344008 },
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
function condition_EVENT_ANY_MONSTER_DIE_344009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_344009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103344, 2)
	
	return 0
end