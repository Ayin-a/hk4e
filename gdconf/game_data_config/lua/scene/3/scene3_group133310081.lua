-- 基础信息
local base_info = {
	group_id = 133310081
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
	{ config_id = 81001, gadget_id = 70330381, pos = { x = -2213.645, y = 61.600, z = 4271.739 }, rot = { x = 345.131, y = 46.811, z = 347.836 }, level = 26, chest_drop_id = 1050246, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 26 },
	{ config_id = 81002, gadget_id = 70330362, pos = { x = -2407.283, y = 82.352, z = 4409.474 }, rot = { x = 0.000, y = 90.387, z = 0.000 }, level = 32, persistent = true, arguments = { 10 }, area_id = 26 },
	{ config_id = 81003, gadget_id = 70330366, pos = { x = -2466.718, y = 25.095, z = 4327.394 }, rot = { x = 271.147, y = 180.052, z = 81.301 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 26 },
	{ config_id = 81004, gadget_id = 70330384, pos = { x = -2290.350, y = 59.207, z = 4465.000 }, rot = { x = 270.759, y = 180.000, z = 180.000 }, level = 26, chest_drop_id = 1050248, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 26 },
	{ config_id = 81005, gadget_id = 70330367, pos = { x = -2340.246, y = 48.913, z = 4287.276 }, rot = { x = 283.988, y = 87.428, z = 273.518 }, level = 26, chest_drop_id = 1050236, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 26 },
	{ config_id = 81006, gadget_id = 70330366, pos = { x = -2345.392, y = 85.379, z = 4397.510 }, rot = { x = 283.282, y = 86.125, z = 28.265 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 26 },
	{ config_id = 81007, gadget_id = 70330379, pos = { x = -2393.565, y = 80.851, z = 4415.776 }, rot = { x = 282.173, y = 346.582, z = 352.447 }, level = 26, chest_drop_id = 1050245, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 26 },
	{ config_id = 81008, gadget_id = 71700544, pos = { x = -2407.283, y = 82.352, z = 4409.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 81011, gadget_id = 70211121, pos = { x = -2402.544, y = 82.322, z = 4404.634 }, rot = { x = 0.000, y = 315.960, z = 0.000 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 81018, gadget_id = 70330320, pos = { x = -2407.283, y = 82.352, z = 4409.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, interact_id = 141, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 81009, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2407.283, y = 82.352, z = 4409.474 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1081009, name = "ENTER_REGION_81009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81009", action = "action_EVENT_ENTER_REGION_81009" },
	{ config_id = 1081014, name = "GADGET_STATE_CHANGE_81014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81014", action = "action_EVENT_GADGET_STATE_CHANGE_81014" },
	{ config_id = 1081015, name = "GROUP_LOAD_81015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_81015", action = "action_EVENT_GROUP_LOAD_81015", trigger_count = 0 },
	{ config_id = 1081016, name = "GROUP_LOAD_81016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_81016", action = "action_EVENT_GROUP_LOAD_81016", trigger_count = 0 },
	{ config_id = 1081017, name = "GADGET_STATE_CHANGE_81017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81017", action = "action_EVENT_GADGET_STATE_CHANGE_81017" }
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
		gadgets = { 81001, 81002, 81003, 81004, 81005, 81006, 81007, 81018 },
		regions = { 81009 },
		triggers = { "ENTER_REGION_81009", "GADGET_STATE_CHANGE_81014", "GROUP_LOAD_81015", "GROUP_LOAD_81016", "GADGET_STATE_CHANGE_81017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_81009(context, evt)
	if evt.param1 ~= 81009 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81014(context, evt)
	if 81002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81014(context, evt)
	-- 创建id为81008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 81008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为81011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 81011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_81015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310081, 81002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_81015(context, evt)
	-- 创建id为81008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 81008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为81011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 81011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_81016(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310081, 81018) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_81016(context, evt)
	-- 将configid为 81002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81017(context, evt)
	if 81018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81017(context, evt)
	-- 将configid为 81002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end