-- 基础信息
local base_info = {
	group_id = 166001048
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48001, monster_id = 22010101, pos = { x = 670.470, y = 419.898, z = 754.110 }, rot = { x = 0.000, y = 188.422, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 48004, gadget_id = 70290364, pos = { x = 674.566, y = 419.791, z = 774.317 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 48005, gadget_id = 70310001, pos = { x = 676.873, y = 419.831, z = 772.655 }, rot = { x = 0.000, y = 55.944, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 48006, gadget_id = 70310001, pos = { x = 671.864, y = 419.798, z = 773.451 }, rot = { x = 0.000, y = 203.315, z = 0.000 }, level = 36, persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1048002, name = "GADGET_STATE_CHANGE_48002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48002", action = "action_EVENT_GADGET_STATE_CHANGE_48002", trigger_count = 0 },
	{ config_id = 1048003, name = "QUEST_FINISH_48003", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_48003", action = "action_EVENT_QUEST_FINISH_48003", trigger_count = 0 },
	{ config_id = 1048007, name = "QUEST_FINISH_48007", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_48007", action = "action_EVENT_QUEST_FINISH_48007", trigger_count = 0 }
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
		monsters = { 48001 },
		gadgets = { 48004, 48005, 48006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_48002", "QUEST_FINISH_48003", "QUEST_FINISH_48007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_48002(context, evt)
	if 48004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_48002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001048") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "bell" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "bell", 1, 166001190) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_48003(context, evt)
	--检查ID为7104310的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7104310 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_48003(context, evt)
	-- 调用提示id为 60010157 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010157) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_48007(context, evt)
	--检查ID为7104320的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7104320 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_48007(context, evt)
	-- 将configid为 48004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end