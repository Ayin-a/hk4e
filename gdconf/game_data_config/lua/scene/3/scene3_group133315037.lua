-- 基础信息
local base_info = {
	group_id = 133315037
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37001, monster_id = 22010101, pos = { x = 530.925, y = 137.058, z = 2383.699 }, rot = { x = 0.000, y = 225.272, z = 0.000 }, level = 27, drop_tag = "深渊法师", isElite = true, pose_id = 9013, area_id = 20 },
	{ config_id = 37002, monster_id = 21010101, pos = { x = 528.742, y = 135.762, z = 2383.480 }, rot = { x = 0.000, y = 152.030, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 20 },
	{ config_id = 37003, monster_id = 21010101, pos = { x = 528.991, y = 136.118, z = 2381.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 37004, gadget_id = 70300107, pos = { x = 530.032, y = 136.475, z = 2382.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 37006, gadget_id = 70500000, pos = { x = 536.056, y = 135.370, z = 2385.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9311, persistent = true, area_id = 20 },
	{ config_id = 37011, gadget_id = 70360001, pos = { x = 540.582, y = 139.275, z = 2389.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 20 },
	{ config_id = 37012, gadget_id = 71700402, pos = { x = 535.625, y = 138.383, z = 2384.649 }, rot = { x = 0.000, y = 324.447, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 37010, shape = RegionShape.SPHERE, radius = 15, pos = { x = 531.219, y = 137.073, z = 2383.699 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1037005, name = "ANY_MONSTER_DIE_37005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_37005", action = "action_EVENT_ANY_MONSTER_DIE_37005" }
}

-- 变量
variables = {
	{ config_id = 1, name = "123", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1037007, name = "GATHER_37007", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_37007", action = "action_EVENT_GATHER_37007" },
		{ config_id = 1037008, name = "GROUP_LOAD_37008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_37008", action = "action_EVENT_GROUP_LOAD_37008", trigger_count = 0 },
		{ config_id = 1037009, name = "GROUP_LOAD_37009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_37009", action = "action_EVENT_GROUP_LOAD_37009", trigger_count = 0 }
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
		monsters = { 37001, 37002, 37003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_37005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 37011, 37012 },
		regions = { 37010 },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_37005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_37005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133315037, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"