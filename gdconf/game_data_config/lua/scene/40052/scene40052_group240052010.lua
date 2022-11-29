-- 基础信息
local base_info = {
	group_id = 240052010
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
	{ config_id = 10001, gadget_id = 70310198, pos = { x = 748.514, y = 56.864, z = 386.766 }, rot = { x = 0.000, y = 140.016, z = 0.000 }, level = 30 },
	{ config_id = 10002, gadget_id = 70310200, pos = { x = 757.900, y = 60.395, z = 377.759 }, rot = { x = 0.000, y = 312.385, z = 0.000 }, level = 30 },
	-- 1号移动
	{ config_id = 10003, gadget_id = 70290531, pos = { x = 756.877, y = 60.395, z = 375.036 }, rot = { x = 0.000, y = 17.414, z = 0.000 }, level = 30, route_id = 2 },
	{ config_id = 10004, gadget_id = 70310198, pos = { x = 739.550, y = 58.985, z = 343.151 }, rot = { x = 0.000, y = 54.287, z = 0.000 }, level = 30 },
	-- 2号移动
	{ config_id = 10005, gadget_id = 70290531, pos = { x = 747.758, y = 62.978, z = 354.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 3 },
	-- 3号移动
	{ config_id = 10006, gadget_id = 70290531, pos = { x = 735.647, y = 63.872, z = 344.179 }, rot = { x = 0.000, y = 80.239, z = 0.000 }, level = 30, route_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010007, name = "GADGET_STATE_CHANGE_10007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10007", action = "action_EVENT_GADGET_STATE_CHANGE_10007", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1010008, name = "GADGET_STATE_CHANGE_10008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10008", action = "action_EVENT_GADGET_STATE_CHANGE_10008", trigger_count = 0 },
	{ config_id = 1010009, name = "GADGET_STATE_CHANGE_10009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10009", action = "action_EVENT_GADGET_STATE_CHANGE_10009", trigger_count = 0 },
	{ config_id = 1010010, name = "GADGET_STATE_CHANGE_10010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10010", action = "action_EVENT_GADGET_STATE_CHANGE_10010", trigger_count = 0 }
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
		gadgets = { 10001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 10003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_10007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 10002, 10004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_10008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 10005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_10009" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 10006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_10010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10007(context, evt)
	if 10003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10007(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240052010, 4)
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 10003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10008(context, evt)
	if 10002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240052010, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10009(context, evt)
	if 10005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10009(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240052010, 5)
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 10005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10010(context, evt)
	if 10006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10010(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 10006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 改变指定group组240052004中， configid为4003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240052004, 4003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240052004, 2)
	
	return 0
end