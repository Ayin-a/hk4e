-- 基础信息
local base_info = {
	group_id = 133102522
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 522001, monster_id = 21030201, pos = { x = 1598.674, y = 291.130, z = 564.018 }, rot = { x = 0.000, y = 90.653, z = 0.000 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, area_id = 5 },
	{ config_id = 522004, monster_id = 21010501, pos = { x = 1600.683, y = 289.982, z = 561.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 522005, monster_id = 21010501, pos = { x = 1602.429, y = 291.385, z = 565.243 }, rot = { x = 0.000, y = 215.054, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 522006, monster_id = 21010501, pos = { x = 1595.649, y = 291.257, z = 566.921 }, rot = { x = 0.000, y = 142.244, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 522002, gadget_id = 70211012, pos = { x = 1600.569, y = 292.048, z = 567.671 }, rot = { x = 16.725, y = 177.725, z = 359.022 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 522007, gadget_id = 70310006, pos = { x = 1600.975, y = 290.504, z = 563.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 522008, gadget_id = 70310001, pos = { x = 1598.604, y = 289.328, z = 561.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 522009, gadget_id = 70310001, pos = { x = 1604.451, y = 290.819, z = 564.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1522003, name = "ANY_MONSTER_DIE_522003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_522003", action = "action_EVENT_ANY_MONSTER_DIE_522003" },
	{ config_id = 1522010, name = "GADGET_CREATE_522010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_522010", action = "action_EVENT_GADGET_CREATE_522010" }
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
		monsters = { 522001, 522004, 522005, 522006 },
		gadgets = { 522002, 522007, 522008, 522009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_522003", "GADGET_CREATE_522010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_522003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_522003(context, evt)
	-- 将configid为 522002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 522002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_522010(context, evt)
	if 522002 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_522010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 522004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 522005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 522006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 522001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end