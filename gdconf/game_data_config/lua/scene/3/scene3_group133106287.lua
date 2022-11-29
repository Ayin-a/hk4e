-- 基础信息
local base_info = {
	group_id = 133106287
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
	{ config_id = 287001, gadget_id = 70360001, pos = { x = -529.275, y = 183.992, z = 1139.041 }, rot = { x = 0.000, y = 175.400, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 8 },
	{ config_id = 287002, gadget_id = 70211131, pos = { x = -530.064, y = 184.049, z = 1140.070 }, rot = { x = 4.433, y = 158.941, z = 359.976 }, level = 26, chest_drop_id = 2001500, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1287003, name = "GADGET_CREATE_287003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_287003", action = "action_EVENT_GADGET_CREATE_287003", trigger_count = 0 },
	{ config_id = 1287004, name = "SELECT_OPTION_287004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_287004", action = "action_EVENT_SELECT_OPTION_287004" },
	{ config_id = 1287005, name = "GADGET_STATE_CHANGE_287005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_287005", action = "action_EVENT_GADGET_STATE_CHANGE_287005" },
	{ config_id = 1287006, name = "QUEST_FINISH_287006", event = EventType.EVENT_QUEST_FINISH, source = "7155510", condition = "condition_EVENT_QUEST_FINISH_287006", action = "action_EVENT_QUEST_FINISH_287006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestActive", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 287001 },
		regions = { },
		triggers = { "GADGET_CREATE_287003", "SELECT_OPTION_287004", "QUEST_FINISH_287006" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 287002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_287005" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_287003(context, evt)
	if 287001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"chestActive"为1
	if ScriptLib.GetGroupVariableValue(context, "chestActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_287003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106287, 287001, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_287004(context, evt)
	-- 判断是gadgetid 287001 option_id 169
	if 287001 ~= evt.param1 then
		return false	
	end
	
	if 169 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_287004(context, evt)
	-- 删除指定group： 133106287 ；指定config：287001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133106287, 287001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133106287, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_287005(context, evt)
	if 287002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_287005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7155511_finfish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_287006(context, evt)
	--检查ID为7155510的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7155510 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_287006(context, evt)
	-- 将本组内变量名为 "chestActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chestActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106287, 287001, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end