-- 基础信息
local base_info = {
	group_id = 133002277
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
	{ config_id = 2313, gadget_id = 70380004, pos = { x = 1955.604, y = 219.536, z = -549.637 }, rot = { x = 0.000, y = 178.123, z = 0.000 }, level = 25, route_id = 300200209, start_route = false, persistent = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000360, name = "ANY_GADGET_DIE_360", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360", action = "action_EVENT_ANY_GADGET_DIE_360", trigger_count = 0 },
	{ config_id = 1000361, name = "QUEST_FINISH_361", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_361", action = "action_EVENT_QUEST_FINISH_361", trigger_count = 0 },
	{ config_id = 1000362, name = "PLATFORM_REACH_POINT_362", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362", action = "action_EVENT_PLATFORM_REACH_POINT_362" },
	{ config_id = 1000363, name = "GADGET_CREATE_363", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_363", action = "action_EVENT_GADGET_CREATE_363", trigger_count = 0 },
	{ config_id = 1277001, name = "GROUP_LOAD_277001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_277001", action = "action_EVENT_GROUP_LOAD_277001" }
}

-- 变量
variables = {
	{ config_id = 1, name = "ison", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2313 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_360", "QUEST_FINISH_361", "PLATFORM_REACH_POINT_362", "GADGET_CREATE_363", "GROUP_LOAD_277001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360(context, evt)
	if 2313 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022771") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_361(context, evt)
	--检查ID为2001708的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2001708 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_361(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2313) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将group 133002277 中config id为 2313 的物件血量设为 100 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetGadgetHp(context, 133002277, 2313, 100) then
			    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_hp_by_group")
	    return -1
		end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_362(context, evt)
	-- 判断是gadgetid 为 2313的移动平台，是否到达了300200209 的路线中的 3 点
	
	if 2313 ~= evt.param1 then
	  return false
	end
	
	if 300200209 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_362(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002277, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 变量"ison"赋值为0
	ScriptLib.SetGroupVariableValue(context, "ison", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_363(context, evt)
	if 2313 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_363(context, evt)
	-- 将group 133002277 中config id为 2313 的物件血量设为 50 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetGadgetHp(context, 133002277, 2313, 50) then
			    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_hp_by_group")
	    return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_277001(context, evt)
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_277001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002277, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end