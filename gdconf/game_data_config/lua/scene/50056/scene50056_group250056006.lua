-- 基础信息
local base_info = {
	group_id = 250056006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 21020401, pos = { x = -62.562, y = -0.460, z = 139.693 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 6002, monster_id = 21030101, pos = { x = -75.951, y = -0.460, z = 146.337 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 6003, monster_id = 21030601, pos = { x = -76.438, y = -0.460, z = 134.493 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 6004, monster_id = 21030601, pos = { x = -63.275, y = -0.460, z = 145.764 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 6005, monster_id = 21020401, pos = { x = -78.067, y = -0.460, z = 140.076 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 6006, monster_id = 21030101, pos = { x = -63.248, y = -0.460, z = 134.681 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6007, gadget_id = 70360001, pos = { x = -69.842, y = -0.460, z = 140.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6008, gadget_id = 70290137, pos = { x = -69.912, y = 0.150, z = 125.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6009, gadget_id = 70290137, pos = { x = -69.899, y = 0.206, z = 155.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6010, gadget_id = 70290137, pos = { x = -84.764, y = 0.150, z = 140.035 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6011, gadget_id = 70290137, pos = { x = -54.813, y = 0.124, z = 140.043 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 6014, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = -69.340, y = -0.460, z = 140.269 } }
}

-- 触发器
triggers = {
	{ config_id = 1006012, name = "GADGET_CREATE_6012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_6012", action = "action_EVENT_GADGET_CREATE_6012" },
	{ config_id = 1006013, name = "SELECT_OPTION_6013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6013", action = "action_EVENT_SELECT_OPTION_6013" },
	{ config_id = 1006014, name = "ENTER_REGION_6014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6014", action = "action_EVENT_ENTER_REGION_6014" },
	{ config_id = 1006015, name = "ANY_MONSTER_DIE_6015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6015", action = "action_EVENT_ANY_MONSTER_DIE_6015" },
	{ config_id = 1006016, name = "ANY_MONSTER_DIE_6016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6016", action = "action_EVENT_ANY_MONSTER_DIE_6016" },
	{ config_id = 1006017, name = "SELECT_OPTION_6017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6017", action = "action_EVENT_SELECT_OPTION_6017" }
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
		gadgets = { 6007, 6008, 6009, 6010, 6011 },
		regions = { 6014 },
		triggers = { "GADGET_CREATE_6012", "SELECT_OPTION_6013", "ENTER_REGION_6014", "SELECT_OPTION_6017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 6002, 6003, 6005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 6001, 6004, 6006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_6012(context, evt)
	if 6007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_6012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250056006, 6007, {4102,4103}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6013(context, evt)
	-- 判断是gadgetid 6007 option_id 4102
	if 6007 ~= evt.param1 then
		return false	
	end
	
	if 4102 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6013(context, evt)
	-- 删除指定group： 250056006 ；指定config：6007；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250056006, 6007, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 250056006 ；指定config：6007；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250056006, 6007, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250056006, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6014(context, evt)
	if evt.param1 ~= 6014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6014(context, evt)
	-- 将configid为 6008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6015(context, evt)
	-- 将configid为 6008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6016(context, evt)
	-- 将configid为 6008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6017(context, evt)
	-- 判断是gadgetid 6007 option_id 4103
	if 6007 ~= evt.param1 then
		return false	
	end
	
	if 4103 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6017(context, evt)
	-- 删除指定group： 250056006 ；指定config：6007；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250056006, 6007, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 250056006 ；指定config：6007；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250056006, 6007, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250056006, 3)
	
	return 0
end