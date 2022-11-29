-- 基础信息
local base_info = {
	group_id = 199004055
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 55001, monster_id = 20010301, pos = { x = -438.888, y = 120.070, z = -544.546 }, rot = { x = 0.000, y = 136.597, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 55002, monster_id = 20010301, pos = { x = -437.248, y = 120.093, z = -548.292 }, rot = { x = 0.000, y = 293.198, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 55003, monster_id = 20011001, pos = { x = -439.686, y = 120.070, z = -547.129 }, rot = { x = 0.000, y = 64.802, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 55004, monster_id = 20011001, pos = { x = -436.521, y = 120.093, z = -546.109 }, rot = { x = 0.000, y = 261.135, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 400 },
	{ config_id = 55010, monster_id = 20010401, pos = { x = -439.991, y = 120.070, z = -551.696 }, rot = { x = 0.000, y = 18.787, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 400 },
	{ config_id = 55011, monster_id = 20011101, pos = { x = -435.291, y = 120.099, z = -543.135 }, rot = { x = 0.000, y = 225.408, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 400 }
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
	{ config_id = 1055006, name = "ANY_MONSTER_DIE_55006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55006", action = "action_EVENT_ANY_MONSTER_DIE_55006" }
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
		monsters = { 55001, 55002, 55003, 55004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_55006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 55010, 55011 },
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
function condition_EVENT_ANY_MONSTER_DIE_55006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_55006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004055, 2)
	
	return 0
end