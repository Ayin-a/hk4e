-- 基础信息
local base_info = {
	group_id = 133314134
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
	{ config_id = 134001, gadget_id = 70330383, pos = { x = -1066.566, y = 120.767, z = 5065.271 }, rot = { x = 347.767, y = 227.009, z = 338.245 }, level = 26, chest_drop_id = 1050247, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 134002, gadget_id = 70330391, pos = { x = -972.096, y = 177.049, z = 4987.429 }, rot = { x = 321.079, y = 294.726, z = 3.488 }, level = 26, chest_drop_id = 1050251, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 134003, gadget_id = 70330445, pos = { x = -1012.197, y = 141.027, z = 5065.709 }, rot = { x = 0.000, y = 29.351, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 134004, gadget_id = 70330366, pos = { x = -938.667, y = 178.398, z = 4957.281 }, rot = { x = 326.579, y = 60.888, z = 358.728 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 134005, gadget_id = 70330384, pos = { x = -1206.342, y = 49.254, z = 5235.508 }, rot = { x = 3.882, y = 263.305, z = 19.986 }, level = 26, chest_drop_id = 1050248, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 134006, gadget_id = 70330366, pos = { x = -621.583, y = 122.851, z = 5082.221 }, rot = { x = 6.559, y = 65.941, z = 359.023 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 134007, gadget_id = 70330373, pos = { x = -726.113, y = 172.477, z = 5126.213 }, rot = { x = 316.183, y = 166.959, z = 25.382 }, level = 26, chest_drop_id = 1050240, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 134008, gadget_id = 70211121, pos = { x = -1010.030, y = 140.796, z = 5058.479 }, rot = { x = 0.000, y = 297.022, z = 0.000 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 134009, gadget_id = 70330320, pos = { x = -1012.197, y = 141.027, z = 5065.709 }, rot = { x = 0.000, y = 29.351, z = 0.000 }, level = 32, persistent = true, interact_id = 163, area_id = 32 },
	{ config_id = 134010, gadget_id = 70330406, pos = { x = -621.300, y = 122.418, z = 5081.962 }, rot = { x = 329.124, y = 174.657, z = 57.507 }, level = 32, area_id = 32 },
	{ config_id = 134016, gadget_id = 70290643, pos = { x = -1012.207, y = 141.027, z = 5065.675 }, rot = { x = 0.000, y = 209.811, z = 0.000 }, level = 32, arguments = { 13 }, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 134011, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1012.755, y = 141.411, z = 5065.208 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1134011, name = "ENTER_REGION_134011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134011", action = "action_EVENT_ENTER_REGION_134011" },
	{ config_id = 1134012, name = "GADGET_STATE_CHANGE_134012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_134012", action = "action_EVENT_GADGET_STATE_CHANGE_134012" },
	{ config_id = 1134013, name = "GROUP_LOAD_134013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_134013", action = "action_EVENT_GROUP_LOAD_134013", trigger_count = 0 },
	{ config_id = 1134014, name = "GROUP_LOAD_134014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_134014", action = "action_EVENT_GROUP_LOAD_134014", trigger_count = 0 },
	{ config_id = 1134015, name = "GADGET_STATE_CHANGE_134015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_134015", action = "action_EVENT_GADGET_STATE_CHANGE_134015" }
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
		gadgets = { 134001, 134002, 134004, 134005, 134006, 134007, 134009, 134010, 134016 },
		regions = { 134011 },
		triggers = { "ENTER_REGION_134011", "GADGET_STATE_CHANGE_134012", "GROUP_LOAD_134013", "GROUP_LOAD_134014", "GADGET_STATE_CHANGE_134015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_134011(context, evt)
	if evt.param1 ~= 134011 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_134011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_134012(context, evt)
	if 134016 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_134012(context, evt)
	-- 创建id为134003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 134003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为134008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 134008 }) then
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
function condition_EVENT_GROUP_LOAD_134013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314134, 134016) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_134013(context, evt)
	-- 创建id为134003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 134003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为134008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 134008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_134014(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314134, 134009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_134014(context, evt)
	-- 将configid为 134016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_134015(context, evt)
	if 134009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_134015(context, evt)
	-- 将configid为 134016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end