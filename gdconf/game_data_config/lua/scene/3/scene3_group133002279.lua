-- 基础信息
local base_info = {
	group_id = 133002279
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
	{ config_id = 2337, gadget_id = 70380004, pos = { x = 2018.115, y = 204.925, z = -926.919 }, rot = { x = 0.000, y = 5.316, z = 0.000 }, level = 25, route_id = 300200210, start_route = false, persistent = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000367, name = "ANY_GADGET_DIE_367", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_367", action = "action_EVENT_ANY_GADGET_DIE_367", trigger_count = 0 },
	{ config_id = 1000368, name = "QUEST_FINISH_368", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_368", action = "action_EVENT_QUEST_FINISH_368", trigger_count = 0 },
	{ config_id = 1000369, name = "PLATFORM_REACH_POINT_369", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_369", action = "action_EVENT_PLATFORM_REACH_POINT_369" },
	{ config_id = 1000370, name = "GADGET_CREATE_370", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_370", action = "action_EVENT_GADGET_CREATE_370", trigger_count = 0 },
	{ config_id = 1279001, name = "GROUP_LOAD_279001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_279001", action = "action_EVENT_GROUP_LOAD_279001" }
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
		gadgets = { 2337 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_367", "QUEST_FINISH_368", "PLATFORM_REACH_POINT_369", "GADGET_CREATE_370", "GROUP_LOAD_279001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_367(context, evt)
	if 2337 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_367(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022791") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_368(context, evt)
	--检查ID为2001808的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2001808 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_368(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2337) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将group 133002279 中config id为 2337 的物件血量设为 100 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetGadgetHp(context, 133002279, 2337, 100) then
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
function condition_EVENT_PLATFORM_REACH_POINT_369(context, evt)
	-- 判断是gadgetid 为 2337的移动平台，是否到达了300200210 的路线中的 3 点
	
	if 2337 ~= evt.param1 then
	  return false
	end
	
	if 300200210 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_369(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002279, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 变量"ison"赋值为0
	ScriptLib.SetGroupVariableValue(context, "ison", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_370(context, evt)
	if 2337 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_370(context, evt)
	-- 将group 133002279 中config id为 2337 的物件血量设为 50 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetGadgetHp(context, 133002279, 2337, 50) then
			    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_hp_by_group")
	    return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_279001(context, evt)
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_279001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002279, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end