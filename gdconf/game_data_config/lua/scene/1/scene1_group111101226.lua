-- 基础信息
local base_info = {
	group_id = 111101226
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 226001, monster_id = 20010401, pos = { x = 2180.288, y = 259.238, z = -1734.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆" },
	{ config_id = 226002, monster_id = 20010301, pos = { x = 2176.290, y = 259.552, z = -1736.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 226003, monster_id = 20010301, pos = { x = 2183.939, y = 259.732, z = -1736.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 226004, monster_id = 20010301, pos = { x = 2176.612, y = 258.966, z = -1732.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 226005, monster_id = 20010301, pos = { x = 2183.803, y = 259.399, z = -1732.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 226006, monster_id = 20010301, pos = { x = 2176.181, y = 260.097, z = -1743.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 226007, monster_id = 20010301, pos = { x = 2184.127, y = 260.297, z = -1742.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 226008, monster_id = 21010201, pos = { x = 2176.540, y = 260.213, z = -1747.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 226009, monster_id = 21010201, pos = { x = 2184.263, y = 260.659, z = -1746.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 226010, monster_id = 21010201, pos = { x = 2180.361, y = 260.270, z = -1745.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" }
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
	{ config_id = 1226011, name = "ANY_MONSTER_DIE_226011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_226011", action = "action_EVENT_ANY_MONSTER_DIE_226011", trigger_count = 5 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monsterDeathCount", value = 0, no_refresh = false }
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
		monsters = { 226001, 226002, 226003, 226004, 226005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_226011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 226006, 226007, 226008, 226009, 226010 },
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
function condition_EVENT_ANY_MONSTER_DIE_226011(context, evt)
	-- 判断变量"monsterDeathCount"为5
	if ScriptLib.GetGroupVariableValue(context, "monsterDeathCount") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_226011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101226, 2)
	
	return 0
end