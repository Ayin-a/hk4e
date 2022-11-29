-- 基础信息
local base_info = {
	group_id = 250056013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13001, monster_id = 25080101, pos = { x = -63.654, y = -0.142, z = -70.265 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 }, pose_id = 1 },
	{ config_id = 13002, monster_id = 25080201, pos = { x = -66.747, y = -0.160, z = -63.814 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 }, pose_id = 1 },
	{ config_id = 13003, monster_id = 25080301, pos = { x = -71.598, y = -0.145, z = -62.772 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 }, pose_id = 1 },
	{ config_id = 13004, monster_id = 25080101, pos = { x = -76.237, y = -0.154, z = -66.004 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 }, pose_id = 1 },
	{ config_id = 13005, monster_id = 25080201, pos = { x = -76.016, y = -0.154, z = -73.461 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 }, pose_id = 1 },
	{ config_id = 13006, monster_id = 25080301, pos = { x = -70.350, y = -0.160, z = -76.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 }, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13007, gadget_id = 70360001, pos = { x = -69.951, y = -0.160, z = -69.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13008, gadget_id = 70290137, pos = { x = -69.997, y = 0.118, z = -84.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 13009, gadget_id = 70290137, pos = { x = -69.938, y = 0.000, z = -55.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 13010, gadget_id = 70290137, pos = { x = -84.765, y = 0.112, z = -70.077 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 13011, gadget_id = 70290137, pos = { x = -54.856, y = 0.206, z = -70.078 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 13014, shape = RegionShape.CUBIC, size = { x = 25.000, y = 10.000, z = 25.000 }, pos = { x = -69.559, y = -0.160, z = -69.689 } }
}

-- 触发器
triggers = {
	{ config_id = 1013012, name = "GADGET_CREATE_13012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_13012", action = "action_EVENT_GADGET_CREATE_13012" },
	{ config_id = 1013013, name = "SELECT_OPTION_13013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_13013", action = "action_EVENT_SELECT_OPTION_13013" },
	{ config_id = 1013014, name = "ENTER_REGION_13014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13014", action = "action_EVENT_ENTER_REGION_13014" },
	{ config_id = 1013015, name = "ANY_MONSTER_DIE_13015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13015", action = "action_EVENT_ANY_MONSTER_DIE_13015" },
	{ config_id = 1013016, name = "ANY_MONSTER_DIE_13016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13016", action = "action_EVENT_ANY_MONSTER_DIE_13016" },
	{ config_id = 1013017, name = "SELECT_OPTION_13017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_13017", action = "action_EVENT_SELECT_OPTION_13017" }
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
		gadgets = { 13007, 13008, 13009, 13010, 13011 },
		regions = { 13014 },
		triggers = { "GADGET_CREATE_13012", "SELECT_OPTION_13013", "ENTER_REGION_13014", "SELECT_OPTION_13017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 13001, 13002, 13003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_13016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 13004, 13005, 13006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_13015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_13012(context, evt)
	if 13007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_13012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250056013, 13007, {4102,4103}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_13013(context, evt)
	-- 判断是gadgetid 13007 option_id 4102
	if 13007 ~= evt.param1 then
		return false	
	end
	
	if 4102 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_13013(context, evt)
	-- 删除指定group： 250056013 ；指定config：13007；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250056013, 13007, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 250056013 ；指定config：13007；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250056013, 13007, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250056013, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13014(context, evt)
	if evt.param1 ~= 13014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13014(context, evt)
	-- 将configid为 13008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13015(context, evt)
	-- 将configid为 13008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13016(context, evt)
	-- 将configid为 13008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_13017(context, evt)
	-- 判断是gadgetid 13007 option_id 4103
	if 13007 ~= evt.param1 then
		return false	
	end
	
	if 4103 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_13017(context, evt)
	-- 删除指定group： 250056013 ；指定config：13007；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250056013, 13007, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 250056013 ；指定config：13007；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250056013, 13007, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250056013, 3)
	
	return 0
end