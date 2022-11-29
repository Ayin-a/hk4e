-- 基础信息
local base_info = {
	group_id = 133104037
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 171, monster_id = 21010201, pos = { x = 213.962, y = 209.708, z = 38.052 }, rot = { x = 352.066, y = 300.876, z = 359.404 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 172, monster_id = 21010601, pos = { x = 213.469, y = 209.918, z = 41.125 }, rot = { x = 356.533, y = 211.692, z = 7.274 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 173, monster_id = 21030201, pos = { x = 209.063, y = 210.561, z = 40.838 }, rot = { x = 8.683, y = 117.894, z = 2.574 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, area_id = 9 },
	{ config_id = 177, monster_id = 21010501, pos = { x = 211.251, y = 210.005, z = 37.330 }, rot = { x = 0.350, y = 32.886, z = 349.678 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 68, gadget_id = 70211012, pos = { x = 209.151, y = 210.428, z = 38.735 }, rot = { x = 5.837, y = 65.586, z = 353.471 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 37001, gadget_id = 70310006, pos = { x = 212.025, y = 210.058, z = 39.423 }, rot = { x = 355.557, y = 0.174, z = 352.005 }, level = 19, area_id = 9 },
	{ config_id = 37002, gadget_id = 70220013, pos = { x = 213.215, y = 209.582, z = 35.625 }, rot = { x = 353.868, y = 0.787, z = 351.957 }, level = 19, area_id = 9 },
	{ config_id = 37003, gadget_id = 70220013, pos = { x = 211.031, y = 210.283, z = 43.645 }, rot = { x = 359.040, y = 359.655, z = 349.387 }, level = 19, area_id = 9 },
	{ config_id = 37004, gadget_id = 70220014, pos = { x = 216.910, y = 209.458, z = 41.350 }, rot = { x = 358.195, y = 359.892, z = 352.002 }, level = 19, area_id = 9 },
	{ config_id = 37005, gadget_id = 70220014, pos = { x = 217.482, y = 209.361, z = 40.129 }, rot = { x = 359.061, y = 359.648, z = 352.881 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000051, name = "ANY_MONSTER_DIE_51", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51", action = "action_EVENT_ANY_MONSTER_DIE_51" }
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
		monsters = { 171, 172, 173, 177 },
		gadgets = { 68, 37001, 37002, 37003, 37004, 37005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_51" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51(context, evt)
	-- 将configid为 68 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 68, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end