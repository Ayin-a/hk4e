-- 基础信息
local base_info = {
	group_id = 133307177
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
	{ config_id = 177001, gadget_id = 70330376, pos = { x = -1359.120, y = 19.364, z = 5377.277 }, rot = { x = 289.207, y = 72.775, z = 18.440 }, level = 26, chest_drop_id = 1050242, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 177002, gadget_id = 70330369, pos = { x = -1309.036, y = 7.050, z = 5379.461 }, rot = { x = 0.000, y = 320.143, z = 0.000 }, level = 26, chest_drop_id = 1050237, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 177003, gadget_id = 70211121, pos = { x = -1150.217, y = -29.401, z = 5444.097 }, rot = { x = 344.764, y = 349.326, z = 349.906 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 177004, gadget_id = 70330366, pos = { x = -1332.290, y = 36.685, z = 5356.087 }, rot = { x = 344.996, y = 295.148, z = 359.811 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 177005, gadget_id = 70330379, pos = { x = -1254.323, y = -44.540, z = 5447.310 }, rot = { x = 0.000, y = 155.232, z = 0.000 }, level = 26, chest_drop_id = 1050245, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 177006, gadget_id = 70330367, pos = { x = -1231.268, y = -23.954, z = 5428.990 }, rot = { x = 312.069, y = 329.307, z = 10.943 }, level = 26, chest_drop_id = 1050236, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 177007, gadget_id = 70330386, pos = { x = -1311.130, y = -2.633, z = 5422.886 }, rot = { x = 0.000, y = 139.731, z = 0.000 }, level = 26, chest_drop_id = 1050269, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 177008, gadget_id = 70290647, pos = { x = -1148.540, y = -34.086, z = 5456.383 }, rot = { x = 3.030, y = 6.248, z = 354.303 }, level = 32, arguments = { 17 }, area_id = 32 },
	{ config_id = 177009, gadget_id = 70330445, pos = { x = -1148.663, y = -34.046, z = 5456.355 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 177010, gadget_id = 70330320, pos = { x = -1148.663, y = -34.046, z = 5456.355 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, interact_id = 167, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 177011, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1148.663, y = -34.046, z = 5456.355 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1177011, name = "ENTER_REGION_177011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_177011", action = "action_EVENT_ENTER_REGION_177011" },
	{ config_id = 1177012, name = "GADGET_STATE_CHANGE_177012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_177012", action = "action_EVENT_GADGET_STATE_CHANGE_177012" },
	{ config_id = 1177013, name = "GROUP_LOAD_177013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_177013", action = "action_EVENT_GROUP_LOAD_177013", trigger_count = 0 },
	{ config_id = 1177014, name = "GROUP_LOAD_177014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_177014", action = "action_EVENT_GROUP_LOAD_177014", trigger_count = 0 },
	{ config_id = 1177015, name = "GADGET_STATE_CHANGE_177015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_177015", action = "action_EVENT_GADGET_STATE_CHANGE_177015" }
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
		gadgets = { 177001, 177002, 177004, 177005, 177007, 177008, 177010 },
		regions = { 177011 },
		triggers = { "ENTER_REGION_177011", "GADGET_STATE_CHANGE_177012", "GROUP_LOAD_177013", "GROUP_LOAD_177014", "GADGET_STATE_CHANGE_177015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_177011(context, evt)
	if evt.param1 ~= 177011 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_177011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_177012(context, evt)
	if 177008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_177012(context, evt)
	-- 创建id为177003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 177003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为177009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 177009 }) then
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
function condition_EVENT_GROUP_LOAD_177013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307177, 177008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_177013(context, evt)
	-- 创建id为177003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 177003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为177009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 177009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_177014(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307177, 177010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_177014(context, evt)
	-- 将configid为 177008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_177015(context, evt)
	if 177010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_177015(context, evt)
	-- 将configid为 177008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end