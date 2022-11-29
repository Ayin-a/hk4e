-- 基础信息
local base_info = {
	group_id = 250055014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14001, monster_id = 25010201, pos = { x = 107.159, y = 10.340, z = -63.775 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 14002, monster_id = 25030201, pos = { x = 104.138, y = 10.341, z = -58.698 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 14003, monster_id = 25010201, pos = { x = 95.414, y = 10.341, z = -58.533 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 14006, monster_id = 23050101, pos = { x = 100.536, y = 10.339, z = -72.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 14007, monster_id = 25030301, pos = { x = 105.388, y = 10.339, z = -71.715 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 14009, monster_id = 25030301, pos = { x = 95.572, y = 10.344, z = -71.070 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 14010, monster_id = 25010301, pos = { x = 93.607, y = 10.340, z = -64.158 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 14011, monster_id = 25010601, pos = { x = 107.234, y = 10.341, z = -67.417 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14012, gadget_id = 70360001, pos = { x = 101.098, y = 10.494, z = -64.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14013, gadget_id = 70290137, pos = { x = 100.755, y = 10.999, z = -79.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14014, gadget_id = 70290137, pos = { x = 100.971, y = 10.913, z = -49.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14015, gadget_id = 70290137, pos = { x = 86.000, y = 10.949, z = -64.908 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14016, gadget_id = 70290137, pos = { x = 115.800, y = 10.913, z = -64.961 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 14019, shape = RegionShape.CUBIC, size = { x = 25.000, y = 10.000, z = 25.000 }, pos = { x = 100.836, y = 10.514, z = -64.573 } }
}

-- 触发器
triggers = {
	{ config_id = 1014017, name = "GADGET_CREATE_14017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_14017", action = "action_EVENT_GADGET_CREATE_14017" },
	{ config_id = 1014018, name = "SELECT_OPTION_14018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14018", action = "action_EVENT_SELECT_OPTION_14018" },
	{ config_id = 1014019, name = "ENTER_REGION_14019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14019", action = "action_EVENT_ENTER_REGION_14019" },
	{ config_id = 1014020, name = "ANY_MONSTER_DIE_14020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14020", action = "action_EVENT_ANY_MONSTER_DIE_14020" },
	{ config_id = 1014021, name = "ANY_MONSTER_DIE_14021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14021", action = "action_EVENT_ANY_MONSTER_DIE_14021" }
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
		gadgets = { 14012, 14013, 14014, 14015, 14016 },
		regions = { 14019 },
		triggers = { "GADGET_CREATE_14017", "SELECT_OPTION_14018", "ENTER_REGION_14019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 14001, 14002, 14003, 14010, 14011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 14006, 14007, 14009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_14017(context, evt)
	if 14012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_14017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250055014, 14012, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14018(context, evt)
	-- 判断是gadgetid 14012 option_id 175
	if 14012 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14018(context, evt)
	-- 删除指定group： 250055014 ；指定config：14012；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250055014, 14012, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055014, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14019(context, evt)
	if evt.param1 ~= 14019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14019(context, evt)
	-- 将configid为 14013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055014, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14021(context, evt)
	-- 将configid为 14013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end