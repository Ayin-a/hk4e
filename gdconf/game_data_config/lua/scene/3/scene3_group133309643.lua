-- 基础信息
local base_info = {
	group_id = 133309643
}

-- Trigger变量
local defs = {
	gadget_receiver_1 = 643002,
	gadget_receiver_2 = 643003,
	gadget_seelie = 643001,
	route_2 = 330900223,
	final_point = 6
}

-- DEFS_MISCS
--接收装置列表
defs.receiverList = {
	defs.gadget_receiver_1,
	defs.gadget_receiver_2,
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
	{ config_id = 643001, gadget_id = 70330257, pos = { x = -2362.938, y = 9.153, z = 5528.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900223, area_id = 27 },
	-- 接收装置#1
	{ config_id = 643002, gadget_id = 70330281, pos = { x = -2373.063, y = 7.814, z = 5528.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	-- 接收装置#2
	{ config_id = 643003, gadget_id = 70330281, pos = { x = -2353.477, y = 8.441, z = 5528.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 同时激活判定
	{ config_id = 1643004, name = "GADGET_STATE_CHANGE_643004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_643004", action = "action_EVENT_GADGET_STATE_CHANGE_643004" },
	-- 玩法完成表现
	{ config_id = 1643005, name = "VARIABLE_CHANGE_643005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_643005", action = "action_EVENT_VARIABLE_CHANGE_643005" },
	-- （可魔改）玩法完成时行为
	{ config_id = 1643006, name = "VARIABLE_CHANGE_643006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_643006", action = "action_EVENT_VARIABLE_CHANGE_643006" },
	-- 玩法完成保底
	{ config_id = 1643007, name = "GROUP_LOAD_643007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_643007", action = "action_EVENT_GROUP_LOAD_643007", trigger_count = 0 },
	-- 保底刷宝箱
	{ config_id = 1643008, name = "GROUP_LOAD_643008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_643008", action = "action_EVENT_GROUP_LOAD_643008", trigger_count = 0 },
	{ config_id = 1643009, name = "GROUP_LOAD_643009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_643009", action = "action_EVENT_GROUP_LOAD_643009", trigger_count = 0 },
	{ config_id = 1643010, name = "AVATAR_NEAR_PLATFORM_643010", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_643010", action = "action_EVENT_AVATAR_NEAR_PLATFORM_643010", trigger_count = 0 },
	{ config_id = 1643011, name = "PLATFORM_ARRIVAL_643011", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_643011", action = "action_EVENT_PLATFORM_ARRIVAL_643011" },
	-- 运营埋点
	{ config_id = 1643012, name = "VARIABLE_CHANGE_643012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_643012", action = "action_EVENT_VARIABLE_CHANGE_643012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true },
	{ config_id = 2, name = "reachpoint", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1643013, name = "VARIABLE_CHANGE_643013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_643013", action = "action_EVENT_VARIABLE_CHANGE_643013" }
	}
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
		gadgets = { 643002, 643003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_643004", "VARIABLE_CHANGE_643005", "VARIABLE_CHANGE_643006", "GROUP_LOAD_643007", "GROUP_LOAD_643008", "GROUP_LOAD_643009", "AVATAR_NEAR_PLATFORM_643010", "PLATFORM_ARRIVAL_643011", "VARIABLE_CHANGE_643012" },
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 643001 },
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
function condition_EVENT_GADGET_STATE_CHANGE_643004(context, evt)
	
	for _,v in pairs(defs.receiverList) do
	  if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309643, v) then
	    return false
	  end
	
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_643004(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_643005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_643005(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133309643中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309643, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_643006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_643006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309643, 3)
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isFinished", 1, 133309640) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_643007(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_643007(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133309643中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309643, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_643008(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	-- 判断变量"reachpoint"为0
	if ScriptLib.GetGroupVariableValue(context, "reachpoint") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_643008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309643, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_643009(context, evt)
	-- 判断变量"reachpoint"为1
	if ScriptLib.GetGroupVariableValue(context, "reachpoint") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_643009(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 133309645) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309643, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_643010(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_643010(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 643001) then
	return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_643011(context, evt)
	-- 判断是gadgetid 为 643001的移动平台，是否到达了330900223 的路线中的 6 点
	
	if 643001 ~= evt.param1 then
	  return false
	end
	
	if 330900223 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_643011(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 643001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "reachpoint" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reachpoint", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 133309645) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309643, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_643012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_643012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31007, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end