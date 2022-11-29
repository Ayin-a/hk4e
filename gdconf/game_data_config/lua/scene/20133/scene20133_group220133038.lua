-- 基础信息
local base_info = {
	group_id = 220133038
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
	{ config_id = 38001, gadget_id = 70310242, pos = { x = -47.999, y = 179.266, z = 610.289 }, rot = { x = 356.407, y = 325.288, z = 346.213 }, level = 1, interact_id = 64 },
	{ config_id = 38002, gadget_id = 70310382, pos = { x = -20.250, y = 190.810, z = 612.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- if鼓B交互 AddSuit2   和    refresh桥Asuit1
	{ config_id = 1038003, name = "GADGET_STATE_CHANGE_38003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38003", action = "action_EVENT_GADGET_STATE_CHANGE_38003", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1038004, name = "GADGET_STATE_CHANGE_38004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38004", action = "action_EVENT_GADGET_STATE_CHANGE_38004", trigger_count = 0 },
	-- if鼓B交互 播片
	{ config_id = 1038005, name = "GADGET_STATE_CHANGE_38005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38005", action = "action_EVENT_GADGET_STATE_CHANGE_38005", trigger_count = 0 },
	{ config_id = 1038006, name = "GROUP_LOAD_38006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_38006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "CsShown", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		gadgets = { 38001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_38003", "GADGET_STATE_CHANGE_38004", "GADGET_STATE_CHANGE_38005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 38002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_38006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_38003(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133038, 38001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220133038, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220133037, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组220133041中， configid为41005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220133041, 41005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220133042中， configid为42001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220133042, 42001, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_38004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133038, 38001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2801, 1, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_38005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133038, 38001) then
		return false
	end
	
	-- 判断变量"CsShown"为0
	if ScriptLib.GetGroupVariableValue(context, "CsShown") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38005(context, evt)
	-- 将本组内变量名为 "CsShown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CsShown", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "CsShown" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "CsShown", 0, 220133037) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为201330102 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 201330102, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_38006(context, evt)
		    if ScriptLib.GetHostQuestState(context,4007010)==3 then
			ScriptLib.RefreshGroup(context, { group_id = 220133038, suite = 1 }) 
			end
		
		return 0
end