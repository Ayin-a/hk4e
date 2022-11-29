-- 基础信息
local base_info = {
	group_id = 133104417
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 417001, monster_id = 21011201, pos = { x = -132.199, y = 292.778, z = 139.343 }, rot = { x = 5.984, y = 153.680, z = 0.026 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 417004, monster_id = 21010201, pos = { x = -126.861, y = 292.942, z = 144.047 }, rot = { x = 0.000, y = 113.356, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 7 },
	{ config_id = 417005, monster_id = 21010201, pos = { x = -119.581, y = 291.674, z = 145.878 }, rot = { x = 353.971, y = 214.031, z = 14.928 }, level = 17, drop_tag = "丘丘人", disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 417002, gadget_id = 70211012, pos = { x = -123.603, y = 292.762, z = 146.835 }, rot = { x = 14.723, y = 147.329, z = 5.050 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 417006, gadget_id = 70310006, pos = { x = -125.215, y = 292.685, z = 143.707 }, rot = { x = 355.586, y = 0.343, z = 351.119 }, level = 19, area_id = 7 },
	{ config_id = 417007, gadget_id = 70220013, pos = { x = -118.324, y = 291.519, z = 148.187 }, rot = { x = 349.768, y = 1.415, z = 344.290 }, level = 19, area_id = 7 },
	{ config_id = 417008, gadget_id = 70220013, pos = { x = -118.036, y = 291.244, z = 144.983 }, rot = { x = 0.000, y = 0.000, z = 347.660 }, level = 19, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1417003, name = "ANY_MONSTER_DIE_417003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_417003", action = "action_EVENT_ANY_MONSTER_DIE_417003" }
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
		monsters = { 417001, 417004, 417005 },
		gadgets = { 417002, 417006, 417007, 417008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_417003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_417003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_417003(context, evt)
	-- 将configid为 417002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 417002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end