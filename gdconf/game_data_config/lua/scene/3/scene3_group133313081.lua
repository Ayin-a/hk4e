-- 基础信息
local base_info = {
	group_id = 133313081
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
	{ config_id = 81001, gadget_id = 70330406, pos = { x = -542.363, y = 165.660, z = 5564.668 }, rot = { x = 339.324, y = 214.517, z = 345.395 }, level = 32, area_id = 32 },
	{ config_id = 81002, gadget_id = 70330387, pos = { x = -521.988, y = 189.965, z = 5491.933 }, rot = { x = 31.420, y = 132.479, z = 346.605 }, level = 26, chest_drop_id = 1050249, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 81003, gadget_id = 70330445, pos = { x = -590.343, y = 169.356, z = 5497.723 }, rot = { x = 0.000, y = 224.397, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 81004, gadget_id = 70330387, pos = { x = -485.488, y = 207.875, z = 5453.993 }, rot = { x = 322.110, y = 79.777, z = 13.008 }, level = 26, chest_drop_id = 1050249, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 81005, gadget_id = 70330379, pos = { x = -546.168, y = 167.257, z = 5562.545 }, rot = { x = 346.374, y = 54.668, z = 22.452 }, level = 26, chest_drop_id = 1050245, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 81006, gadget_id = 70330381, pos = { x = -571.225, y = 225.955, z = 5321.994 }, rot = { x = 297.558, y = 46.708, z = 315.228 }, level = 26, chest_drop_id = 1050246, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 81007, gadget_id = 70290641, pos = { x = -590.343, y = 169.356, z = 5497.723 }, rot = { x = 6.738, y = 223.837, z = 350.519 }, level = 32, arguments = { 11 }, area_id = 32 },
	{ config_id = 81008, gadget_id = 70330383, pos = { x = -753.796, y = 303.927, z = 5158.633 }, rot = { x = 303.602, y = 118.815, z = 10.780 }, level = 26, chest_drop_id = 1050247, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 81009, gadget_id = 70211121, pos = { x = -595.188, y = 168.177, z = 5501.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 81010, gadget_id = 70330320, pos = { x = -590.343, y = 169.356, z = 5497.723 }, rot = { x = 6.738, y = 223.837, z = 350.519 }, level = 32, persistent = true, interact_id = 161, area_id = 32 },
	{ config_id = 81017, gadget_id = 70330391, pos = { x = -663.998, y = 165.204, z = 5487.929 }, rot = { x = 323.796, y = 147.595, z = 352.338 }, level = 26, chest_drop_id = 1050251, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 81011, shape = RegionShape.SPHERE, radius = 10, pos = { x = -590.343, y = 169.356, z = 5497.723 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1081011, name = "ENTER_REGION_81011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81011", action = "action_EVENT_ENTER_REGION_81011" },
	{ config_id = 1081012, name = "GADGET_STATE_CHANGE_81012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81012", action = "action_EVENT_GADGET_STATE_CHANGE_81012" },
	{ config_id = 1081013, name = "GROUP_LOAD_81013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_81013", action = "action_EVENT_GROUP_LOAD_81013", trigger_count = 0 },
	{ config_id = 1081014, name = "GROUP_LOAD_81014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_81014", action = "action_EVENT_GROUP_LOAD_81014", trigger_count = 0 },
	{ config_id = 1081015, name = "GADGET_STATE_CHANGE_81015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81015", action = "action_EVENT_GADGET_STATE_CHANGE_81015" }
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
		gadgets = { 81001, 81002, 81004, 81005, 81006, 81007, 81008, 81010, 81017 },
		regions = { 81011 },
		triggers = { "ENTER_REGION_81011", "GADGET_STATE_CHANGE_81012", "GROUP_LOAD_81013", "GROUP_LOAD_81014", "GADGET_STATE_CHANGE_81015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_81011(context, evt)
	if evt.param1 ~= 81011 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81012(context, evt)
	if 81007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81012(context, evt)
	-- 创建id为81003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 81003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为81009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 81009 }) then
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
function condition_EVENT_GROUP_LOAD_81013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313081, 81007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_81013(context, evt)
	-- 创建id为81003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 81003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为81009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 81009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_81014(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313081, 81010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_81014(context, evt)
	-- 将configid为 81007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81015(context, evt)
	if 81010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81015(context, evt)
	-- 将configid为 81007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end