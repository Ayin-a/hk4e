-- 基础信息
local base_info = {
	group_id = 244003006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 21011301, pos = { x = -292.040, y = 31.503, z = 165.428 }, rot = { x = 0.000, y = 58.100, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6111 } },
	{ config_id = 6002, monster_id = 21011401, pos = { x = -289.970, y = 31.523, z = 162.279 }, rot = { x = 0.000, y = 58.100, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6111 } },
	{ config_id = 6003, monster_id = 21011301, pos = { x = -292.080, y = 31.761, z = 174.494 }, rot = { x = 0.000, y = 120.498, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6111 } },
	{ config_id = 6004, monster_id = 21011401, pos = { x = -289.611, y = 31.538, z = 177.436 }, rot = { x = 0.000, y = 120.498, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6111 } },
	{ config_id = 6005, monster_id = 21010901, pos = { x = -292.048, y = 31.505, z = 165.458 }, rot = { x = 0.000, y = 58.100, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6111 } },
	{ config_id = 6006, monster_id = 21010701, pos = { x = -289.978, y = 31.522, z = 162.310 }, rot = { x = 0.000, y = 58.100, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6111 } },
	{ config_id = 6007, monster_id = 21010901, pos = { x = -292.089, y = 31.761, z = 174.525 }, rot = { x = 0.000, y = 120.498, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6111 } },
	{ config_id = 6008, monster_id = 21010701, pos = { x = -289.619, y = 31.538, z = 177.467 }, rot = { x = 0.000, y = 120.498, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6111 } },
	{ config_id = 6009, monster_id = 20010801, pos = { x = -292.131, y = 31.494, z = 165.303 }, rot = { x = 0.000, y = 58.100, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6111 } },
	{ config_id = 6010, monster_id = 20010801, pos = { x = -290.061, y = 31.534, z = 162.155 }, rot = { x = 0.000, y = 58.100, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6111 } },
	{ config_id = 6011, monster_id = 20010801, pos = { x = -292.171, y = 31.762, z = 174.370 }, rot = { x = 0.000, y = 120.498, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6111 } },
	{ config_id = 6012, monster_id = 20010801, pos = { x = -289.702, y = 31.541, z = 177.313 }, rot = { x = 0.000, y = 120.498, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6111 } }
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
	{ config_id = 1006013, name = "ANY_MONSTER_DIE_6013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6013", action = "", trigger_count = 0 },
	{ config_id = 1006014, name = "ANY_MONSTER_DIE_6014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6014", action = "", trigger_count = 0 },
	{ config_id = 1006015, name = "ANY_MONSTER_DIE_6015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6015", action = "", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 0
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 6001, 6002, 6003, 6004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 6005, 6006, 6007, 6008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6014" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 6009, 6010, 6011, 6012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end