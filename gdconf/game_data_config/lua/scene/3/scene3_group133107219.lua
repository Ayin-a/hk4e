-- 基础信息
local base_info = {
	group_id = 133107219
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
	{ config_id = 219001, gadget_id = 71700330, pos = { x = -783.196, y = 206.227, z = 734.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, interact_id = 91, area_id = 8 },
	{ config_id = 219003, gadget_id = 70710493, pos = { x = -782.985, y = 206.365, z = 733.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 219004, gadget_id = 70710589, pos = { x = -783.467, y = 206.365, z = 733.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 219005, gadget_id = 70710495, pos = { x = -782.465, y = 206.365, z = 733.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 219006, gadget_id = 70710608, pos = { x = -782.700, y = 206.365, z = 733.194 }, rot = { x = 0.000, y = 328.847, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 8 },
	{ config_id = 219007, gadget_id = 70710607, pos = { x = -782.700, y = 206.365, z = 733.194 }, rot = { x = 0.000, y = 16.143, z = 0.000 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1219002, name = "GROUP_LOAD_219002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_219002", action = "action_EVENT_GROUP_LOAD_219002", trigger_count = 0 },
	{ config_id = 1219008, name = "GADGET_STATE_CHANGE_219008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_219008", action = "action_EVENT_GADGET_STATE_CHANGE_219008" },
	{ config_id = 1219009, name = "QUEST_FINISH_219009", event = EventType.EVENT_QUEST_FINISH, source = "7183105", condition = "condition_EVENT_QUEST_FINISH_219009", action = "action_EVENT_QUEST_FINISH_219009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "jingxiang", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_219002", "QUEST_FINISH_219009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 219001, 219003, 219004, 219005, 219007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_219008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 219006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 219003, 219004, 219005, 219006, 219007 },
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
function condition_EVENT_GROUP_LOAD_219002(context, evt)
	-- 判断变量"jingxiang"为1
	if ScriptLib.GetGroupVariableValue(context, "jingxiang") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_219002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107219, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_219008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133107219, 219001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_219008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107219, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_219009(context, evt)
	--检查ID为7183105的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7183105 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_219009(context, evt)
	-- 将本组内变量名为 "jingxiang" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "jingxiang", 1, 133107219) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107219, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end