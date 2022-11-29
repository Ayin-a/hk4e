-- 基础信息
local base_info = {
	group_id = 133003001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 141, monster_id = 21010201, pos = { x = 2424.101, y = 206.824, z = -1275.960 }, rot = { x = 359.654, y = 73.386, z = 1.971 }, level = 2, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 410, monster_id = 21010201, pos = { x = 2425.401, y = 206.825, z = -1279.299 }, rot = { x = 1.506, y = 32.735, z = 0.968 }, level = 2, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 811, monster_id = 21010701, pos = { x = 2429.089, y = 206.308, z = -1267.992 }, rot = { x = 0.000, y = 20.537, z = 0.000 }, level = 2, drop_tag = "丘丘人", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 196, gadget_id = 70211012, pos = { x = 2409.324, y = 208.444, z = -1284.601 }, rot = { x = 0.000, y = 66.781, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 1367, gadget_id = 70310001, pos = { x = 2421.925, y = 208.571, z = -1282.495 }, rot = { x = 0.000, y = 180.766, z = 0.000 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 1368, gadget_id = 70310001, pos = { x = 2449.442, y = 205.771, z = -1249.946 }, rot = { x = 0.748, y = 279.393, z = 356.872 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 2427, gadget_id = 70220014, pos = { x = 2419.209, y = 206.785, z = -1272.630 }, rot = { x = 0.000, y = 298.396, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 2428, gadget_id = 70220014, pos = { x = 2420.864, y = 205.981, z = -1258.596 }, rot = { x = 0.000, y = 331.156, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 2429, gadget_id = 70220013, pos = { x = 2406.396, y = 206.634, z = -1271.523 }, rot = { x = 3.965, y = 19.304, z = 359.495 }, level = 5, area_id = 1 },
	{ config_id = 2458, gadget_id = 70220013, pos = { x = 2422.893, y = 207.194, z = -1292.159 }, rot = { x = 4.811, y = 10.030, z = 3.563 }, level = 5, area_id = 1 },
	{ config_id = 2459, gadget_id = 70220014, pos = { x = 2424.324, y = 207.272, z = -1292.273 }, rot = { x = 0.000, y = 331.156, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 2672, gadget_id = 70220014, pos = { x = 2419.818, y = 206.735, z = -1271.357 }, rot = { x = 0.000, y = 298.396, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 2673, gadget_id = 70220014, pos = { x = 2418.683, y = 206.774, z = -1271.799 }, rot = { x = 0.000, y = 298.396, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 2707, gadget_id = 70310001, pos = { x = 2410.507, y = 206.366, z = -1269.424 }, rot = { x = 3.455, y = 278.945, z = 359.589 }, level = 5, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 2708, gadget_id = 70220014, pos = { x = 2432.752, y = 205.896, z = -1256.814 }, rot = { x = 0.000, y = 298.396, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 2709, gadget_id = 70220014, pos = { x = 2433.079, y = 205.778, z = -1255.172 }, rot = { x = 0.000, y = 298.396, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 2710, gadget_id = 70220014, pos = { x = 2430.596, y = 205.953, z = -1256.880 }, rot = { x = 0.000, y = 298.396, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 3242, gadget_id = 70310001, pos = { x = 2452.126, y = 209.881, z = -1279.954 }, rot = { x = 356.835, y = 130.316, z = 358.554 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3902, gadget_id = 70310001, pos = { x = 2454.142, y = 210.041, z = -1286.166 }, rot = { x = 356.835, y = 130.316, z = 358.554 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3903, gadget_id = 70310001, pos = { x = 2442.137, y = 203.371, z = -1244.444 }, rot = { x = 0.748, y = 279.393, z = 356.872 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3905, gadget_id = 70310001, pos = { x = 2445.560, y = 206.896, z = -1260.453 }, rot = { x = 0.748, y = 279.393, z = 356.872 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4011, gadget_id = 70220013, pos = { x = 2414.015, y = 208.455, z = -1290.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4012, gadget_id = 70220013, pos = { x = 2412.667, y = 208.455, z = -1288.543 }, rot = { x = 0.000, y = 318.532, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4014, gadget_id = 70220013, pos = { x = 2410.404, y = 208.455, z = -1289.433 }, rot = { x = 0.000, y = 28.619, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4018, gadget_id = 70310001, pos = { x = 2409.017, y = 208.455, z = -1278.232 }, rot = { x = 3.455, y = 278.945, z = 359.589 }, level = 5, state = GadgetState.GearStart, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000013, name = "ANY_MONSTER_DIE_13", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13", action = "action_EVENT_ANY_MONSTER_DIE_13", tlog_tag = "新手区_主动线左方主营地_清剿完成" }
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
		-- description = suite_1,
		monsters = { 141, 410, 811 },
		gadgets = { 196, 1367, 1368, 2427, 2428, 2458, 2459, 2673, 3242, 3902, 3903, 3905, 4011, 4012, 4014, 4018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_13" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13(context, evt)
	-- 解锁目标196
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 196, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end