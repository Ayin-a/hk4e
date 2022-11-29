-- 基础信息
local base_info = {
	group_id = 133004932
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
	{ config_id = 932001, gadget_id = 70220001, pos = { x = 2278.894, y = 225.943, z = -955.910 }, rot = { x = 0.000, y = 199.203, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 932002, gadget_id = 70220001, pos = { x = 2189.481, y = 217.845, z = -884.405 }, rot = { x = 11.007, y = 27.343, z = 350.108 }, level = 1, area_id = 1 },
	{ config_id = 932003, gadget_id = 70220001, pos = { x = 2184.631, y = 219.712, z = -886.143 }, rot = { x = 359.501, y = 8.658, z = 339.140 }, level = 1, area_id = 1 },
	{ config_id = 932004, gadget_id = 70220001, pos = { x = 2191.571, y = 219.964, z = -887.256 }, rot = { x = 11.505, y = 73.962, z = 0.081 }, level = 1, area_id = 1 },
	{ config_id = 932005, gadget_id = 70220001, pos = { x = 2274.192, y = 223.962, z = -916.724 }, rot = { x = 348.980, y = 157.536, z = 359.618 }, level = 1, area_id = 1 },
	{ config_id = 932006, gadget_id = 70220001, pos = { x = 2272.325, y = 224.468, z = -919.838 }, rot = { x = 354.657, y = 231.413, z = 348.497 }, level = 1, area_id = 1 },
	{ config_id = 932007, gadget_id = 70220001, pos = { x = 2269.001, y = 223.946, z = -925.761 }, rot = { x = 348.812, y = 104.624, z = 18.911 }, level = 1, area_id = 1 },
	{ config_id = 932008, gadget_id = 70220001, pos = { x = 2265.366, y = 221.722, z = -920.049 }, rot = { x = 343.576, y = 141.664, z = 5.679 }, level = 1, area_id = 1 },
	{ config_id = 932009, gadget_id = 70220001, pos = { x = 2274.678, y = 225.938, z = -955.232 }, rot = { x = 0.000, y = 252.372, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 932010, gadget_id = 70220001, pos = { x = 2267.369, y = 225.941, z = -959.046 }, rot = { x = 0.000, y = 219.690, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 932012, gadget_id = 70300118, pos = { x = 2189.558, y = 217.867, z = -884.493 }, rot = { x = 4.386, y = 1.079, z = 2.167 }, level = 1, area_id = 1 },
	{ config_id = 932013, gadget_id = 70300118, pos = { x = 2191.750, y = 219.934, z = -887.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 932014, gadget_id = 70300118, pos = { x = 2185.046, y = 220.075, z = -886.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 932018, gadget_id = 70300118, pos = { x = 2274.170, y = 224.055, z = -916.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 932020, gadget_id = 70300118, pos = { x = 2272.317, y = 224.545, z = -920.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 932022, gadget_id = 70300118, pos = { x = 2265.421, y = 221.854, z = -920.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 932024, gadget_id = 70300118, pos = { x = 2268.971, y = 224.003, z = -925.730 }, rot = { x = 358.609, y = 5.630, z = 356.340 }, level = 1, area_id = 1 },
	{ config_id = 932026, gadget_id = 70300118, pos = { x = 2279.009, y = 225.944, z = -956.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 932028, gadget_id = 70300118, pos = { x = 2274.921, y = 225.938, z = -955.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 932030, gadget_id = 70300118, pos = { x = 2267.403, y = 225.941, z = -959.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1932011, name = "ANY_GADGET_DIE_932011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_932011", trigger_count = 0 },
	{ config_id = 1932015, name = "ANY_GADGET_DIE_932015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_932015", action = "action_EVENT_ANY_GADGET_DIE_932015", trigger_count = 0 },
	{ config_id = 1932016, name = "ANY_GADGET_DIE_932016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_932016", action = "action_EVENT_ANY_GADGET_DIE_932016", trigger_count = 0 },
	{ config_id = 1932017, name = "ANY_GADGET_DIE_932017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_932017", action = "action_EVENT_ANY_GADGET_DIE_932017", trigger_count = 0 },
	{ config_id = 1932019, name = "ANY_GADGET_DIE_932019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_932019", action = "action_EVENT_ANY_GADGET_DIE_932019", trigger_count = 0 },
	{ config_id = 1932021, name = "ANY_GADGET_DIE_932021", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_932021", action = "action_EVENT_ANY_GADGET_DIE_932021", trigger_count = 0 },
	{ config_id = 1932023, name = "ANY_GADGET_DIE_932023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_932023", action = "action_EVENT_ANY_GADGET_DIE_932023", trigger_count = 0 },
	{ config_id = 1932025, name = "ANY_GADGET_DIE_932025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_932025", action = "action_EVENT_ANY_GADGET_DIE_932025", trigger_count = 0 },
	{ config_id = 1932027, name = "ANY_GADGET_DIE_932027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_932027", action = "action_EVENT_ANY_GADGET_DIE_932027", trigger_count = 0 },
	{ config_id = 1932029, name = "ANY_GADGET_DIE_932029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_932029", action = "action_EVENT_ANY_GADGET_DIE_932029", trigger_count = 0 },
	{ config_id = 1932031, name = "ANY_GADGET_DIE_932031", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_932031", action = "action_EVENT_ANY_GADGET_DIE_932031", trigger_count = 0 }
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
		gadgets = { 932002, 932003, 932004, 932012, 932013, 932014 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_932011", "ANY_GADGET_DIE_932015", "ANY_GADGET_DIE_932016", "ANY_GADGET_DIE_932017" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 932005, 932006, 932007, 932008, 932018, 932020, 932022, 932024 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_932011", "ANY_GADGET_DIE_932019", "ANY_GADGET_DIE_932021", "ANY_GADGET_DIE_932023", "ANY_GADGET_DIE_932025" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 932001, 932009, 932010, 932026, 932028, 932030 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_932011", "ANY_GADGET_DIE_932027", "ANY_GADGET_DIE_932029", "ANY_GADGET_DIE_932031" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_932011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330049321") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_932015(context, evt)
	if 932004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_932015(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133004932, EntityType.GADGET, 932013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_932016(context, evt)
	if 932002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_932016(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133004932, EntityType.GADGET, 932012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_932017(context, evt)
	if 932003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_932017(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133004932, EntityType.GADGET, 932014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_932019(context, evt)
	if 932005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_932019(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133004932, EntityType.GADGET, 932018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_932021(context, evt)
	if 932006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_932021(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133004932, EntityType.GADGET, 932020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_932023(context, evt)
	if 932008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_932023(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133004932, EntityType.GADGET, 932022 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_932025(context, evt)
	if 932007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_932025(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133004932, EntityType.GADGET, 932024 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_932027(context, evt)
	if 932001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_932027(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133004932, EntityType.GADGET, 932026 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_932029(context, evt)
	if 932009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_932029(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133004932, EntityType.GADGET, 932028 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_932031(context, evt)
	if 932010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_932031(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133004932, EntityType.GADGET, 932030 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end