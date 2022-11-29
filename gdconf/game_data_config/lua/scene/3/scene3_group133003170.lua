-- 基础信息
local base_info = {
	group_id = 133003170
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1437, monster_id = 21010201, pos = { x = 2531.510, y = 205.358, z = -1124.966 }, rot = { x = 0.000, y = 161.281, z = 0.000 }, level = 4, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1438, monster_id = 21010701, pos = { x = 2527.883, y = 204.546, z = -1125.015 }, rot = { x = 0.000, y = 117.543, z = 0.000 }, level = 4, drop_tag = "丘丘人", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2700, gadget_id = 70220013, pos = { x = 2532.809, y = 205.707, z = -1121.089 }, rot = { x = 0.000, y = 251.861, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 2701, gadget_id = 70220013, pos = { x = 2536.375, y = 205.637, z = -1124.727 }, rot = { x = 1.060, y = 114.541, z = 359.594 }, level = 2, area_id = 1 },
	{ config_id = 4100, gadget_id = 70310004, pos = { x = 2532.276, y = 205.481, z = -1126.996 }, rot = { x = 0.000, y = 127.266, z = 0.000 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4110, gadget_id = 70211002, pos = { x = 2533.504, y = 205.339, z = -1130.383 }, rot = { x = 356.265, y = 279.517, z = 358.210 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000509, name = "ANY_MONSTER_DIE_509", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_509", action = "action_EVENT_ANY_MONSTER_DIE_509", tlog_tag = "新手区_主动线遗迹港口营地_清剿完成" }
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
	rand_suite = true
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
		monsters = { 1437, 1438 },
		gadgets = { 2700, 2701, 4100, 4110 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_509" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_509(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_509(context, evt)
	-- 解锁目标4110
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 4110, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end