-- 基础信息
local base_info = {
	group_id = 220131014
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
	{ config_id = 14001, gadget_id = 70800202, pos = { x = 79.182, y = 10.607, z = -7.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14002, gadget_id = 70800202, pos = { x = 79.183, y = 10.662, z = 6.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14003, gadget_id = 70800203, pos = { x = 68.697, y = 11.520, z = -8.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14004, gadget_id = 70800203, pos = { x = 64.965, y = 13.023, z = 52.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 增加任务进度；改group16变量，用于切换目标点；改group11变量，用于开移动房间大门；把group10的射线灯打开；把group15的鬼火接收器suite加载出来
	{ config_id = 1014005, name = "VARIABLE_CHANGE_14005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_14005", action = "action_EVENT_VARIABLE_CHANGE_14005" },
	{ config_id = 1014006, name = "GADGET_STATE_CHANGE_14006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14006", action = "action_EVENT_GADGET_STATE_CHANGE_14006", trigger_count = 0 },
	{ config_id = 1014007, name = "GADGET_STATE_CHANGE_14007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14007", action = "action_EVENT_GADGET_STATE_CHANGE_14007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GH1", value = 0, no_refresh = false }
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
		gadgets = { 14001, 14002, 14003, 14004 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_14005", "GADGET_STATE_CHANGE_14006", "GADGET_STATE_CHANGE_14007" },
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
function condition_EVENT_VARIABLE_CHANGE_14005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GH1"为2
	if ScriptLib.GetGroupVariableValue(context, "GH1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_14005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "110261301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "Stage" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Stage", 4, 220131016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Start", 1, 220131011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组220131010中， configid为10003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220131010, 10003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131015, 2)
	
	-- 将本组内变量名为 "Stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Stage", 2, 220131019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14006(context, evt)
	if 14001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14006(context, evt)
	-- 针对当前group内变量名为 "GH1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "GH1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14007(context, evt)
	if 14002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14007(context, evt)
	-- 针对当前group内变量名为 "GH1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "GH1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end