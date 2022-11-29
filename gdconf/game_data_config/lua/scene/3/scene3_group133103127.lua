-- 基础信息
local base_info = {
	group_id = 133103127
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 127001, monster_id = 20010501, pos = { x = 634.796, y = 184.324, z = 1144.330 }, rot = { x = 0.000, y = 41.900, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 127002, monster_id = 20010501, pos = { x = 637.060, y = 184.225, z = 1144.604 }, rot = { x = 0.000, y = 99.737, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 127003, monster_id = 20010501, pos = { x = 638.100, y = 184.045, z = 1147.583 }, rot = { x = 0.000, y = 53.366, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 127004, monster_id = 20010501, pos = { x = 636.763, y = 184.180, z = 1149.894 }, rot = { x = 0.000, y = 64.774, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 127005, monster_id = 20010501, pos = { x = 633.913, y = 184.440, z = 1149.181 }, rot = { x = 0.000, y = 220.362, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 127006, monster_id = 20010501, pos = { x = 633.392, y = 184.343, z = 1146.550 }, rot = { x = 0.000, y = 69.653, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 127007, monster_id = 20010701, pos = { x = 635.666, y = 184.308, z = 1146.989 }, rot = { x = 0.000, y = 244.650, z = 0.000 }, level = 24, drop_tag = "大史莱姆", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 127009, gadget_id = 70211011, pos = { x = 631.896, y = 184.419, z = 1146.482 }, rot = { x = 8.791, y = 86.991, z = 1.265 }, level = 21, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1127008, name = "ANY_MONSTER_DIE_127008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_127008", action = "action_EVENT_ANY_MONSTER_DIE_127008" },
	{ config_id = 1127010, name = "MONSTER_BATTLE_127010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_127010", action = "action_EVENT_MONSTER_BATTLE_127010" }
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
		monsters = { 127001, 127007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_127008", "MONSTER_BATTLE_127010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 127009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 127002, 127003, 127004, 127005, 127006 },
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
function condition_EVENT_ANY_MONSTER_DIE_127008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_127008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103127, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_127010(context, evt)
	if 127007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_127010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103127, 3)
	
	return 0
end