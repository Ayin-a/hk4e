-- 基础信息
local base_info = {
	group_id = 247018005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 25080101, pos = { x = 246.420, y = -0.165, z = -320.409 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 }, pose_id = 1 },
	{ config_id = 5002, monster_id = 25080201, pos = { x = 243.328, y = -0.183, z = -313.958 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 }, pose_id = 1 },
	{ config_id = 5003, monster_id = 25080301, pos = { x = 238.477, y = -0.176, z = -312.916 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 }, pose_id = 1 },
	{ config_id = 5004, monster_id = 25080101, pos = { x = 233.838, y = -0.176, z = -316.148 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 }, pose_id = 1 },
	{ config_id = 5005, monster_id = 25080201, pos = { x = 234.058, y = -0.177, z = -323.605 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 }, pose_id = 1 },
	{ config_id = 5006, monster_id = 25080301, pos = { x = 239.725, y = -0.183, z = -326.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 }, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5007, gadget_id = 70360001, pos = { x = 240.124, y = 0.038, z = -320.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5008, gadget_id = 70290137, pos = { x = 240.078, y = 0.174, z = -340.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5009, gadget_id = 70290137, pos = { x = 240.137, y = 0.168, z = -300.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5010, gadget_id = 70290137, pos = { x = 220.310, y = 0.079, z = -320.221 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5011, gadget_id = 70290137, pos = { x = 260.219, y = 0.101, z = -320.222 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 5014, shape = RegionShape.CUBIC, size = { x = 25.000, y = 10.000, z = 25.000 }, pos = { x = 240.516, y = 0.057, z = -319.833 } }
}

-- 触发器
triggers = {
	{ config_id = 1005012, name = "GADGET_CREATE_5012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5012", action = "action_EVENT_GADGET_CREATE_5012" },
	{ config_id = 1005013, name = "SELECT_OPTION_5013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5013", action = "action_EVENT_SELECT_OPTION_5013" },
	{ config_id = 1005014, name = "ENTER_REGION_5014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5014", action = "action_EVENT_ENTER_REGION_5014" },
	{ config_id = 1005015, name = "ANY_MONSTER_DIE_5015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5015", action = "action_EVENT_ANY_MONSTER_DIE_5015" },
	{ config_id = 1005016, name = "ANY_MONSTER_DIE_5016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5016", action = "action_EVENT_ANY_MONSTER_DIE_5016" },
	{ config_id = 1005017, name = "SELECT_OPTION_5017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5017", action = "action_EVENT_SELECT_OPTION_5017" }
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
		gadgets = { 5007, 5008, 5009, 5010, 5011 },
		regions = { 5014 },
		triggers = { "GADGET_CREATE_5012", "SELECT_OPTION_5013", "ENTER_REGION_5014", "SELECT_OPTION_5017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 5001, 5002, 5003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 5004, 5005, 5006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_5012(context, evt)
	if 5007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247018005, 5007, {4102,4103}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5013(context, evt)
	-- 判断是gadgetid 5007 option_id 4102
	if 5007 ~= evt.param1 then
		return false	
	end
	
	if 4102 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5013(context, evt)
	-- 删除指定group： 247018005 ；指定config：5007；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247018005, 5007, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 247018005 ；指定config：5007；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247018005, 5007, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247018005, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5014(context, evt)
	if evt.param1 ~= 5014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5014(context, evt)
	-- 将configid为 5008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5015(context, evt)
	-- 将configid为 5008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5016(context, evt)
	-- 将configid为 5008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5017(context, evt)
	-- 判断是gadgetid 5007 option_id 4103
	if 5007 ~= evt.param1 then
		return false	
	end
	
	if 4103 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5017(context, evt)
	-- 删除指定group： 247018005 ；指定config：5007；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247018005, 5007, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 247018005 ；指定config：5007；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247018005, 5007, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247018005, 3)
	
	return 0
end