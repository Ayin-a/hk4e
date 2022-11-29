-- 基础信息
local base_info = {
	group_id = 133220417
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 417002, monster_id = 21011601, pos = { x = -2889.378, y = 203.614, z = -4202.143 }, rot = { x = 0.000, y = 210.016, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 417003, monster_id = 21010101, pos = { x = -2885.376, y = 203.425, z = -4206.631 }, rot = { x = 0.000, y = 255.055, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 11 },
	{ config_id = 417004, monster_id = 21011601, pos = { x = -2893.281, y = 203.613, z = -4201.762 }, rot = { x = 0.000, y = 150.928, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 11 },
	{ config_id = 417011, monster_id = 21020701, pos = { x = -2888.254, y = 202.964, z = -4211.870 }, rot = { x = 0.000, y = 324.155, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 417001, gadget_id = 70211002, pos = { x = -2893.274, y = 204.239, z = -4207.428 }, rot = { x = 358.539, y = 52.359, z = 0.711 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 417006, gadget_id = 70310004, pos = { x = -2892.064, y = 203.986, z = -4204.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 417007, gadget_id = 70220013, pos = { x = -2897.020, y = 203.872, z = -4207.657 }, rot = { x = 0.341, y = 15.529, z = 355.264 }, level = 27, area_id = 11 },
	{ config_id = 417008, gadget_id = 70220013, pos = { x = -2894.494, y = 204.071, z = -4208.888 }, rot = { x = 3.957, y = 305.490, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 417009, gadget_id = 70310001, pos = { x = -2895.785, y = 203.724, z = -4203.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 417010, gadget_id = 70310001, pos = { x = -2886.553, y = 203.106, z = -4208.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1417005, name = "ANY_MONSTER_DIE_417005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_417005", action = "action_EVENT_ANY_MONSTER_DIE_417005" }
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
		monsters = { 417002, 417003, 417004, 417011 },
		gadgets = { 417001, 417006, 417007, 417008, 417009, 417010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_417005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_417005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_417005(context, evt)
	-- 将configid为 417001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 417001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end