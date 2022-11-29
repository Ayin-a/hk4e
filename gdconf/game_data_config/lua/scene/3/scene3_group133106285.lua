-- 基础信息
local base_info = {
	group_id = 133106285
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
	{ config_id = 285004, npc_id = 20084, pos = { x = -535.113, y = 195.954, z = 1061.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 8 }
}

-- 装置
gadgets = {
	-- 痕迹
	{ config_id = 285001, gadget_id = 70210102, pos = { x = -527.401, y = 196.002, z = 1055.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 8 },
	-- 火堆
	{ config_id = 285002, gadget_id = 70210102, pos = { x = -531.877, y = 195.962, z = 1058.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 8 },
	-- 日志
	{ config_id = 285003, gadget_id = 70360040, pos = { x = -535.079, y = 195.971, z = 1061.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 285020, gadget_id = 70310004, pos = { x = -531.935, y = 195.674, z = 1058.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 285007, shape = RegionShape.SPHERE, radius = 14.9, pos = { x = -533.681, y = 195.871, z = 1058.085 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1285005, name = "QUEST_FINISH_285005", event = EventType.EVENT_QUEST_FINISH, source = "7155508", condition = "", action = "action_EVENT_QUEST_FINISH_285005" },
	{ config_id = 1285006, name = "GADGET_STATE_CHANGE_285006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_285006", action = "action_EVENT_GADGET_STATE_CHANGE_285006" },
	{ config_id = 1285007, name = "ENTER_REGION_285007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_285007", action = "action_EVENT_ENTER_REGION_285007" },
	{ config_id = 1285008, name = "QUEST_FINISH_285008", event = EventType.EVENT_QUEST_FINISH, source = "7155503", condition = "condition_EVENT_QUEST_FINISH_285008", action = "action_EVENT_QUEST_FINISH_285008" },
	{ config_id = 1285009, name = "VARIABLE_CHANGE_285009", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_285009", action = "action_EVENT_VARIABLE_CHANGE_285009" },
	{ config_id = 1285010, name = "QUEST_FINISH_285010", event = EventType.EVENT_QUEST_FINISH, source = "7155504", condition = "condition_EVENT_QUEST_FINISH_285010", action = "action_EVENT_QUEST_FINISH_285010" },
	{ config_id = 1285011, name = "QUEST_FINISH_285011", event = EventType.EVENT_QUEST_FINISH, source = "7155505", condition = "condition_EVENT_QUEST_FINISH_285011", action = "action_EVENT_QUEST_FINISH_285011" },
	{ config_id = 1285012, name = "GADGET_STATE_CHANGE_285012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_285012", action = "action_EVENT_GADGET_STATE_CHANGE_285012" },
	{ config_id = 1285013, name = "GADGET_CREATE_285013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_285013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false },
	{ config_id = 2, name = "default", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 285001, 285002, 285003, 285020 },
		regions = { 285007 },
		triggers = { "QUEST_FINISH_285005", "GADGET_STATE_CHANGE_285006", "ENTER_REGION_285007", "QUEST_FINISH_285008", "VARIABLE_CHANGE_285009", "QUEST_FINISH_285010", "QUEST_FINISH_285011", "GADGET_STATE_CHANGE_285012", "GADGET_CREATE_285013" },
		npcs = { 285004 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 285020 },
		regions = { },
		triggers = { },
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
function action_EVENT_QUEST_FINISH_285005(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106285, 1)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133106285, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_285006(context, evt)
	if 285001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_285006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7155505_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_285007(context, evt)
	if evt.param1 ~= 285007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_285007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7155513_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_285008(context, evt)
	--检查ID为7155503的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7155503 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_285008(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_285009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_285009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7155599_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_285010(context, evt)
	--检查ID为7155504的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7155504 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_285010(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_285011(context, evt)
	--检查ID为7155505的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7155505 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_285011(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_285012(context, evt)
	if 285002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_285012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7155504_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_285013(context, evt)
	ScriptLib.PrintContextLog(context, "## CHEST_LOG : Gadget_Create ->"..evt.param1)
	return 0
end