-- 基础信息
local base_info = {
	group_id = 133313090
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
	{ config_id = 90001, gadget_id = 70330406, pos = { x = -362.236, y = 133.798, z = 5537.822 }, rot = { x = 351.941, y = 308.652, z = 339.712 }, level = 32, area_id = 32 },
	{ config_id = 90002, gadget_id = 70330374, pos = { x = -339.001, y = 164.356, z = 5424.218 }, rot = { x = 333.256, y = 10.317, z = 345.367 }, level = 26, chest_drop_id = 1050241, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 90003, gadget_id = 70330373, pos = { x = -362.879, y = 133.617, z = 5540.045 }, rot = { x = 353.582, y = 176.346, z = 2.892 }, level = 26, chest_drop_id = 1050240, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 90004, gadget_id = 70330445, pos = { x = -343.265, y = 118.650, z = 5549.375 }, rot = { x = 354.675, y = 0.291, z = 353.758 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 90005, gadget_id = 70211121, pos = { x = -343.286, y = 118.364, z = 5545.239 }, rot = { x = 354.675, y = 0.291, z = 353.758 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 90006, gadget_id = 70330383, pos = { x = -335.887, y = 119.517, z = 5528.390 }, rot = { x = 339.988, y = 132.678, z = 353.109 }, level = 26, chest_drop_id = 1050247, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 90007, gadget_id = 70330379, pos = { x = -334.881, y = 119.153, z = 5527.813 }, rot = { x = 0.000, y = 127.296, z = 0.000 }, level = 26, chest_drop_id = 1050245, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 90008, gadget_id = 70330374, pos = { x = -336.917, y = 119.883, z = 5529.760 }, rot = { x = 341.709, y = 150.679, z = 340.639 }, level = 26, chest_drop_id = 1050241, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 90009, gadget_id = 70290645, pos = { x = -336.505, y = 119.795, z = 5526.188 }, rot = { x = 353.148, y = 128.318, z = 359.431 }, level = 32, arguments = { 15 }, area_id = 32 },
	{ config_id = 90010, gadget_id = 70330320, pos = { x = -335.802, y = 120.189, z = 5525.661 }, rot = { x = 354.675, y = 0.291, z = 353.758 }, level = 32, persistent = true, interact_id = 165, area_id = 32 },
	{ config_id = 90016, gadget_id = 70330384, pos = { x = -272.909, y = 130.979, z = 5542.896 }, rot = { x = 309.544, y = 106.530, z = 353.694 }, level = 26, chest_drop_id = 1050248, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 90013, shape = RegionShape.SPHERE, radius = 10, pos = { x = -328.966, y = 117.885, z = 5518.429 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1090011, name = "GADGET_STATE_CHANGE_90011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90011", action = "action_EVENT_GADGET_STATE_CHANGE_90011" },
	{ config_id = 1090012, name = "GROUP_LOAD_90012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_90012", action = "action_EVENT_GROUP_LOAD_90012", trigger_count = 0 },
	{ config_id = 1090013, name = "ENTER_REGION_90013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_90013", action = "action_EVENT_ENTER_REGION_90013" },
	{ config_id = 1090014, name = "GROUP_LOAD_90014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_90014", action = "action_EVENT_GROUP_LOAD_90014", trigger_count = 0 },
	{ config_id = 1090015, name = "GADGET_STATE_CHANGE_90015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90015", action = "action_EVENT_GADGET_STATE_CHANGE_90015" }
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
		gadgets = { 90001, 90002, 90003, 90006, 90007, 90008, 90009, 90010, 90016 },
		regions = { 90013 },
		triggers = { "GADGET_STATE_CHANGE_90011", "GROUP_LOAD_90012", "ENTER_REGION_90013", "GROUP_LOAD_90014", "GADGET_STATE_CHANGE_90015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90011(context, evt)
	if 90009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90011(context, evt)
	-- 创建id为90004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 90004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为90005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 90005 }) then
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
function condition_EVENT_GROUP_LOAD_90012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313090, 90009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_90012(context, evt)
	-- 创建id为90004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 90004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为90005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 90005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_90013(context, evt)
	if evt.param1 ~= 90013 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_90013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_90014(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313090, 90010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_90014(context, evt)
	-- 将configid为 90009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90015(context, evt)
	if 90010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90015(context, evt)
	-- 将configid为 90009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end