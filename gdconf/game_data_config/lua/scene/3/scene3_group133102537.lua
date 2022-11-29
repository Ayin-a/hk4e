-- 基础信息
local base_info = {
	group_id = 133102537
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 537001, monster_id = 21010601, pos = { x = 1208.512, y = 201.159, z = 857.997 }, rot = { x = 0.000, y = 48.236, z = 0.000 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 6 },
	{ config_id = 537004, monster_id = 21011201, pos = { x = 1211.653, y = 200.806, z = 857.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 6 },
	{ config_id = 537006, monster_id = 21011201, pos = { x = 1211.802, y = 200.868, z = 860.968 }, rot = { x = 0.000, y = 212.243, z = 0.000 }, level = 22, drop_tag = "丘丘人", pose_id = 9003, area_id = 6 },
	{ config_id = 537010, monster_id = 21030301, pos = { x = 1209.192, y = 201.607, z = 861.837 }, rot = { x = 0.000, y = 137.818, z = 0.000 }, level = 22, drop_tag = "丘丘萨满", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 537002, gadget_id = 70211012, pos = { x = 1210.539, y = 200.950, z = 854.648 }, rot = { x = 0.000, y = 11.138, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 537005, gadget_id = 70310006, pos = { x = 1210.359, y = 200.940, z = 858.996 }, rot = { x = 357.277, y = 359.752, z = 351.140 }, level = 19, area_id = 6 },
	{ config_id = 537007, gadget_id = 70220013, pos = { x = 1201.048, y = 202.204, z = 857.235 }, rot = { x = 345.252, y = 321.929, z = 358.228 }, level = 19, area_id = 6 },
	{ config_id = 537008, gadget_id = 70220013, pos = { x = 1216.753, y = 200.569, z = 862.954 }, rot = { x = 355.356, y = 359.366, z = 344.386 }, level = 19, area_id = 6 },
	{ config_id = 537009, gadget_id = 70220014, pos = { x = 1216.725, y = 200.523, z = 861.439 }, rot = { x = 359.101, y = 359.741, z = 359.109 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1537003, name = "ANY_MONSTER_DIE_537003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_537003", action = "action_EVENT_ANY_MONSTER_DIE_537003" }
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
		monsters = { 537001, 537004, 537006, 537010 },
		gadgets = { 537002, 537005, 537007, 537008, 537009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_537003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_537003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_537003(context, evt)
	-- 将configid为 537002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 537002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end