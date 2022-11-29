-- 基础信息
local base_info = {
	group_id = 240051007
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
	{ config_id = 7001, gadget_id = 70310198, pos = { x = 449.125, y = 68.294, z = 513.011 }, rot = { x = 0.000, y = 148.152, z = 0.000 }, level = 30 },
	{ config_id = 7002, gadget_id = 70310200, pos = { x = 448.322, y = 69.432, z = 506.856 }, rot = { x = 0.000, y = 298.874, z = 0.000 }, level = 30 },
	-- 1号移动
	{ config_id = 7003, gadget_id = 70290531, pos = { x = 449.612, y = 69.432, z = 506.162 }, rot = { x = 0.000, y = 127.472, z = 0.000 }, level = 30, route_id = 3 },
	{ config_id = 7004, gadget_id = 70310198, pos = { x = 441.548, y = 68.115, z = 489.027 }, rot = { x = 0.000, y = 108.361, z = 0.000 }, level = 30 },
	-- 2号移动
	{ config_id = 7005, gadget_id = 70290531, pos = { x = 462.205, y = 69.432, z = 517.669 }, rot = { x = 0.000, y = 357.173, z = 0.000 }, level = 30, route_id = 4 },
	-- 3号移动
	{ config_id = 7006, gadget_id = 70290531, pos = { x = 481.420, y = 68.928, z = 488.414 }, rot = { x = 0.000, y = 59.020, z = 0.000 }, level = 30, route_id = 5 },
	-- 4号移动
	{ config_id = 7011, gadget_id = 70290531, pos = { x = 449.622, y = 69.432, z = 490.050 }, rot = { x = 0.000, y = 59.020, z = 0.000 }, level = 30, route_id = 6 },
	{ config_id = 7013, gadget_id = 70310198, pos = { x = 479.143, y = 68.099, z = 485.775 }, rot = { x = 0.000, y = 90.268, z = 0.000 }, level = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007007, name = "GADGET_STATE_CHANGE_7007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7007", action = "action_EVENT_GADGET_STATE_CHANGE_7007", trigger_count = 0 },
	{ config_id = 1007008, name = "GADGET_STATE_CHANGE_7008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7008", action = "action_EVENT_GADGET_STATE_CHANGE_7008", trigger_count = 0 },
	{ config_id = 1007009, name = "GADGET_STATE_CHANGE_7009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7009", action = "action_EVENT_GADGET_STATE_CHANGE_7009", trigger_count = 0 },
	{ config_id = 1007010, name = "GADGET_STATE_CHANGE_7010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7010", action = "action_EVENT_GADGET_STATE_CHANGE_7010", trigger_count = 0 },
	{ config_id = 1007012, name = "GADGET_STATE_CHANGE_7012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7012", action = "action_EVENT_GADGET_STATE_CHANGE_7012", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 7001, 7004, 7013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 7003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_7007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 7002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_7008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 7005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_7009" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 7006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_7010" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 7011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_7012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7007(context, evt)
	if 7003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7007(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240051007, 4)
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7008(context, evt)
	if 7002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240051007, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7009(context, evt)
	if 7005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7009(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240051007, 5)
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7010(context, evt)
	if 7006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7010(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240051007, 6)
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7012(context, evt)
	if 7011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7012(context, evt)
	-- 改变指定group组240051004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240051004, 4002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240051004, 2)
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end