-- 基础信息
local base_info = {
	group_id = 133315228
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
	{ config_id = 228001, gadget_id = 70290485, pos = { x = 445.459, y = 245.693, z = 2238.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 228002, gadget_id = 70220103, pos = { x = 448.380, y = 248.060, z = 2266.605 }, rot = { x = 0.000, y = 5.661, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 228003, gadget_id = 70220103, pos = { x = 452.049, y = 258.907, z = 2291.717 }, rot = { x = 0.000, y = 326.525, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 228004, gadget_id = 70220103, pos = { x = 447.569, y = 266.239, z = 2316.417 }, rot = { x = 0.000, y = 326.525, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 228005, gadget_id = 70220103, pos = { x = 454.859, y = 269.455, z = 2337.911 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 228006, gadget_id = 70220103, pos = { x = 465.986, y = 274.775, z = 2357.660 }, rot = { x = 0.000, y = 38.207, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 228007, gadget_id = 70220103, pos = { x = 432.433, y = 267.454, z = 2390.993 }, rot = { x = 0.000, y = 146.227, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 228009, gadget_id = 70330255, pos = { x = 426.348, y = 249.726, z = 2227.382 }, rot = { x = 0.000, y = 58.856, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 228010, gadget_id = 70330255, pos = { x = 435.071, y = 249.811, z = 2258.966 }, rot = { x = 0.000, y = 142.741, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 228011, gadget_id = 70330255, pos = { x = 465.009, y = 249.814, z = 2232.796 }, rot = { x = 0.000, y = 282.037, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 228012, gadget_id = 70310200, pos = { x = 426.348, y = 249.726, z = 2227.382 }, rot = { x = 0.000, y = 58.856, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 228013, gadget_id = 70310200, pos = { x = 435.071, y = 249.811, z = 2258.966 }, rot = { x = 0.000, y = 142.741, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 228014, gadget_id = 70310200, pos = { x = 465.009, y = 249.814, z = 2232.796 }, rot = { x = 0.000, y = 282.037, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 228015, gadget_id = 70220103, pos = { x = 445.270, y = 249.705, z = 2238.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 228020, gadget_id = 70310198, pos = { x = 425.931, y = 253.603, z = 2207.248 }, rot = { x = 16.502, y = 16.016, z = 359.711 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 保底
	{ config_id = 1228008, name = "GROUP_LOAD_228008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_228008", action = "action_EVENT_GROUP_LOAD_228008", trigger_count = 0 },
	-- 一亮
	{ config_id = 1228016, name = "GADGET_STATE_CHANGE_228016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_228016", action = "action_EVENT_GADGET_STATE_CHANGE_228016", trigger_count = 0 },
	-- 二亮
	{ config_id = 1228017, name = "GADGET_STATE_CHANGE_228017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_228017", action = "action_EVENT_GADGET_STATE_CHANGE_228017", trigger_count = 0 },
	-- 解锁
	{ config_id = 1228018, name = "GADGET_STATE_CHANGE_228018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_228018", action = "action_EVENT_GADGET_STATE_CHANGE_228018", trigger_count = 0 },
	-- 三亮
	{ config_id = 1228019, name = "GADGET_STATE_CHANGE_228019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_228019", action = "action_EVENT_GADGET_STATE_CHANGE_228019", trigger_count = 0 }
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
		gadgets = { 228001, 228009, 228010, 228011, 228012, 228013, 228014, 228020 },
		regions = { },
		triggers = { "GROUP_LOAD_228008", "GADGET_STATE_CHANGE_228016", "GADGET_STATE_CHANGE_228017", "GADGET_STATE_CHANGE_228018", "GADGET_STATE_CHANGE_228019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 228002, 228003, 228004, 228005, 228006, 228007, 228015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_228008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315228, 228012) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315228, 228013) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315228, 228014) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_228008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 228001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315228, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_228016(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315228, 228012) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_228016(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315228, EntityType.GADGET, 228009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_228017(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315228, 228013) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_228017(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315228, EntityType.GADGET, 228010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_228018(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315228, 228012) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315228, 228013) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315228, 228014) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_228018(context, evt)
	-- 将configid为 228001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 228001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315228, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_228019(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315228, 228014) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_228019(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315228, EntityType.GADGET, 228011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end