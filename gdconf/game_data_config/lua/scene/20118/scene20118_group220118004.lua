-- 基础信息
local base_info = {
	group_id = 220118004
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
	{ config_id = 4001, gadget_id = 70360279, pos = { x = 23.039, y = 64.879, z = -68.650 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4002, gadget_id = 70360288, pos = { x = 15.678, y = 71.090, z = -68.257 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4004, gadget_id = 70360170, pos = { x = 15.998, y = 66.787, z = -66.217 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 4005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 17.649, y = 65.690, z = -62.071 } },
	{ config_id = 4007, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = 10.602, y = 73.789, z = -79.647 } },
	{ config_id = 4009, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = 10.602, y = 68.053, z = -79.203 } },
	{ config_id = 4019, shape = RegionShape.SPHERE, radius = 5, pos = { x = 21.633, y = 66.427, z = -71.042 } },
	{ config_id = 4020, shape = RegionShape.SPHERE, radius = 5, pos = { x = 24.010, y = 55.411, z = -67.635 } }
}

-- 触发器
triggers = {
	{ config_id = 1004005, name = "ENTER_REGION_4005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4005", action = "action_EVENT_ENTER_REGION_4005" },
	{ config_id = 1004007, name = "ENTER_REGION_4007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4007", action = "", trigger_count = 0 },
	{ config_id = 1004009, name = "ENTER_REGION_4009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4009", action = "", trigger_count = 0 },
	{ config_id = 1004010, name = "SELECT_OPTION_4010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1004011, name = "SELECT_OPTION_4011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4011", action = "action_EVENT_SELECT_OPTION_4011" },
	{ config_id = 1004014, name = "SELECT_OPTION_4014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "" },
	{ config_id = 1004017, name = "SELECT_OPTION_4017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "" },
	{ config_id = 1004019, name = "ENTER_REGION_4019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4019", action = "" },
	{ config_id = 1004020, name = "ENTER_REGION_4020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4020", action = "" }
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
		gadgets = { 4001, 4002, 4004 },
		regions = { 4005, 4007, 4009, 4019, 4020 },
		triggers = { "ENTER_REGION_4005", "ENTER_REGION_4007", "ENTER_REGION_4009", "SELECT_OPTION_4010", "SELECT_OPTION_4011", "SELECT_OPTION_4014", "SELECT_OPTION_4017", "ENTER_REGION_4019", "ENTER_REGION_4020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4005(context, evt)
	if evt.param1 ~= 4005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220118004, 4004, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4007(context, evt)
	if evt.param1 ~= 4007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4009(context, evt)
	if evt.param1 ~= 4009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4011(context, evt)
	-- 判断是gadgetid 4004 option_id 24
	if 4004 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4011(context, evt)
	-- 改变指定group组220118004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220118004, 4002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 220118004 ；指定config：4004；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220118004, 4004, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组220118004中， configid为4004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220118004, 4004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4019(context, evt)
	if evt.param1 ~= 4019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4020(context, evt)
	if evt.param1 ~= 4020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end