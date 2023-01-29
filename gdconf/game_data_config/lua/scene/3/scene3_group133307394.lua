-- 基础信息
local base_info = {
	group_id = 133307394
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 394001, monster_id = 26090501, pos = { x = -1588.385, y = -21.463, z = 5813.962 }, rot = { x = 0.000, y = 258.703, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 394004, monster_id = 26090501, pos = { x = -1590.188, y = -21.493, z = 5818.904 }, rot = { x = 0.000, y = 75.037, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 394006, monster_id = 22010201, pos = { x = -1586.690, y = -21.200, z = 5816.006 }, rot = { x = 0.000, y = 269.572, z = 0.000 }, level = 32, drop_tag = "深渊法师", pose_id = 9013, area_id = 32 },
	{ config_id = 394007, monster_id = 22010301, pos = { x = -1587.067, y = -21.200, z = 5818.924 }, rot = { x = 0.000, y = 211.920, z = 0.000 }, level = 32, drop_tag = "深渊法师", pose_id = 9013, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 394002, gadget_id = 70211104, pos = { x = -1589.092, y = -21.462, z = 5816.525 }, rot = { x = 355.333, y = 263.134, z = 358.910 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 化冰出法师
	{ config_id = 1394008, name = "GADGET_STATE_CHANGE_394008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_394008", action = "action_EVENT_GADGET_STATE_CHANGE_394008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1394003, name = "ANY_MONSTER_DIE_394003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_394003", action = "action_EVENT_ANY_MONSTER_DIE_394003" },
		{ config_id = 1394005, name = "ANY_MONSTER_DIE_394005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_394005", action = "action_EVENT_ANY_MONSTER_DIE_394005" }
	}
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
		monsters = { 394001, 394004 },
		gadgets = { 394002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_394008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 394006, 394007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_394008(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133307394, 394002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_394008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307394, 2)
	
	return 0
end