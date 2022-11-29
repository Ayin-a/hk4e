-- 基础信息
local base_info = {
	group_id = 201055001
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
	{ config_id = 1001, gadget_id = 70350002, pos = { x = -10.165, y = 53.897, z = -6.731 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1002, gadget_id = 70900049, pos = { x = -31.853, y = 48.457, z = 17.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action01 },
	{ config_id = 1003, gadget_id = 70380020, pos = { x = -25.332, y = 48.397, z = 22.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1007, gadget_id = 70211001, pos = { x = -47.242, y = 52.766, z = 16.648 }, rot = { x = 0.000, y = 89.823, z = 0.000 }, level = 11, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 1005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -48.480, y = 58.474, z = -2.518 } }
}

-- 触发器
triggers = {
	{ config_id = 1001004, name = "GADGET_STATE_CHANGE_1004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1004", action = "action_EVENT_GADGET_STATE_CHANGE_1004", trigger_count = 0 },
	{ config_id = 1001005, name = "ENTER_REGION_1005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1005", action = "action_EVENT_ENTER_REGION_1005" },
	{ config_id = 1001006, name = "QUEST_FINISH_1006", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_1006", action = "action_EVENT_QUEST_FINISH_1006" },
	{ config_id = 1001008, name = "TIMER_EVENT_1008", event = EventType.EVENT_TIMER_EVENT, source = "water2", condition = "", action = "action_EVENT_TIMER_EVENT_1008", trigger_count = 0 },
	{ config_id = 1001009, name = "TIMER_EVENT_1009", event = EventType.EVENT_TIMER_EVENT, source = "water1", condition = "", action = "action_EVENT_TIMER_EVENT_1009", trigger_count = 0 }
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
		gadgets = { 1001, 1002, 1003, 1007 },
		regions = { 1005 },
		triggers = { "GADGET_STATE_CHANGE_1004", "ENTER_REGION_1005", "QUEST_FINISH_1006", "TIMER_EVENT_1008", "TIMER_EVENT_1009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1004(context, evt)
	if 1002 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1004(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 1003, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 延迟4.5秒后,向groupId为：201055001的对象,请求一次调用,并将string参数："water1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055001, "water1", 4.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟6秒后,向groupId为：201055001的对象,请求一次调用,并将string参数："water2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055001, "water2", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1005(context, evt)
	if evt.param1 ~= 1005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201055006, 2)
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201055006, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_1006(context, evt)
	--检查ID为1101221的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1101221 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1006(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1008(context, evt)
	-- 将configid为 1002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1009(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 1003, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end