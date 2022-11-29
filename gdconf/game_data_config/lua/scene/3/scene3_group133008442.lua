-- 基础信息
local base_info = {
	group_id = 133008442
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
	{ config_id = 442001, gadget_id = 70380024, pos = { x = 677.868, y = 200.592, z = -836.509 }, rot = { x = 0.000, y = 10.210, z = 0.000 }, level = 30, route_id = 300800110, start_route = false, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1442002, name = "QUEST_FINISH_442002", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_442002", action = "action_EVENT_QUEST_FINISH_442002" },
	{ config_id = 1442003, name = "GROUP_LOAD_442003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_442003", action = "action_EVENT_GROUP_LOAD_442003" },
	{ config_id = 1442004, name = "PLATFORM_REACH_POINT_442004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_442004", action = "action_EVENT_PLATFORM_REACH_POINT_442004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 442006, gadget_id = 70300086, pos = { x = 673.500, y = 195.900, z = -848.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
	}
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
		gadgets = { 442001 },
		regions = { },
		triggers = { "QUEST_FINISH_442002", "GROUP_LOAD_442003", "PLATFORM_REACH_POINT_442004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_442002(context, evt)
	--检查ID为1104503的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1104503 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_442002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 442001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 133008442) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_442003(context, evt)
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_442003(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 442001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_442004(context, evt)
	-- 判断是gadgetid 为 442001的移动平台，是否到达了300800110 的路线中的 1 点
	
	if 442001 ~= evt.param1 then
	  return false
	end
	
	if 300800110 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_442004(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end