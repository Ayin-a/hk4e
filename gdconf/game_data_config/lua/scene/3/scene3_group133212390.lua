-- 基础信息
local base_info = {
	group_id = 133212390
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 390001, monster_id = 21010101, pos = { x = -3534.388, y = 201.341, z = -2036.297 }, rot = { x = 0.000, y = 120.551, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, affix = { 1101 }, pose_id = 9016, area_id = 13 },
	{ config_id = 390004, monster_id = 21020701, pos = { x = -3533.987, y = 200.714, z = -2025.567 }, rot = { x = 0.000, y = 346.783, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, affix = { 1101 }, pose_id = 401, area_id = 13 },
	{ config_id = 390005, monster_id = 21010501, pos = { x = -3539.163, y = 203.017, z = -2042.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", affix = { 1101 }, area_id = 13 },
	{ config_id = 390006, monster_id = 21010501, pos = { x = -3547.900, y = 206.961, z = -2049.203 }, rot = { x = 0.000, y = 51.592, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", affix = { 1101 }, area_id = 13 }
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
	{ config_id = 1390007, name = "MONSTER_BATTLE_390007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_390007", action = "action_EVENT_MONSTER_BATTLE_390007" }
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
		monsters = { 390001, 390004, 390005 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_390007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 390006 },
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
function condition_EVENT_MONSTER_BATTLE_390007(context, evt)
	if 390004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_390007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212390, 2)
	
	return 0
end