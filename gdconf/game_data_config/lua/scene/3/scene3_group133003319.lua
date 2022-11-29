-- 基础信息
local base_info = {
	group_id = 133003319
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1047, monster_id = 21010201, pos = { x = 2708.519, y = 245.381, z = -1145.798 }, rot = { x = 0.000, y = 315.510, z = 0.000 }, level = 15, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1048, monster_id = 21010301, pos = { x = 2705.292, y = 244.467, z = -1156.267 }, rot = { x = 0.000, y = 24.669, z = 0.000 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1049, monster_id = 21010401, pos = { x = 2707.418, y = 244.677, z = -1152.873 }, rot = { x = 0.000, y = 202.904, z = 0.000 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3301, gadget_id = 70211012, pos = { x = 2709.309, y = 244.588, z = -1155.620 }, rot = { x = 0.793, y = 292.118, z = 5.880 }, level = 26, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 3414, gadget_id = 70310003, pos = { x = 2710.194, y = 244.831, z = -1153.480 }, rot = { x = 0.000, y = 278.901, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3415, gadget_id = 70310003, pos = { x = 2708.686, y = 244.134, z = -1157.947 }, rot = { x = 0.000, y = 226.195, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3416, gadget_id = 70220013, pos = { x = 2704.592, y = 243.241, z = -1158.621 }, rot = { x = 2.949, y = 288.012, z = 11.419 }, level = 30, area_id = 1 },
	{ config_id = 3417, gadget_id = 70220013, pos = { x = 2706.759, y = 243.155, z = -1159.989 }, rot = { x = 347.234, y = 77.305, z = 355.231 }, level = 30, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000246, name = "ANY_MONSTER_DIE_246", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_246", action = "action_EVENT_ANY_MONSTER_DIE_246", tlog_tag = "望风山地_319_怪物营地_结算" }
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
		monsters = { 1047, 1048, 1049 },
		gadgets = { 3301, 3414, 3415, 3416, 3417 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_246" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_246(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_246(context, evt)
	-- 解锁目标3301
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3301, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end