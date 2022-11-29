-- 基础信息
local base_info = {
	group_id = 155005214
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 214001, monster_id = 21010101, pos = { x = 457.536, y = 228.068, z = 242.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9016, area_id = 200 },
	{ config_id = 214002, monster_id = 21010101, pos = { x = 458.847, y = 227.499, z = 245.750 }, rot = { x = 0.000, y = 259.091, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9016, area_id = 200 },
	{ config_id = 214003, monster_id = 21020101, pos = { x = 451.642, y = 230.178, z = 229.159 }, rot = { x = 0.000, y = 74.115, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", area_id = 200 },
	{ config_id = 214004, monster_id = 21010201, pos = { x = 469.372, y = 225.373, z = 239.983 }, rot = { x = 0.000, y = 87.226, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9003, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 214005, gadget_id = 70300089, pos = { x = 455.198, y = 228.220, z = 242.763 }, rot = { x = 6.938, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 214006, gadget_id = 70300089, pos = { x = 465.187, y = 227.437, z = 226.010 }, rot = { x = 11.274, y = 0.000, z = 350.896 }, level = 36, area_id = 200 },
	{ config_id = 214007, gadget_id = 70220014, pos = { x = 456.295, y = 228.022, z = 240.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 214008, gadget_id = 70220014, pos = { x = 455.006, y = 227.987, z = 240.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 214009, gadget_id = 70220014, pos = { x = 456.054, y = 227.894, z = 239.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 214011, gadget_id = 70211002, pos = { x = 457.773, y = 227.853, z = 239.907 }, rot = { x = 0.000, y = 52.595, z = 0.000 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1214010, name = "ANY_MONSTER_DIE_214010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_214010", action = "action_EVENT_ANY_MONSTER_DIE_214010" }
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
		monsters = { 214001, 214002, 214003, 214004 },
		gadgets = { 214005, 214006, 214007, 214008, 214009, 214011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_214010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_214010(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 155005214) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_214010(context, evt)
	-- 将configid为 214011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 214011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end