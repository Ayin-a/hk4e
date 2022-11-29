-- 基础信息
local base_info = {
	group_id = 220012005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21010301, pos = { x = 177.935, y = 42.000, z = 120.214 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5002, monster_id = 21010301, pos = { x = 177.868, y = 42.000, z = 121.633 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5003, monster_id = 21010301, pos = { x = 180.019, y = 42.000, z = 120.138 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5004, monster_id = 21010301, pos = { x = 180.103, y = 42.000, z = 121.614 }, rot = { x = 0.000, y = 273.030, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5005, monster_id = 20010901, pos = { x = 190.434, y = 42.100, z = 120.890 }, rot = { x = 0.000, y = 274.725, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5006, gadget_id = 70320001, pos = { x = 86.280, y = 39.517, z = 119.762 }, rot = { x = 0.000, y = 323.100, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5007, gadget_id = 70320001, pos = { x = 98.629, y = 39.453, z = 123.757 }, rot = { x = 0.000, y = 144.075, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5008, gadget_id = 70350002, pos = { x = 173.949, y = 42.000, z = 121.020 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5009, gadget_id = 70350002, pos = { x = 190.472, y = 42.000, z = 137.663 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5010, gadget_id = 70320001, pos = { x = 112.875, y = 39.483, z = 120.756 }, rot = { x = 0.000, y = 133.602, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 5, shape = RegionShape.SPHERE, radius = 12.11, pos = { x = 139.771, y = 39.516, z = 121.388 } }
}

-- 触发器
triggers = {
	{ config_id = 1000005, name = "ENTER_REGION_5", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5", action = "action_EVENT_ENTER_REGION_5", forbid_guest = false },
	{ config_id = 1000006, name = "ANY_MONSTER_DIE_6", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6", action = "action_EVENT_ANY_MONSTER_DIE_6", trigger_count = 0 }
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
		monsters = { 5005 },
		gadgets = { 5006, 5007, 5008, 5009, 5010 },
		regions = { 5 },
		triggers = { "ENTER_REGION_5", "ANY_MONSTER_DIE_6" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5(context, evt)
	if evt.param1 ~= 5 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5(context, evt)
	-- 将configid为 5008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5001, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5002, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5003, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5004, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 将configid为 5009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end