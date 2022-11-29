-- 基础信息
local base_info = {
	group_id = 133315006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6005, monster_id = 26090801, pos = { x = 451.911, y = 151.463, z = 2498.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 6006, monster_id = 26090801, pos = { x = 453.334, y = 152.999, z = 2504.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 6012, monster_id = 26090701, pos = { x = 456.956, y = 152.290, z = 2500.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 20 },
	{ config_id = 6017, monster_id = 26090801, pos = { x = 457.031, y = 152.865, z = 2503.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 104, area_id = 20 },
	{ config_id = 6018, monster_id = 26090701, pos = { x = 456.302, y = 151.631, z = 2498.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 104, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6001, gadget_id = 70360001, pos = { x = 453.662, y = 151.554, z = 2498.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 6009, gadget_id = 71700402, pos = { x = 453.977, y = 152.115, z = 2500.667 }, rot = { x = 0.000, y = 95.211, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 6010, gadget_id = 70220103, pos = { x = 518.360, y = 131.502, z = 2400.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 6011, gadget_id = 70220103, pos = { x = 491.401, y = 134.334, z = 2424.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 6013, gadget_id = 70220103, pos = { x = 467.988, y = 136.382, z = 2459.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 6002, shape = RegionShape.SPHERE, radius = 15, pos = { x = 453.362, y = 152.313, z = 2501.558 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1006004, name = "MONSTER_BATTLE_6004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_6004" },
	{ config_id = 1006015, name = "ANY_MONSTER_DIE_6015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6015", action = "action_EVENT_ANY_MONSTER_DIE_6015" }
}

-- 变量
variables = {
	{ config_id = 1, name = "123", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 6007, gadget_id = 70500000, pos = { x = 454.117, y = 149.446, z = 2500.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9311, persistent = true, area_id = 20 }
	},
	triggers = {
		{ config_id = 1006003, name = "GATHER_6003", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_6003", action = "action_EVENT_GATHER_6003" },
		{ config_id = 1006008, name = "GROUP_LOAD_6008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6008", action = "action_EVENT_GROUP_LOAD_6008", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 6012, 6017, 6018 },
		gadgets = { 6010, 6011, 6013 },
		regions = { },
		triggers = { "MONSTER_BATTLE_6004", "ANY_MONSTER_DIE_6015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 6005, 6006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 6001, 6009 },
		regions = { 6002 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 6010, 6011, 6013 },
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_6004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315006, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133315006, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end