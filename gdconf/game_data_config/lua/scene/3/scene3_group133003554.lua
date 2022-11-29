-- 基础信息
local base_info = {
	group_id = 133003554
}

-- Trigger变量
local defs = {
	elem = "Water",
	head_group = 305001001,
	gadget_crucible = 1001
}

-- DEFS_MISCS
--元素类型字典
local elemType_Reverse = {
	["Water"] = 1,
	["Fire"] = 2,
	["Electric"] = 3,
	["Ice"] = 4,
	["Wind"] = 5,
	["Rock"] = 6,
	["Grass"] = 7
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 554002, monster_id = 22010303, pos = { x = 2366.525, y = 283.898, z = -1738.606 }, rot = { x = 0.000, y = 289.846, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, isElite = true, area_id = 1 },
	{ config_id = 554003, monster_id = 22010302, pos = { x = 2364.202, y = 283.898, z = -1725.285 }, rot = { x = 0.000, y = 238.028, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 6106 }, isElite = true, area_id = 1 },
	{ config_id = 554004, monster_id = 21020501, pos = { x = 2371.333, y = 283.898, z = -1739.662 }, rot = { x = 0.000, y = 333.623, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, isElite = true, area_id = 1 },
	{ config_id = 554005, monster_id = 24010101, pos = { x = 2362.819, y = 283.898, z = -1723.769 }, rot = { x = 0.000, y = 196.548, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, isElite = true, pose_id = 100, area_id = 1 }
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
	{ config_id = 1554001, name = "ANY_MONSTER_DIE_554001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_554001", action = "action_EVENT_ANY_MONSTER_DIE_554001", trigger_count = 0 }
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
		triggers = { "ANY_MONSTER_DIE_554001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 554002, 554003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_554001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 554004, 554005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_554001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_554001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_554001(context, evt)
	ScriptLib.ExecuteGadgetLua(context, defs.head_group, defs.gadget_crucible, 5001, elemType_Reverse[defs.elem], 0)
	return 0
end