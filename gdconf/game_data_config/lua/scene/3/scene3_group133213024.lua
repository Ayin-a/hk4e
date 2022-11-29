-- 基础信息
local base_info = {
	group_id = 133213024
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 24001, monster_id = 25080101, pos = { x = -4028.673, y = 200.105, z = -3138.630 }, rot = { x = 0.000, y = 311.980, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 12 },
	{ config_id = 24004, monster_id = 25080101, pos = { x = -4031.100, y = 200.000, z = -3129.031 }, rot = { x = 0.000, y = 170.466, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1, area_id = 12 },
	{ config_id = 24005, monster_id = 25100101, pos = { x = -4039.285, y = 200.404, z = -3136.540 }, rot = { x = 0.000, y = 264.534, z = 0.000 }, level = 27, drop_tag = "高阶武士", pose_id = 1002, area_id = 12 },
	{ config_id = 24008, monster_id = 28040103, pos = { x = -4044.802, y = 200.000, z = -3135.052 }, rot = { x = 0.000, y = 296.826, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 24009, monster_id = 28040103, pos = { x = -4044.823, y = 200.000, z = -3136.955 }, rot = { x = 0.000, y = 251.039, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 24010, monster_id = 28040103, pos = { x = -4045.501, y = 200.000, z = -3136.215 }, rot = { x = 0.000, y = 46.273, z = 8.005 }, level = 27, drop_tag = "水族", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 24002, gadget_id = 70220052, pos = { x = -4034.111, y = 200.718, z = -3139.134 }, rot = { x = 0.000, y = 0.000, z = 8.005 }, level = 27, area_id = 12 },
	{ config_id = 24006, gadget_id = 70310004, pos = { x = -4023.620, y = 200.343, z = -3137.142 }, rot = { x = 0.000, y = 0.000, z = 8.005 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 24007, gadget_id = 70220051, pos = { x = -4032.358, y = 200.427, z = -3138.556 }, rot = { x = 0.000, y = 0.000, z = 8.005 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1024003, name = "MONSTER_BATTLE_24003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_24003", action = "action_EVENT_MONSTER_BATTLE_24003" }
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
		monsters = { 24005, 24008, 24009, 24010 },
		gadgets = { 24002, 24006, 24007 },
		regions = { },
		triggers = { "MONSTER_BATTLE_24003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 24001, 24004 },
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
function condition_EVENT_MONSTER_BATTLE_24003(context, evt)
	if 24005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_24003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213024, 2)
	
	return 0
end