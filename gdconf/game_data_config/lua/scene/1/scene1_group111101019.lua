-- 基础信息
local base_info = {
	group_id = 111101019
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
	{ config_id = 19001, gadget_id = 70900039, pos = { x = 2542.263, y = 219.065, z = -1421.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19002, gadget_id = 70900236, pos = { x = 2540.764, y = 218.928, z = -1418.327 }, rot = { x = 2.683, y = 0.042, z = 1.790 }, level = 1 },
	{ config_id = 19003, gadget_id = 70900236, pos = { x = 2538.938, y = 218.960, z = -1420.181 }, rot = { x = 2.683, y = 0.042, z = 1.790 }, level = 1 },
	{ config_id = 19004, gadget_id = 70900236, pos = { x = 2539.482, y = 219.079, z = -1423.283 }, rot = { x = 2.683, y = 0.042, z = 1.790 }, level = 1 },
	{ config_id = 19005, gadget_id = 70900236, pos = { x = 2541.024, y = 219.117, z = -1424.464 }, rot = { x = 2.683, y = 0.042, z = 1.790 }, level = 1 },
	{ config_id = 19006, gadget_id = 70900236, pos = { x = 2542.675, y = 219.101, z = -1424.805 }, rot = { x = 2.683, y = 0.042, z = 1.790 }, level = 1 },
	{ config_id = 19007, gadget_id = 70900236, pos = { x = 2544.212, y = 219.055, z = -1423.961 }, rot = { x = 2.683, y = 0.042, z = 1.790 }, level = 1 },
	{ config_id = 19008, gadget_id = 70900236, pos = { x = 2544.926, y = 219.044, z = -1422.025 }, rot = { x = 2.683, y = 0.042, z = 1.790 }, level = 1 },
	{ config_id = 19009, gadget_id = 70900236, pos = { x = 2544.490, y = 219.024, z = -1419.981 }, rot = { x = 2.683, y = 0.042, z = 1.790 }, level = 1 },
	{ config_id = 19010, gadget_id = 70900236, pos = { x = 2542.868, y = 218.988, z = -1418.390 }, rot = { x = 2.683, y = 0.042, z = 1.790 }, level = 1 },
	{ config_id = 19011, gadget_id = 70900236, pos = { x = 2539.637, y = 218.920, z = -1418.919 }, rot = { x = 2.683, y = 0.042, z = 1.790 }, level = 1 },
	{ config_id = 19012, gadget_id = 70900236, pos = { x = 2538.803, y = 219.001, z = -1421.558 }, rot = { x = 2.683, y = 0.042, z = 1.790 }, level = 1 },
	{ config_id = 19013, gadget_id = 70900236, pos = { x = 2539.957, y = 222.112, z = -1425.237 }, rot = { x = 2.683, y = 0.042, z = 1.790 }, level = 1 },
	{ config_id = 19017, gadget_id = 70900039, pos = { x = 2542.257, y = 219.044, z = -1421.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1019014, name = "GADGET_STATE_CHANGE_19014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19014", action = "action_EVENT_GADGET_STATE_CHANGE_19014", trigger_count = 0 },
	{ config_id = 1019015, name = "ANY_GADGET_DIE_19015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_19015", action = "action_EVENT_ANY_GADGET_DIE_19015" },
	{ config_id = 1019016, name = "TIMER_EVENT_19016", event = EventType.EVENT_TIMER_EVENT, source = "COIN", condition = "condition_EVENT_TIMER_EVENT_19016", action = "action_EVENT_TIMER_EVENT_19016", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 19001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_19014", "ANY_GADGET_DIE_19015", "TIMER_EVENT_19016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 19002, 19003, 19004, 19005, 19006, 19007, 19008, 19009, 19010, 19011, 19012, 19013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 19017 },
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
function condition_EVENT_GADGET_STATE_CHANGE_19014(context, evt)
	if 19001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101019, 2)
	
	-- 延迟9秒后,向groupId为：111101019的对象,请求一次调用,并将string参数："COIN" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101019, "COIN", 9) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_19015(context, evt)
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 111101019}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_19015(context, evt)
	-- 调用提示id为 20010102 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20010102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_19016(context, evt)
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_19016(context, evt)
	-- 变量"start"赋值为0
	ScriptLib.SetGroupVariableValue(context, "start", 0)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101019, 2)
	
	-- 将configid为 19001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end