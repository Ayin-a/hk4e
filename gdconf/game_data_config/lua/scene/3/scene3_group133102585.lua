-- 基础信息
local base_info = {
	group_id = 133102585
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 585004, monster_id = 21010201, pos = { x = 1545.579, y = 261.939, z = -45.437 }, rot = { x = 0.000, y = 28.834, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 585005, monster_id = 21010201, pos = { x = 1538.467, y = 261.678, z = -43.118 }, rot = { x = 0.000, y = 61.932, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 585006, monster_id = 21010501, pos = { x = 1541.664, y = 267.820, z = -52.446 }, rot = { x = 0.000, y = 7.369, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 585002, gadget_id = 70211012, pos = { x = 1541.781, y = 262.149, z = -47.337 }, rot = { x = 3.501, y = 0.086, z = 2.814 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 585008, gadget_id = 70220013, pos = { x = 1544.906, y = 262.602, z = -51.949 }, rot = { x = 1.577, y = 0.076, z = 5.498 }, level = 16, area_id = 5 },
	{ config_id = 585009, gadget_id = 70220005, pos = { x = 1542.933, y = 267.824, z = -52.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 585011, gadget_id = 70220014, pos = { x = 1530.821, y = 261.446, z = -47.053 }, rot = { x = 2.835, y = 0.114, z = 4.598 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1585003, name = "ANY_MONSTER_DIE_585003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_585003", action = "action_EVENT_ANY_MONSTER_DIE_585003" }
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
		monsters = { 585004, 585005, 585006 },
		gadgets = { 585002, 585008, 585009, 585011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_585003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_585003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_585003(context, evt)
	-- 将configid为 585002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 585002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end