-- 基础信息
local base_info = {
	group_id = 250056014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14001, monster_id = 23010101, pos = { x = 76.763, y = -0.139, z = -69.844 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 14002, monster_id = 23010501, pos = { x = 74.528, y = -0.160, z = -64.173 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 14003, monster_id = 23010401, pos = { x = 74.558, y = -0.160, z = -76.119 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 14004, monster_id = 23010101, pos = { x = 62.855, y = -0.132, z = -73.093 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 14005, monster_id = 23010101, pos = { x = 63.019, y = -0.153, z = -66.331 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14006, gadget_id = 70360001, pos = { x = 70.005, y = -0.109, z = -69.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14007, gadget_id = 70290137, pos = { x = 70.062, y = 0.206, z = -84.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14008, gadget_id = 70290137, pos = { x = 70.069, y = 0.206, z = -54.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14009, gadget_id = 70290137, pos = { x = 55.223, y = 0.112, z = -69.937 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14010, gadget_id = 70290137, pos = { x = 85.127, y = 0.166, z = -69.913 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 14014, shape = RegionShape.CUBIC, size = { x = 25.000, y = 10.000, z = 25.000 }, pos = { x = 69.155, y = -0.135, z = -69.755 } }
}

-- 触发器
triggers = {
	{ config_id = 1014011, name = "ANY_MONSTER_DIE_14011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14011", action = "action_EVENT_ANY_MONSTER_DIE_14011" },
	{ config_id = 1014012, name = "GADGET_CREATE_14012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_14012", action = "action_EVENT_GADGET_CREATE_14012" },
	{ config_id = 1014013, name = "SELECT_OPTION_14013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14013", action = "action_EVENT_SELECT_OPTION_14013" },
	{ config_id = 1014014, name = "ENTER_REGION_14014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14014", action = "action_EVENT_ENTER_REGION_14014" },
	{ config_id = 1014015, name = "ANY_MONSTER_DIE_14015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14015", action = "action_EVENT_ANY_MONSTER_DIE_14015" }
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
		gadgets = { 14006, 14007, 14008, 14009, 14010 },
		regions = { 14014 },
		triggers = { "GADGET_CREATE_14012", "SELECT_OPTION_14013", "ENTER_REGION_14014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 14004, 14005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 14001, 14002, 14003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250056014, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_14012(context, evt)
	if 14006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_14012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250056014, 14006, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14013(context, evt)
	-- 判断是gadgetid 14006 option_id 175
	if 14006 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14013(context, evt)
	-- 删除指定group： 250056014 ；指定config：14006；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250056014, 14006, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250056014, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14014(context, evt)
	if evt.param1 ~= 14014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14014(context, evt)
	-- 将configid为 14007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14015(context, evt)
	-- 将configid为 14007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end