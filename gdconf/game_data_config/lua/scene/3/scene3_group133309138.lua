-- 基础信息
local base_info = {
	group_id = 133309138
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
	{ config_id = 138001, gadget_id = 70330381, pos = { x = -2758.161, y = -50.885, z = 5325.580 }, rot = { x = 304.580, y = 74.388, z = 21.306 }, level = 26, chest_drop_id = 1050246, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 138002, gadget_id = 70330277, pos = { x = -2499.930, y = -11.368, z = 5301.709 }, rot = { x = 0.000, y = 29.999, z = 0.000 }, level = 32, persistent = true, arguments = { 5 }, area_id = 27 },
	{ config_id = 138003, gadget_id = 71700537, pos = { x = -2499.930, y = -11.368, z = 5301.709 }, rot = { x = 0.000, y = 29.999, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 138004, gadget_id = 70330366, pos = { x = -2581.857, y = 41.703, z = 5363.954 }, rot = { x = 334.254, y = 65.249, z = 353.545 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 138005, gadget_id = 70330369, pos = { x = -2418.162, y = -28.473, z = 5409.804 }, rot = { x = 340.341, y = 172.861, z = 17.637 }, level = 26, chest_drop_id = 1050237, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 138006, gadget_id = 70330384, pos = { x = -2704.641, y = 24.884, z = 5388.874 }, rot = { x = 340.445, y = 161.386, z = 1.751 }, level = 26, chest_drop_id = 1050248, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 138007, gadget_id = 70330366, pos = { x = -2243.235, y = 14.961, z = 5328.563 }, rot = { x = 332.625, y = 268.053, z = 359.341 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 138008, gadget_id = 70330373, pos = { x = -2360.116, y = 49.744, z = 5338.056 }, rot = { x = 348.495, y = 181.130, z = 359.643 }, level = 26, chest_drop_id = 1050240, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 138009, gadget_id = 70211121, pos = { x = -2498.796, y = -11.242, z = 5297.345 }, rot = { x = 0.000, y = 345.472, z = 0.000 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 138018, gadget_id = 70330320, pos = { x = -2499.930, y = -11.368, z = 5301.709 }, rot = { x = 0.000, y = 29.999, z = 0.000 }, level = 32, persistent = true, interact_id = 134, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 138010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2499.930, y = -11.368, z = 5301.709 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1138010, name = "ENTER_REGION_138010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_138010", action = "action_EVENT_ENTER_REGION_138010" },
	{ config_id = 1138014, name = "GADGET_STATE_CHANGE_138014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_138014", action = "action_EVENT_GADGET_STATE_CHANGE_138014" },
	{ config_id = 1138015, name = "GROUP_LOAD_138015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_138015", action = "action_EVENT_GROUP_LOAD_138015", trigger_count = 0 },
	{ config_id = 1138016, name = "GROUP_LOAD_138016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_138016", action = "action_EVENT_GROUP_LOAD_138016", trigger_count = 0 },
	{ config_id = 1138017, name = "GADGET_STATE_CHANGE_138017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_138017", action = "action_EVENT_GADGET_STATE_CHANGE_138017" }
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
		gadgets = { 138001, 138002, 138004, 138005, 138006, 138007, 138008, 138018 },
		regions = { 138010 },
		triggers = { "ENTER_REGION_138010", "GADGET_STATE_CHANGE_138014", "GROUP_LOAD_138015", "GROUP_LOAD_138016", "GADGET_STATE_CHANGE_138017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_138010(context, evt)
	if evt.param1 ~= 138010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_138010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_138014(context, evt)
	if 138002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_138014(context, evt)
	-- 创建id为138003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为138009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138009 }) then
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
function condition_EVENT_GROUP_LOAD_138015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309138, 138002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_138015(context, evt)
	-- 创建id为138003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为138009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_138016(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309138, 138018) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_138016(context, evt)
	-- 将configid为 138002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 138002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_138017(context, evt)
	if 138018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_138017(context, evt)
	-- 将configid为 138002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 138002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end