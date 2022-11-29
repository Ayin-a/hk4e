-- 基础信息
local base_info = {
	group_id = 177005181
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
	{ config_id = 181001, gadget_id = 70360001, pos = { x = 229.471, y = 313.830, z = 300.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1181002, name = "GROUP_LOAD_181002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_181002", trigger_count = 0 },
	{ config_id = 1181003, name = "QUEST_START_181003", event = EventType.EVENT_QUEST_START, source = "7227622", condition = "", action = "action_EVENT_QUEST_START_181003", trigger_count = 0 },
	{ config_id = 1181004, name = "QUEST_FINISH_181004", event = EventType.EVENT_QUEST_FINISH, source = "7227612", condition = "condition_EVENT_QUEST_FINISH_181004", action = "action_EVENT_QUEST_FINISH_181004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "qflag", value = 0, no_refresh = true }
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
		gadgets = { 181001 },
		regions = { },
		triggers = { "GROUP_LOAD_181002", "QUEST_START_181003", "QUEST_FINISH_181004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_181002(context, evt)
	
	--加载scenetag
	if ScriptLib.GetGroupVariableValue(context, "qflag") == 0 then
	 	ScriptLib.AddSceneTag(context,7,1032)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_181003(context, evt)
	-- 将本组内变量名为 "qflag" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "qflag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_181004(context, evt)
	--检查ID为7227612的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7227612 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_181004(context, evt)
	-- 将本组内变量名为 "qflag" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "qflag", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end