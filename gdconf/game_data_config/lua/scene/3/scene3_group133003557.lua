-- 基础信息
local base_info = {
	group_id = 133003557
}

-- Trigger变量
local defs = {
	elem = "Ice",
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
	{ config_id = 557001, monster_id = 22010202, pos = { x = 2368.310, y = 283.898, z = -1737.766 }, rot = { x = 0.000, y = 312.031, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 557002, monster_id = 22010203, pos = { x = 2362.650, y = 283.898, z = -1724.890 }, rot = { x = 0.000, y = 201.496, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 557003, monster_id = 21020501, pos = { x = 2366.377, y = 283.898, z = -1739.708 }, rot = { x = 0.000, y = 320.329, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 557004, monster_id = 24010101, pos = { x = 2362.650, y = 283.898, z = -1724.984 }, rot = { x = 0.000, y = 232.984, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 1 }
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
	{ config_id = 1557012, name = "ANY_MONSTER_DIE_557012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_557012", action = "action_EVENT_ANY_MONSTER_DIE_557012", trigger_count = 0 }
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
		triggers = { "ANY_MONSTER_DIE_557012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 557001, 557002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_557012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 557003, 557004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_557012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_557012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_557012(context, evt)
	ScriptLib.ExecuteGadgetLua(context, defs.head_group, defs.gadget_crucible, 5001, elemType_Reverse[defs.elem], 0)
	return 0
end