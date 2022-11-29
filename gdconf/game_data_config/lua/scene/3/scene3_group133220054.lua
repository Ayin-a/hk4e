-- 基础信息
local base_info = {
	group_id = 133220054
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 54001, gadget_id = 70350004, pos = { x = -2450.021, y = 252.896, z = -4473.832 }, rot = { x = 271.294, y = 123.283, z = 345.330 }, level = 27, area_id = 11 },
	{ config_id = 54002, gadget_id = 70220048, pos = { x = -2450.824, y = 253.139, z = -4475.734 }, rot = { x = 0.000, y = 33.170, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 54003, gadget_id = 70220048, pos = { x = -2452.383, y = 253.217, z = -4472.482 }, rot = { x = 0.000, y = 50.211, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 54004, gadget_id = 70220048, pos = { x = -2450.146, y = 253.174, z = -4471.456 }, rot = { x = 0.000, y = 35.218, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 54005, gadget_id = 70220048, pos = { x = -2452.653, y = 253.108, z = -4474.676 }, rot = { x = 359.449, y = 23.852, z = 359.813 }, level = 27, area_id = 11 },
	{ config_id = 54006, gadget_id = 70360170, pos = { x = -2449.681, y = 250.040, z = -4471.844 }, rot = { x = 88.137, y = 47.155, z = 126.605 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 54011, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2471.141, y = 244.045, z = -4463.658 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1054008, name = "SELECT_OPTION_54008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_54008", action = "action_EVENT_SELECT_OPTION_54008", trigger_count = 0 },
	{ config_id = 1054009, name = "GROUP_LOAD_54009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_54009", action = "action_EVENT_GROUP_LOAD_54009", trigger_count = 0 },
	{ config_id = 1054010, name = "QUEST_FINISH_54010", event = EventType.EVENT_QUEST_FINISH, source = "7211311", condition = "", action = "action_EVENT_QUEST_FINISH_54010", trigger_count = 0 },
	{ config_id = 1054011, name = "LEAVE_REGION_54011", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_54011", trigger_count = 0 },
	{ config_id = 1054012, name = "GROUP_LOAD_54012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_54012", action = "action_EVENT_GROUP_LOAD_54012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true },
	{ config_id = 2, name = "fin", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1054007, name = "GADGET_CREATE_54007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_54007", action = "action_EVENT_GADGET_CREATE_54007", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 54001, 54002, 54003, 54004, 54005, 54006 },
		regions = { 54011 },
		triggers = { "SELECT_OPTION_54008", "GROUP_LOAD_54009", "QUEST_FINISH_54010", "LEAVE_REGION_54011", "GROUP_LOAD_54012" },
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
function condition_EVENT_SELECT_OPTION_54008(context, evt)
	-- 判断是gadgetid 54006 option_id 1
	if 54006 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_54008(context, evt)
	-- 将configid为 54006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133220054 ；指定config：54006；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220054, 54006, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_54009(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_54009(context, evt)
	-- 将configid为 54001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_54010(context, evt)
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_54011(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220054, EntityType.GADGET, 54001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_54012(context, evt)
	-- 判断变量"open"为0
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_54012(context, evt)
	-- 将configid为 54001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end