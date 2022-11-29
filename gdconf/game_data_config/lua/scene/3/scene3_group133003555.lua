-- 基础信息
local base_info = {
	group_id = 133003555
}

-- Trigger变量
local defs = {
	elem = "Fire",
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
	{ config_id = 555001, monster_id = 22010104, pos = { x = 2370.249, y = 283.898, z = -1739.434 }, rot = { x = 0.000, y = 306.115, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 1 },
	{ config_id = 555005, monster_id = 22010104, pos = { x = 2363.377, y = 283.898, z = -1724.516 }, rot = { x = 0.000, y = 202.636, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 6105 }, area_id = 1 },
	{ config_id = 555006, monster_id = 21020501, pos = { x = 2371.272, y = 283.907, z = -1739.614 }, rot = { x = 0.000, y = 281.172, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 555007, monster_id = 24010101, pos = { x = 2364.172, y = 283.898, z = -1723.959 }, rot = { x = 0.000, y = 231.959, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 1 }
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
	{ config_id = 1555019, name = "ANY_MONSTER_DIE_555019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_555019", action = "action_EVENT_ANY_MONSTER_DIE_555019", trigger_count = 0 }
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
		triggers = { "ANY_MONSTER_DIE_555019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = shui,
		monsters = { 555001, 555005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_555019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = huo,
		monsters = { 555006, 555007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_555019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_555019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_555019(context, evt)
	ScriptLib.ExecuteGadgetLua(context, defs.head_group, defs.gadget_crucible, 5001, elemType_Reverse[defs.elem], 0)
	return 0
end