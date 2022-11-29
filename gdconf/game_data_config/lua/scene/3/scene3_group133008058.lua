-- 基础信息
local base_info = {
	group_id = 133008058
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58007, monster_id = 23010601, pos = { x = 1337.802, y = 308.243, z = -888.502 }, rot = { x = 0.000, y = 159.215, z = 0.000 }, level = 30, drop_tag = "先遣队", pose_id = 9014, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58001, gadget_id = 70350006, pos = { x = 1336.310, y = 307.449, z = -895.517 }, rot = { x = 0.257, y = 359.119, z = 357.776 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	{ config_id = 58002, gadget_id = 70350081, pos = { x = 1339.087, y = 308.375, z = -890.019 }, rot = { x = 7.243, y = 258.157, z = 1.033 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 58003, gadget_id = 70360001, pos = { x = 1338.549, y = 309.448, z = -889.897 }, rot = { x = 79.777, y = 32.963, z = 135.265 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 58006, shape = RegionShape.SPHERE, radius = 7.6, pos = { x = 1336.126, y = 306.822, z = -896.104 }, area_id = 10 },
	{ config_id = 58008, shape = RegionShape.SPHERE, radius = 7.6, pos = { x = 1336.543, y = 308.213, z = -885.639 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1058004, name = "GADGET_CREATE_58004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_58004", action = "action_EVENT_GADGET_CREATE_58004", trigger_count = 0 },
	{ config_id = 1058005, name = "SELECT_OPTION_58005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_58005", action = "action_EVENT_SELECT_OPTION_58005" },
	{ config_id = 1058006, name = "ENTER_REGION_58006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_58006", action = "action_EVENT_ENTER_REGION_58006" },
	{ config_id = 1058008, name = "ENTER_REGION_58008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_58008", action = "action_EVENT_ENTER_REGION_58008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Triggered", value = 0, no_refresh = true }
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
		gadgets = { 58001, 58002, 58003 },
		regions = { 58006, 58008 },
		triggers = { "GADGET_CREATE_58004", "SELECT_OPTION_58005", "ENTER_REGION_58006", "ENTER_REGION_58008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_58004(context, evt)
	if 58003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_58004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008058, 58003, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_58005(context, evt)
	-- 判断是gadgetid 58003 option_id 7
	if 58003 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_58005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 58003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 58002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008466, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_58006(context, evt)
	if evt.param1 ~= 58006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"Triggered"为0
	if ScriptLib.GetGroupVariableValue(context, "Triggered") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_58006(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Triggered" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Triggered", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 58007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_58008(context, evt)
	if evt.param1 ~= 58008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"Triggered"为0
	if ScriptLib.GetGroupVariableValue(context, "Triggered") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_58008(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Triggered" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Triggered", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end