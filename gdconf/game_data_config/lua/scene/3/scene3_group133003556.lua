-- 基础信息
local base_info = {
	group_id = 133003556
}

-- Trigger变量
local defs = {
	elem = "Electric",
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
	{ config_id = 556001, monster_id = 23030102, pos = { x = 2366.681, y = 283.898, z = -1729.911 }, rot = { x = 0.000, y = 264.465, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 556002, monster_id = 20010604, pos = { x = 2369.397, y = 283.898, z = -1736.502 }, rot = { x = 0.000, y = 287.630, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 556003, monster_id = 20010702, pos = { x = 2365.344, y = 283.944, z = -1726.712 }, rot = { x = 0.000, y = 244.522, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 556004, monster_id = 21020501, pos = { x = 2369.116, y = 283.898, z = -1741.233 }, rot = { x = 0.000, y = 312.394, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 556005, monster_id = 24010101, pos = { x = 2361.756, y = 283.898, z = -1724.206 }, rot = { x = 0.000, y = 219.530, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 1 }
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
	{ config_id = 1556035, name = "ANY_MONSTER_DIE_556035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_556035", action = "action_EVENT_ANY_MONSTER_DIE_556035", trigger_count = 0 }
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
		triggers = { "ANY_MONSTER_DIE_556035" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 556001, 556002, 556003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_556035" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 556004, 556005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_556035" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_556035(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_556035(context, evt)
	ScriptLib.ExecuteGadgetLua(context, defs.head_group, defs.gadget_crucible, 5001, elemType_Reverse[defs.elem], 0)
	return 0
end