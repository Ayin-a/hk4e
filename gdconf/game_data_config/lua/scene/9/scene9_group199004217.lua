-- 基础信息
local base_info = {
	group_id = 199004217
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
	{ config_id = 217001, gadget_id = 70211111, pos = { x = -335.181, y = 161.083, z = -637.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 217002, gadget_id = 70380002, pos = { x = -336.154, y = 163.366, z = -636.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 217003, gadget_id = 70380002, pos = { x = -351.063, y = 163.349, z = -643.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 217004, gadget_id = 70380002, pos = { x = -350.714, y = 163.249, z = -632.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 217007, gadget_id = 70380002, pos = { x = -345.299, y = 163.249, z = -634.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 217008, gadget_id = 70380002, pos = { x = -345.920, y = 163.249, z = -624.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 217009, gadget_id = 70380002, pos = { x = -340.619, y = 163.249, z = -629.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1217005, name = "ANY_GADGET_DIE_217005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_217005", action = "action_EVENT_ANY_GADGET_DIE_217005", trigger_count = 0 },
	{ config_id = 1217006, name = "GADGET_STATE_CHANGE_217006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217006", action = "action_EVENT_GADGET_STATE_CHANGE_217006", trigger_count = 0 },
	{ config_id = 1217010, name = "ANY_GADGET_DIE_217010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_217010", action = "action_EVENT_ANY_GADGET_DIE_217010", trigger_count = 0 },
	{ config_id = 1217011, name = "TIME_AXIS_PASS_217011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS_217011", trigger_count = 0 },
	{ config_id = 1217012, name = "GROUP_LOAD_217012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_217012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "chest", value = 0, no_refresh = true }
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
		gadgets = { 217002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_217006", "ANY_GADGET_DIE_217010", "TIME_AXIS_PASS_217011", "GROUP_LOAD_217012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 217003, 217004, 217007, 217008, 217009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_217005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 217001 },
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
function condition_EVENT_ANY_GADGET_DIE_217005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 199004217}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_217005(context, evt)
	-- 将本组内变量名为 "chest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199004217, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_217006(context, evt)
	if 91001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217006(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_217010(context, evt)
	if 217002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"chest"为0
	if ScriptLib.GetGroupVariableValue(context, "chest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_217010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004217, 2)
	
	-- 创建标识为"temp"，时间节点为{10}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "temp", {10}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_217011(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "chest") == 0 and evt.source_name == "temp" and evt.param1 == 1 then
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_217012(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "chest") == 0 then
		ScriptLib.RemoveExtraGroupSuite(context, 199004217, 2)
		
		ScriptLib.CreateGadget(context, {config_id=217002})
	end
	
	return 0
end