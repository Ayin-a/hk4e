-- 基础信息
local base_info = {
	group_id = 220133037
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
	{ config_id = 37001, gadget_id = 70310242, pos = { x = 13.920, y = 182.675, z = 628.057 }, rot = { x = 0.000, y = 196.717, z = 0.000 }, level = 1, interact_id = 64 },
	{ config_id = 37002, gadget_id = 70310381, pos = { x = -7.160, y = 184.080, z = 627.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第一次鼓A交互 AddSuit2   和    刷新group到指定suit
	{ config_id = 1037003, name = "GADGET_STATE_CHANGE_37003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37003", action = "action_EVENT_GADGET_STATE_CHANGE_37003", trigger_count = 0 },
	-- 第二次鼓A交互 AddSuit2   和    刷新group到指定suit
	{ config_id = 1037004, name = "GADGET_STATE_CHANGE_37004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37004", action = "action_EVENT_GADGET_STATE_CHANGE_37004", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1037005, name = "GADGET_STATE_CHANGE_37005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37005", action = "action_EVENT_GADGET_STATE_CHANGE_37005", trigger_count = 0 },
	-- 第一次鼓A交互播片
	{ config_id = 1037006, name = "GADGET_STATE_CHANGE_37006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37006", action = "action_EVENT_GADGET_STATE_CHANGE_37006", trigger_count = 0 },
	-- 第二次鼓A交互 播片
	{ config_id = 1037007, name = "GADGET_STATE_CHANGE_37007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37007", action = "action_EVENT_GADGET_STATE_CHANGE_37007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "DrumTime", value = 1, no_refresh = true },
	{ config_id = 2, name = "CsShown", value = 0, no_refresh = true }
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
		gadgets = { 37001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_37003", "GADGET_STATE_CHANGE_37004", "GADGET_STATE_CHANGE_37005", "GADGET_STATE_CHANGE_37006", "GADGET_STATE_CHANGE_37007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [桥A】,
		monsters = { },
		gadgets = { 37002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_37003(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133037, 37001) then
		return false
	end
	
	-- 判断变量"DrumTime"为1
	if ScriptLib.GetGroupVariableValue(context, "DrumTime") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37003(context, evt)
	-- 将本组内变量名为 "DrumTime" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "DrumTime", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220133037, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220133038, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组220133041中， configid为41005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220133041, 41005, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220133042中， configid为42001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220133042, 42001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_37004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133037, 37001) then
		return false
	end
	
	-- 判断变量"DrumTime"为0
	if ScriptLib.GetGroupVariableValue(context, "DrumTime") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220133037, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220133038, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组220133041中， configid为41005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220133041, 41005, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220133042中， configid为42001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220133042, 42001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_37005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133037, 37001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2801, 1, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_37006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133037, 37001) then
		return false
	end
	
	-- 判断变量"DrumTime"为1
	if ScriptLib.GetGroupVariableValue(context, "DrumTime") ~= 1 then
			return false
	end
	
	-- 判断变量"CsShown"为0
	if ScriptLib.GetGroupVariableValue(context, "CsShown") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37006(context, evt)
	-- 将本组内变量名为 "CsShown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CsShown", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "CsShown" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "CsShown", 0, 220133038) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为201330101 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 201330101, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_37007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133037, 37001) then
		return false
	end
	
	-- 判断变量"DrumTime"为0
	if ScriptLib.GetGroupVariableValue(context, "DrumTime") ~= 0 then
			return false
	end
	
	-- 判断变量"CsShown"为0
	if ScriptLib.GetGroupVariableValue(context, "CsShown") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37007(context, evt)
	-- 将本组内变量名为 "CsShown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CsShown", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "CsShown" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "CsShown", 0, 220133038) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为201330103 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 201330103, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end