-- 基础信息
local base_info = {
	group_id = 199004097
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
	{ config_id = 97001, gadget_id = 70360006, pos = { x = -348.706, y = 229.910, z = -645.815 }, rot = { x = 351.585, y = 198.531, z = 350.350 }, level = 20, area_id = 400 },
	{ config_id = 97002, gadget_id = 70211101, pos = { x = -353.618, y = 227.532, z = -637.053 }, rot = { x = 359.089, y = 44.101, z = 358.208 }, level = 16, drop_tag = "解谜低级群岛", showcutscene = true, isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 97007, gadget_id = 70360006, pos = { x = -360.368, y = 227.733, z = -636.610 }, rot = { x = 358.724, y = 1.901, z = 358.324 }, level = 20, area_id = 400 },
	{ config_id = 97008, gadget_id = 70360001, pos = { x = -347.730, y = 228.832, z = -620.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1097003, name = "GADGET_STATE_CHANGE_97003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97003", action = "action_EVENT_GADGET_STATE_CHANGE_97003" },
	{ config_id = 1097004, name = "GADGET_STATE_CHANGE_97004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97004", action = "action_EVENT_GADGET_STATE_CHANGE_97004", trigger_count = 0 },
	{ config_id = 1097005, name = "GADGET_STATE_CHANGE_97005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97005", action = "action_EVENT_GADGET_STATE_CHANGE_97005", trigger_count = 0 },
	{ config_id = 1097006, name = "GADGET_CREATE_97006", event = EventType.EVENT_GADGET_CREATE, source = "111", condition = "condition_EVENT_GADGET_CREATE_97006", action = "action_EVENT_GADGET_CREATE_97006", trigger_count = 0 },
	{ config_id = 1097009, name = "GADGET_CREATE_97009", event = EventType.EVENT_GADGET_CREATE, source = "111", condition = "condition_EVENT_GADGET_CREATE_97009", action = "action_EVENT_GADGET_CREATE_97009", trigger_count = 0 },
	{ config_id = 1097010, name = "GADGET_STATE_CHANGE_97010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97010", action = "action_EVENT_GADGET_STATE_CHANGE_97010", trigger_count = 0 },
	{ config_id = 1097011, name = "GADGET_CREATE_97011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_97011", action = "action_EVENT_GADGET_CREATE_97011", trigger_count = 0 },
	{ config_id = 1097012, name = "GADGET_CREATE_97012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_97012", action = "action_EVENT_GADGET_CREATE_97012", trigger_count = 0 },
	{ config_id = 1097013, name = "LEVEL_TAG_CHANGE_97013", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_97013", trigger_count = 0 },
	{ config_id = 1097014, name = "GROUP_LOAD_97014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_97014", trigger_count = 0 },
	{ config_id = 1097015, name = "LEVEL_TAG_CHANGE_97015", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_97015", trigger_count = 0 },
	{ config_id = 1097016, name = "LEVEL_TAG_CHANGE_97016", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_97016", trigger_count = 0 },
	{ config_id = 1097017, name = "LEVEL_TAG_CHANGE_97017", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_97017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 97008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_97003", "GADGET_STATE_CHANGE_97004", "GADGET_STATE_CHANGE_97005", "GADGET_CREATE_97006", "GADGET_CREATE_97009", "GADGET_STATE_CHANGE_97010", "LEVEL_TAG_CHANGE_97013", "GROUP_LOAD_97014", "LEVEL_TAG_CHANGE_97015", "LEVEL_TAG_CHANGE_97016", "LEVEL_TAG_CHANGE_97017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 97002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 97001 },
		regions = { },
		triggers = { "GADGET_CREATE_97011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 97007 },
		regions = { },
		triggers = { "GADGET_CREATE_97012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97003(context, evt)
	if 97002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97003(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 97001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 97001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 97007 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 97007, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199004097, 97007) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199004097, 97001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004097, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97005(context, evt)
	if 97001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97005(context, evt)
	-- 将configid为 97002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 97002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004097, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_97006(context, evt)
	if 97001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_97006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004097, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_97009(context, evt)
	if 97007 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_97009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004097, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97010(context, evt)
	if 97007 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97010(context, evt)
	-- 将configid为 97002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 97002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004097, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_97011(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_97011(context, evt)
	-- 将configid为 97001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 97001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_97012(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_97012(context, evt)
	-- 将configid为 97007 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 97007, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_97013(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "finish") == 1 then
		if ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.CheckSceneTag(context, 9,1025 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 2)
		end
	else
		if ScriptLib.CheckSceneTag(context, 9,1025 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 3)
		end
		
		if ScriptLib.CheckSceneTag(context, 9,1022 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 4)
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_97014(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "finish") == 1 then
		if ScriptLib.CheckSceneTag(context, 9,1025 ) and ScriptLib.CheckSceneTag(context, 9,1022 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 2)
		end
	else
		if ScriptLib.CheckSceneTag(context, 9,1025 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 3)
		end
		
		if ScriptLib.CheckSceneTag(context, 9,1022 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 4)
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_97015(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1025 ) then
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004097, 3)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_97016(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1022 ) then
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004097, 4)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_97017(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.CheckSceneTag(context, 9,1025 ) and ScriptLib.GetGroupVariableValue(context, "finish") == 1 then
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004097, 2)
	end
	
	return 0
end