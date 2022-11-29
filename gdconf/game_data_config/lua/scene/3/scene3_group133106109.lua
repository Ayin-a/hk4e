-- 基础信息
local base_info = {
	group_id = 133106109
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109002, monster_id = 20011301, pos = { x = -476.766, y = 183.324, z = 894.207 }, rot = { x = 0.000, y = 331.648, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 8 },
	{ config_id = 109003, monster_id = 20011201, pos = { x = -477.878, y = 180.898, z = 895.291 }, rot = { x = 0.000, y = 112.800, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 109004, monster_id = 20011201, pos = { x = -477.647, y = 180.895, z = 893.078 }, rot = { x = 0.000, y = 37.494, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 109005, monster_id = 20011201, pos = { x = -475.899, y = 180.907, z = 895.064 }, rot = { x = 0.000, y = 254.088, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 109006, monster_id = 20011201, pos = { x = -475.697, y = 180.919, z = 892.899 }, rot = { x = 0.000, y = 322.858, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 109001, gadget_id = 70300107, pos = { x = -476.728, y = 180.901, z = 894.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 109009, gadget_id = 70211011, pos = { x = -472.688, y = 180.700, z = 891.480 }, rot = { x = 8.093, y = 309.862, z = 353.664 }, level = 26, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1109007, name = "GADGET_STATE_CHANGE_109007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_109007", action = "action_EVENT_GADGET_STATE_CHANGE_109007" },
	{ config_id = 1109008, name = "ANY_MONSTER_DIE_109008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_109008", action = "action_EVENT_ANY_MONSTER_DIE_109008" }
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
		gadgets = { 109001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_109007", "ANY_MONSTER_DIE_109008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 109002, 109003, 109004, 109005, 109006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 109009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_109007(context, evt)
	if 109001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_109007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106109, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_109008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106109) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_109008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106109, 3)
	
	return 0
end