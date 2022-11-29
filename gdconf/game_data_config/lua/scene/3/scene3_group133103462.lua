-- 基础信息
local base_info = {
	group_id = 133103462
}

-- Trigger变量
local defs = {
	seal_id = 462005,
	light_1 = 462006,
	light_2 = 462007,
	light_3 = 462008,
	seal_model = 462004,
	group_id = 133103462
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
	{ config_id = 462009, gadget_id = 70350083, pos = { x = 156.629, y = 212.585, z = 1439.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 462014, shape = RegionShape.SPHERE, radius = 1.9, pos = { x = 157.054, y = 229.970, z = 1442.578 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1462010, name = "GADGET_CREATE_462010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_462010", action = "action_EVENT_GADGET_CREATE_462010", trigger_count = 0 },
	{ config_id = 1462011, name = "SELECT_OPTION_462011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_462011", action = "action_EVENT_SELECT_OPTION_462011", trigger_count = 0 },
	{ config_id = 1462012, name = "VARIABLE_CHANGE_462012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_462012", action = "action_EVENT_VARIABLE_CHANGE_462012", trigger_count = 0 },
	{ config_id = 1462013, name = "GADGET_CREATE_462013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_462013", action = "action_EVENT_GADGET_CREATE_462013", trigger_count = 0 },
	{ config_id = 1462014, name = "ENTER_REGION_462014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_462014", action = "", trigger_count = 0, tag = "204" },
	{ config_id = 1462017, name = "CHALLENGE_FAIL_462017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_462017", trigger_count = 0 },
	{ config_id = 1462018, name = "CHALLENGE_SUCCESS_462018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_462018" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Point_Value", value = 0, no_refresh = true },
	{ config_id = 2, name = "Temp_Point_Value", value = 0, no_refresh = true },
	{ config_id = 3, name = "isFinished", value = 0, no_refresh = true },
	{ config_id = 4, name = "TriggerCount", value = 0, no_refresh = true },
	{ config_id = 5, name = "CreateTag", value = 0, no_refresh = true }
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
		gadgets = { 462009 },
		regions = { 462014 },
		triggers = { "GADGET_CREATE_462010", "SELECT_OPTION_462011", "VARIABLE_CHANGE_462012", "GADGET_CREATE_462013", "ENTER_REGION_462014", "CHALLENGE_FAIL_462017", "CHALLENGE_SUCCESS_462018" },
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
function condition_EVENT_GADGET_CREATE_462010(context, evt)
	if 462009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_462010(context, evt)
	-- 将本组内变量名为 "TriggerCount" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "TriggerCount", 0) then
	    return -1
	  end
	  
	  -- 将configid为 462009 的物件更改为状态 GadgetState.Default
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 462009, GadgetState.Default) then
	          return -1
	      end 
	  
	  -- 设置操作台选项
	  if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103462, 462009, {7}) then
	      return -1
	  end
	  
	  if ScriptLib.GetGroupVariableValue(context, "CreateTag") ~= 0 then
	  -- 改变指定group组133103540中， configid为540003的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133103540, 540003, GadgetState.GearStop) then
	          return -1
	      end 
	    end
	  
	    ScriptLib.SetGroupVariableValue(context, "CreateTag", 1)
	
	  return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_462011(context, evt)
	-- 判断是gadgetid 462009 option_id 7
	if 462009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_462011(context, evt)
	-- 针对当前group内变量名为 "TriggerCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "TriggerCount", 1) then
	  return -1
	end
	
	-- 删除指定group： 133103462 ；指定config：462009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103462, 462009, 7) then
		return -1
	end
	
	-- 将configid为 462009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 462009, GadgetState.GearStart) then
			return -1
		end 
	
	
	
	-- 204号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 204, 60, 4, 204, 1) then
	return -1
	end
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 5007, 1, 1) then
	return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_462012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"TriggerCount"为1
	if ScriptLib.GetGroupVariableValue(context, "TriggerCount") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_462012(context, evt)
	-- 改变指定group组133103540中， configid为540003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133103540, 540003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_462013(context, evt)
	if 462009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_462013(context, evt)
	-- 将configid为 462009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 462009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_462014(context, evt)
	if evt.param1 ~= 462014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_462017(context, evt)
	-- 将configid为 462009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 462009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103462, 462009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5007, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 改变指定group组133103540中， configid为540003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133103540, 540003, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "TriggerCount" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "TriggerCount", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_462018(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5007, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Puzzle_Flag_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Puzzle_Flag_2", 1, 133103540) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 462009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 462009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end