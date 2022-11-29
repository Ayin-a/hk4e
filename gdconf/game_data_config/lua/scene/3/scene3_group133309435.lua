-- 基础信息
local base_info = {
	group_id = 133309435
}

-- Trigger变量
local defs = {
	gadget_1 = 435001,
	gadget_2 = 435002,
	gadget_3 = 435003
}

-- DEFS_MISCS
local HourGlass_ConfigIDList = {defs.gadget_1,defs.gadget_2,defs.gadget_3}
local forceStopGroup = {133309372}

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
	{ config_id = 435001, gadget_id = 70330227, pos = { x = -2313.595, y = 191.692, z = 5778.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 435002, gadget_id = 70330227, pos = { x = -2310.661, y = 191.851, z = 5749.080 }, rot = { x = 3.577, y = 359.993, z = 2.678 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 435003, gadget_id = 70330310, pos = { x = -2321.325, y = 191.692, z = 5749.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 435004, gadget_id = 70211111, pos = { x = -2323.859, y = 184.509, z = 5772.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 435006, gadget_id = 70220103, pos = { x = -2331.381, y = 188.992, z = 5786.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 435007, gadget_id = 70330225, pos = { x = -2321.260, y = 193.642, z = 5740.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 435010, gadget_id = 70220103, pos = { x = -2300.835, y = 194.631, z = 5786.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创生宝箱
	{ config_id = 1435005, name = "VARIABLE_CHANGE_435005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_435005", action = "action_EVENT_VARIABLE_CHANGE_435005" },
	-- 本沙漏挑战完成
	{ config_id = 1435008, name = "VARIABLE_CHANGE_435008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_435008", action = "action_EVENT_VARIABLE_CHANGE_435008" },
	-- 相邻火种玩法完成
	{ config_id = 1435009, name = "VARIABLE_CHANGE_435009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_435009", action = "action_EVENT_VARIABLE_CHANGE_435009" },
	{ config_id = 1435011, name = "GROUP_LOAD_435011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_435011", action = "action_EVENT_GROUP_LOAD_435011", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1435012, name = "GADGET_STATE_CHANGE_435012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_435012", action = "action_EVENT_GADGET_STATE_CHANGE_435012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "spark", value = 0, no_refresh = false },
	{ config_id = 2, name = "finished", value = 0, no_refresh = true }
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
		gadgets = { 435001, 435002, 435003 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_435005", "VARIABLE_CHANGE_435008", "VARIABLE_CHANGE_435009", "GROUP_LOAD_435011", "GADGET_STATE_CHANGE_435012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法完成后奖励,
		monsters = { },
		gadgets = { 435006, 435010 },
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
function condition_EVENT_VARIABLE_CHANGE_435005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_435005(context, evt)
	-- 创建id为435004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 435004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finished", 1, 133309350) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finished", 1, 133309760) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309435, 2)
	
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_435008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133309435, 435007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_435008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 435007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_435009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"spark"为1
	if ScriptLib.GetGroupVariableValue(context, "spark") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_435009(context, evt)
	-- 创建id为435007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 435007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_435011(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_435011(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133309435, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_435012(context, evt)
	-- 检测config_id为435003的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 435003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_435012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330310) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"
require "V3_1/Engineer_Mark"