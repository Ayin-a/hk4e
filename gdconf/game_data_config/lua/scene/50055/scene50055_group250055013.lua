-- 基础信息
local base_info = {
	group_id = 250055013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13001, monster_id = 20050201, pos = { x = 109.715, y = 10.654, z = 4.808 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 13002, monster_id = 20050601, pos = { x = 103.979, y = 10.654, z = 11.259 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 13003, monster_id = 21010501, pos = { x = 99.129, y = 10.654, z = 12.301 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 13004, monster_id = 21010901, pos = { x = 94.489, y = 10.654, z = 9.069 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 13005, monster_id = 21030601, pos = { x = 94.710, y = 10.654, z = 1.612 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 13006, monster_id = 20050201, pos = { x = 100.377, y = 10.654, z = -4.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 13007, monster_id = 20050401, pos = { x = 105.427, y = 10.654, z = -2.041 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 13008, monster_id = 20050601, pos = { x = 108.519, y = 10.654, z = 9.248 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 13009, monster_id = 20050701, pos = { x = 96.147, y = 10.654, z = -3.290 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 13010, monster_id = 21010701, pos = { x = 93.911, y = 10.654, z = 4.694 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 13011, monster_id = 21030101, pos = { x = 106.235, y = 10.654, z = 2.765 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 85, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13012, gadget_id = 70360010, pos = { x = 100.450, y = 10.731, z = 5.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13013, gadget_id = 70350003, pos = { x = 100.730, y = 10.451, z = -11.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 13014, gadget_id = 70350003, pos = { x = 100.812, y = 10.496, z = 21.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 13015, gadget_id = 70350003, pos = { x = 85.206, y = 10.451, z = 5.150 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 13016, gadget_id = 70350003, pos = { x = 116.985, y = 10.431, z = 4.995 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 13019, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 101.167, y = 10.750, z = 5.384 } }
}

-- 触发器
triggers = {
	{ config_id = 1013017, name = "GADGET_CREATE_13017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_13017", action = "action_EVENT_GADGET_CREATE_13017" },
	{ config_id = 1013018, name = "SELECT_OPTION_13018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_13018", action = "action_EVENT_SELECT_OPTION_13018" },
	{ config_id = 1013019, name = "ENTER_REGION_13019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13019", action = "action_EVENT_ENTER_REGION_13019" },
	{ config_id = 1013020, name = "ANY_MONSTER_DIE_13020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13020", action = "action_EVENT_ANY_MONSTER_DIE_13020" },
	{ config_id = 1013021, name = "ANY_MONSTER_DIE_13021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13021", action = "action_EVENT_ANY_MONSTER_DIE_13021" }
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
		monsters = { },
		gadgets = { 13012, 13013, 13014, 13015, 13016 },
		regions = { 13019 },
		triggers = { "GADGET_CREATE_13017", "SELECT_OPTION_13018", "ENTER_REGION_13019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 13001, 13006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_13020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 13007, 13008, 13009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_13021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_13017(context, evt)
	if 13012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_13017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250055013, 13012, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_13018(context, evt)
	-- 判断是gadgetid 13012 option_id 175
	if 13012 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_13018(context, evt)
	-- 将configid为 13012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 250055013 ；指定config：13012；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250055013, 13012, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055013, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13019(context, evt)
	if evt.param1 ~= 13019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13019(context, evt)
	-- 将configid为 13013 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13013, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13014 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13014, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13015 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13015, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13016 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13016, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055013, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13021(context, evt)
	-- 将configid为 13013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end