-- 基础信息
local base_info = {
	group_id = 133310384
}

-- Trigger变量
local defs = {
	gadget_1 = 384001,
	gadget_2 = 384002,
	gadget_3 = 384003
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
	{ config_id = 384001, gadget_id = 70330310, pos = { x = -2360.993, y = 131.507, z = 5054.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 384002, gadget_id = 70330310, pos = { x = -2340.990, y = 131.538, z = 5044.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 384003, gadget_id = 70330310, pos = { x = -2351.041, y = 115.962, z = 5049.051 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 384004, gadget_id = 70211121, pos = { x = -2351.040, y = 115.977, z = 5054.943 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 384005, gadget_id = 70220103, pos = { x = -2341.021, y = 133.497, z = 5059.357 }, rot = { x = 0.000, y = 183.095, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 384006, gadget_id = 70220103, pos = { x = -2342.011, y = 127.956, z = 5068.020 }, rot = { x = 0.000, y = 183.095, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 384007, gadget_id = 70220103, pos = { x = -139.097, y = 152.986, z = -563.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 384008, gadget_id = 70220103, pos = { x = -2361.237, y = 133.931, z = 5068.067 }, rot = { x = 0.000, y = 183.095, z = 0.000 }, level = 19, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 建筑 教学
	{ config_id = 384014, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2360.993, y = 131.507, z = 5054.024 }, area_id = 27 },
	-- 建筑 教学
	{ config_id = 384015, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2340.990, y = 131.538, z = 5044.010 }, area_id = 27 },
	-- 建筑 教学
	{ config_id = 384016, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2351.041, y = 115.962, z = 5049.051 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 挑战成功
	{ config_id = 1384009, name = "VARIABLE_CHANGE_384009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_384009", action = "action_EVENT_VARIABLE_CHANGE_384009" },
	-- 挑战失败
	{ config_id = 1384010, name = "VARIABLE_CHANGE_384010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_384010", action = "action_EVENT_VARIABLE_CHANGE_384010", trigger_count = 0 },
	-- 挑战开始
	{ config_id = 1384011, name = "VARIABLE_CHANGE_384011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_384011", action = "action_EVENT_VARIABLE_CHANGE_384011", trigger_count = 0 },
	-- 加载成功
	{ config_id = 1384012, name = "GROUP_LOAD_384012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_384012", action = "action_EVENT_GROUP_LOAD_384012", trigger_count = 0 },
	{ config_id = 1384013, name = "GADGET_STATE_CHANGE_384013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_384013", action = "action_EVENT_GADGET_STATE_CHANGE_384013", trigger_count = 0 },
	-- 建筑 教学
	{ config_id = 1384014, name = "ENTER_REGION_384014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_384014", action = "action_EVENT_ENTER_REGION_384014" },
	-- 建筑 教学
	{ config_id = 1384015, name = "ENTER_REGION_384015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_384015", action = "action_EVENT_ENTER_REGION_384015" },
	-- 建筑 教学
	{ config_id = 1384016, name = "ENTER_REGION_384016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_384016", action = "action_EVENT_ENTER_REGION_384016" },
	-- 运营埋点
	{ config_id = 1384017, name = "GADGET_STATE_CHANGE_384017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_384017", action = "action_EVENT_GADGET_STATE_CHANGE_384017" },
	-- 运营埋点
	{ config_id = 1384018, name = "GADGET_STATE_CHANGE_384018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_384018", action = "action_EVENT_GADGET_STATE_CHANGE_384018" },
	-- 运营埋点
	{ config_id = 1384019, name = "GADGET_STATE_CHANGE_384019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_384019", action = "action_EVENT_GADGET_STATE_CHANGE_384019" }
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
		gadgets = { 384001, 384002, 384003 },
		regions = { 384014, 384015, 384016 },
		triggers = { "VARIABLE_CHANGE_384009", "VARIABLE_CHANGE_384010", "VARIABLE_CHANGE_384011", "GROUP_LOAD_384012", "GADGET_STATE_CHANGE_384013", "ENTER_REGION_384014", "ENTER_REGION_384015", "ENTER_REGION_384016", "GADGET_STATE_CHANGE_384017", "GADGET_STATE_CHANGE_384018", "GADGET_STATE_CHANGE_384019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 384005, 384006, 384007, 384008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 384001, 384002, 384003, 384004, 384005, 384006, 384007, 384008 },
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
function condition_EVENT_VARIABLE_CHANGE_384009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_384009(context, evt)
	-- 创建id为384004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 384004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310384, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_384010(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_384010(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310384, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_384011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InChallenge"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InChallenge") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_384011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310384, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_384012(context, evt)
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_384012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310384, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_384013(context, evt)
	if 384003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_384013(context, evt)
	-- 将本组内变量名为 "created" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "created", 1, 133310101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_384014(context, evt)
	if evt.param1 ~= 384014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133310384, 384001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_384014(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_384015(context, evt)
	if evt.param1 ~= 384015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133310384, 384002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_384015(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_384016(context, evt)
	if evt.param1 ~= 384016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133310384, 384003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_384016(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_384017(context, evt)
	-- 检测config_id为384001的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 384001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_384017(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330310) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_384018(context, evt)
	-- 检测config_id为384002的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 384002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_384018(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330310) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_384019(context, evt)
	-- 检测config_id为384003的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 384003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_384019(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330310) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"