-- 基础信息
local base_info = {
	group_id = 133309793
}

-- Trigger变量
local defs = {
	gadget_receiver_1 = 793002,
	gadget_receiver_2 = 793003,
	gadget_receiver_3 = 793004
}

-- DEFS_MISCS
--接收装置列表
defs.receiverList = {
	defs.gadget_receiver_1,
	defs.gadget_receiver_2,
	defs.gadget_receiver_3,
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
	-- 接收装置#1
	{ config_id = 793002, gadget_id = 70330281, pos = { x = -2345.753, y = 487.650, z = 5530.182 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	-- 接收装置#2
	{ config_id = 793003, gadget_id = 70330281, pos = { x = -2349.375, y = 487.650, z = 5526.295 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	-- 接收装置#2
	{ config_id = 793004, gadget_id = 70330281, pos = { x = -2353.001, y = 487.650, z = 5529.906 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 同时激活判定
	{ config_id = 1793005, name = "GADGET_STATE_CHANGE_793005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_793005", action = "action_EVENT_GADGET_STATE_CHANGE_793005" },
	-- 玩法完成表现
	{ config_id = 1793008, name = "VARIABLE_CHANGE_793008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_793008", action = "action_EVENT_VARIABLE_CHANGE_793008" },
	-- （可魔改）玩法完成时行为
	{ config_id = 1793009, name = "VARIABLE_CHANGE_793009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_793009", action = "action_EVENT_VARIABLE_CHANGE_793009" },
	-- 玩法完成保底
	{ config_id = 1793010, name = "GROUP_LOAD_793010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_793010", action = "action_EVENT_GROUP_LOAD_793010", trigger_count = 0 },
	-- 保底刷宝箱
	{ config_id = 1793012, name = "GROUP_LOAD_793012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_793012", action = "action_EVENT_GROUP_LOAD_793012", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1793013, name = "VARIABLE_CHANGE_793013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_793013", action = "action_EVENT_VARIABLE_CHANGE_793013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
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
		gadgets = { 793002, 793003, 793004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_793005", "VARIABLE_CHANGE_793008", "VARIABLE_CHANGE_793009", "GROUP_LOAD_793010", "GROUP_LOAD_793012", "VARIABLE_CHANGE_793013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_793005(context, evt)
	
	for _,v in pairs(defs.receiverList) do
	  if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309793, v) then
	    return false
	  end
	
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_793005(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_793008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_793008(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133309793中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309793, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_793009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_793009(context, evt)
	-- 将本组内变量名为 "unlock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock", 1, 133309794) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_793010(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_793010(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133309793中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309793, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_793012(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_793012(context, evt)
	-- 将本组内变量名为 "unlock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock", 1, 133309794) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_793013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_793013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31007, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end