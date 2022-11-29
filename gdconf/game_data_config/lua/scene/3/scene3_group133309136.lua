-- 基础信息
local base_info = {
	group_id = 133309136
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
	{ config_id = 136001, gadget_id = 70330376, pos = { x = -2166.283, y = 29.314, z = 5544.021 }, rot = { x = 328.003, y = 65.827, z = 354.514 }, level = 26, chest_drop_id = 1050242, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 136002, gadget_id = 70330356, pos = { x = -2268.783, y = 2.402, z = 5527.524 }, rot = { x = 0.000, y = 44.958, z = 0.000 }, level = 32, persistent = true, arguments = { 3 }, area_id = 27 },
	{ config_id = 136003, gadget_id = 70330366, pos = { x = -2213.351, y = -21.298, z = 5579.705 }, rot = { x = 337.069, y = 89.940, z = 3.766 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 136005, gadget_id = 70330383, pos = { x = -1971.431, y = 6.480, z = 5582.839 }, rot = { x = 331.868, y = 300.706, z = 1.230 }, level = 26, chest_drop_id = 1050247, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 136007, gadget_id = 70211121, pos = { x = -2268.778, y = 2.302, z = 5521.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 136009, gadget_id = 70330378, pos = { x = -2116.862, y = -39.276, z = 5555.699 }, rot = { x = 337.361, y = 341.662, z = 351.130 }, level = 26, chest_drop_id = 1050244, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 136010, gadget_id = 70330374, pos = { x = -2075.226, y = -40.366, z = 5675.481 }, rot = { x = 326.314, y = 84.161, z = 351.109 }, level = 26, chest_drop_id = 1050241, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 136011, gadget_id = 70330383, pos = { x = -2272.424, y = 2.302, z = 5620.848 }, rot = { x = 334.758, y = 104.940, z = 2.850 }, level = 26, chest_drop_id = 1050247, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 136013, gadget_id = 71700538, pos = { x = -2268.783, y = 2.402, z = 5527.524 }, rot = { x = 0.000, y = 44.958, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 136020, gadget_id = 70330320, pos = { x = -2268.783, y = 2.402, z = 5527.524 }, rot = { x = 0.000, y = 44.958, z = 0.000 }, level = 32, persistent = true, interact_id = 135, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 136006, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2268.783, y = 2.402, z = 5527.524 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1136006, name = "ENTER_REGION_136006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_136006", action = "action_EVENT_ENTER_REGION_136006" },
	{ config_id = 1136016, name = "GADGET_STATE_CHANGE_136016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_136016", action = "action_EVENT_GADGET_STATE_CHANGE_136016" },
	{ config_id = 1136017, name = "GROUP_LOAD_136017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_136017", action = "action_EVENT_GROUP_LOAD_136017", trigger_count = 0 },
	{ config_id = 1136018, name = "GROUP_LOAD_136018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_136018", action = "action_EVENT_GROUP_LOAD_136018", trigger_count = 0 },
	{ config_id = 1136019, name = "GADGET_STATE_CHANGE_136019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_136019", action = "action_EVENT_GADGET_STATE_CHANGE_136019" }
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
		gadgets = { 136001, 136002, 136003, 136005, 136009, 136010, 136011, 136020 },
		regions = { 136006 },
		triggers = { "ENTER_REGION_136006", "GADGET_STATE_CHANGE_136016", "GROUP_LOAD_136017", "GROUP_LOAD_136018", "GADGET_STATE_CHANGE_136019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_136006(context, evt)
	if evt.param1 ~= 136006 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_136006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_136016(context, evt)
	if 136002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_136016(context, evt)
	-- 创建id为136007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 136007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为136013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 136013 }) then
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
function condition_EVENT_GROUP_LOAD_136017(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309136, 136002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_136017(context, evt)
	-- 创建id为136007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 136007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为136013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 136013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_136018(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309136, 136020) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_136018(context, evt)
	-- 将configid为 136002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_136019(context, evt)
	if 136020 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_136019(context, evt)
	-- 将configid为 136002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end