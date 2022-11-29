-- 基础信息
local base_info = {
	group_id = 133309132
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
	{ config_id = 132001, gadget_id = 70330364, pos = { x = -2349.313, y = 142.582, z = 5543.540 }, rot = { x = 0.000, y = 224.397, z = 0.000 }, level = 32, persistent = true, arguments = { 2 }, area_id = 27 },
	{ config_id = 132002, gadget_id = 70330366, pos = { x = -2410.960, y = 156.917, z = 5545.377 }, rot = { x = 287.425, y = 89.663, z = 338.764 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 132003, gadget_id = 71700546, pos = { x = -2349.313, y = 142.582, z = 5543.540 }, rot = { x = 0.000, y = 224.397, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 132004, gadget_id = 70330387, pos = { x = -2266.203, y = 190.175, z = 5542.006 }, rot = { x = 283.037, y = 33.809, z = 322.681 }, level = 26, chest_drop_id = 1050249, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 132005, gadget_id = 70330384, pos = { x = -2320.593, y = 219.034, z = 5556.118 }, rot = { x = 328.103, y = 143.079, z = 356.641 }, level = 26, chest_drop_id = 1050248, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 132006, gadget_id = 70330381, pos = { x = -2302.102, y = 203.518, z = 5485.271 }, rot = { x = 334.612, y = 176.191, z = 1.404 }, level = 26, chest_drop_id = 1050246, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 132007, gadget_id = 70330366, pos = { x = -2418.956, y = 179.622, z = 5617.331 }, rot = { x = 330.248, y = 184.602, z = 358.790 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 132008, gadget_id = 70330383, pos = { x = -2349.498, y = 473.537, z = 5594.544 }, rot = { x = 347.784, y = 180.000, z = 0.000 }, level = 26, chest_drop_id = 1050247, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 132010, gadget_id = 70211121, pos = { x = -2349.270, y = 142.602, z = 5535.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 132018, gadget_id = 70330320, pos = { x = -2349.313, y = 142.582, z = 5543.540 }, rot = { x = 0.000, y = 224.397, z = 0.000 }, level = 32, persistent = true, interact_id = 143, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 132009, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2349.313, y = 142.582, z = 5543.540 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1132009, name = "ENTER_REGION_132009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_132009", action = "action_EVENT_ENTER_REGION_132009" },
	{ config_id = 1132014, name = "GADGET_STATE_CHANGE_132014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_132014", action = "action_EVENT_GADGET_STATE_CHANGE_132014" },
	{ config_id = 1132015, name = "GROUP_LOAD_132015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_132015", action = "action_EVENT_GROUP_LOAD_132015", trigger_count = 0 },
	{ config_id = 1132016, name = "GROUP_LOAD_132016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_132016", action = "action_EVENT_GROUP_LOAD_132016", trigger_count = 0 },
	{ config_id = 1132017, name = "GADGET_STATE_CHANGE_132017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_132017", action = "action_EVENT_GADGET_STATE_CHANGE_132017" }
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
		gadgets = { 132001, 132002, 132004, 132005, 132006, 132007, 132008, 132018 },
		regions = { 132009 },
		triggers = { "ENTER_REGION_132009", "GADGET_STATE_CHANGE_132014", "GROUP_LOAD_132015", "GROUP_LOAD_132016", "GADGET_STATE_CHANGE_132017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_132009(context, evt)
	if evt.param1 ~= 132009 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_132009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_132014(context, evt)
	if 132001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_132014(context, evt)
	-- 创建id为132003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 132003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为132010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 132010 }) then
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
function condition_EVENT_GROUP_LOAD_132015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309132, 132001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_132015(context, evt)
	-- 创建id为132003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 132003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为132010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 132010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_132016(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309132, 132018) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_132016(context, evt)
	-- 将configid为 132001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 132001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_132017(context, evt)
	if 132018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_132017(context, evt)
	-- 将configid为 132001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 132001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end