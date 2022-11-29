-- 基础信息
local base_info = {
	group_id = 133310601
}

-- Trigger变量
local defs = {
	gadget_1 = 601001,
	gadget_2 = 601002,
	gadget_3 = 601003
}

-- DEFS_MISCS
local HourGlass_ConfigIDList = {defs.gadget_1,defs.gadget_2,defs.gadget_3}

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
	{ config_id = 601001, gadget_id = 70330310, pos = { x = -2995.910, y = 274.578, z = 4899.313 }, rot = { x = 0.000, y = 346.982, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 28 },
	{ config_id = 601002, gadget_id = 70330310, pos = { x = -3006.667, y = 274.607, z = 4881.004 }, rot = { x = 0.000, y = 346.982, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 28 },
	{ config_id = 601003, gadget_id = 70330310, pos = { x = -3026.194, y = 274.544, z = 4892.972 }, rot = { x = 0.000, y = 345.162, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 28 },
	{ config_id = 601004, gadget_id = 70211101, pos = { x = -3002.690, y = 260.657, z = 4909.282 }, rot = { x = 0.000, y = 212.070, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 601005, gadget_id = 70330225, pos = { x = -2992.676, y = 275.926, z = 4882.101 }, rot = { x = 0.000, y = 31.291, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 601006, gadget_id = 70330225, pos = { x = -3031.323, y = 275.926, z = 4906.819 }, rot = { x = 0.000, y = 302.390, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 601007, gadget_id = 70330225, pos = { x = -2993.944, y = 261.034, z = 4882.974 }, rot = { x = 0.000, y = 300.919, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 601008, gadget_id = 70220103, pos = { x = -3000.405, y = 277.308, z = 4887.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 28 },
	{ config_id = 601013, gadget_id = 70220103, pos = { x = -2998.546, y = 288.785, z = 4910.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 }
}

-- 区域
regions = {
	-- 建筑 教学
	{ config_id = 601014, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2996.059, y = 274.402, z = 4894.541 }, area_id = 28 },
	-- 建筑 教学
	{ config_id = 601015, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2996.059, y = 274.402, z = 4894.541 }, area_id = 28 },
	-- 建筑 教学
	{ config_id = 601016, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2996.059, y = 274.402, z = 4894.541 }, area_id = 28 }
}

-- 触发器
triggers = {
	-- 挑战成功
	{ config_id = 1601009, name = "VARIABLE_CHANGE_601009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_601009", action = "action_EVENT_VARIABLE_CHANGE_601009" },
	-- 挑战失败
	{ config_id = 1601010, name = "VARIABLE_CHANGE_601010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_601010", action = "action_EVENT_VARIABLE_CHANGE_601010", trigger_count = 0 },
	-- 挑战开始
	{ config_id = 1601011, name = "VARIABLE_CHANGE_601011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_601011", action = "action_EVENT_VARIABLE_CHANGE_601011", trigger_count = 0 },
	-- 加载成功
	{ config_id = 1601012, name = "GROUP_LOAD_601012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_601012", action = "action_EVENT_GROUP_LOAD_601012", trigger_count = 0 },
	-- 建筑 教学
	{ config_id = 1601014, name = "ENTER_REGION_601014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_601014", action = "action_EVENT_ENTER_REGION_601014" },
	-- 建筑 教学
	{ config_id = 1601015, name = "ENTER_REGION_601015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_601015", action = "action_EVENT_ENTER_REGION_601015" },
	-- 建筑 教学
	{ config_id = 1601016, name = "ENTER_REGION_601016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_601016", action = "action_EVENT_ENTER_REGION_601016" },
	-- 运营埋点
	{ config_id = 1601017, name = "GADGET_STATE_CHANGE_601017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_601017", action = "action_EVENT_GADGET_STATE_CHANGE_601017" },
	-- 运营埋点
	{ config_id = 1601018, name = "GADGET_STATE_CHANGE_601018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_601018", action = "action_EVENT_GADGET_STATE_CHANGE_601018" },
	-- 运营埋点
	{ config_id = 1601019, name = "GADGET_STATE_CHANGE_601019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_601019", action = "action_EVENT_GADGET_STATE_CHANGE_601019" }
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
		gadgets = { 601001, 601002, 601003, 601005, 601006, 601007 },
		regions = { 601014, 601015, 601016 },
		triggers = { "VARIABLE_CHANGE_601009", "VARIABLE_CHANGE_601010", "VARIABLE_CHANGE_601011", "GROUP_LOAD_601012", "ENTER_REGION_601014", "ENTER_REGION_601015", "ENTER_REGION_601016", "GADGET_STATE_CHANGE_601017", "GADGET_STATE_CHANGE_601018", "GADGET_STATE_CHANGE_601019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 601008, 601013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 601001, 601002, 601003, 601008, 601013 },
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
function condition_EVENT_VARIABLE_CHANGE_601009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_601009(context, evt)
	-- 创建id为601004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 601004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_601010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为0
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 0 then
			return false
	end
	
	-- 判断变量"HourGlass_InChallenge"为0
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InChallenge") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_601010(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310601, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_601011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InChallenge"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InChallenge") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_601011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310601, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_601012(context, evt)
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_601012(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310601, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_601014(context, evt)
	if evt.param1 ~= 601014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133310601, 601001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_601014(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_601015(context, evt)
	if evt.param1 ~= 601015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133310601, 601002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_601015(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_601016(context, evt)
	if evt.param1 ~= 601016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133310601, 601003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_601016(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_601017(context, evt)
	-- 检测config_id为601001的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 601001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_601017(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330310) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_601018(context, evt)
	-- 检测config_id为601002的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 601002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_601018(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330310) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_601019(context, evt)
	-- 检测config_id为601003的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 601003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_601019(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330310) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"
require "V3_1/Engineer_Mark"