-- 基础信息
local base_info = {
	group_id = 133314318
}

-- Trigger变量
local defs = {
	gadget_receiver_1 = 318002
}

-- DEFS_MISCS
--接收装置列表
defs.receiverList = {
	defs.gadget_receiver_1,
}
--玩法完成时锁定的射线装置
defs.finishedGroupList = {

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
	{ config_id = 318001, gadget_id = 70211111, pos = { x = -620.840, y = 175.532, z = 4784.379 }, rot = { x = 0.000, y = 59.332, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 接收装置#1
	{ config_id = 318002, gadget_id = 70290866, pos = { x = -620.978, y = 175.532, z = 4790.069 }, rot = { x = 0.000, y = 151.945, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 同时激活判定
	{ config_id = 1318005, name = "GADGET_STATE_CHANGE_318005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_318005", action = "action_EVENT_GADGET_STATE_CHANGE_318005" },
	-- 玩法完成表现
	{ config_id = 1318008, name = "VARIABLE_CHANGE_318008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_318008", action = "action_EVENT_VARIABLE_CHANGE_318008" },
	-- （可魔改）玩法完成时行为
	{ config_id = 1318009, name = "VARIABLE_CHANGE_318009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_318009", action = "action_EVENT_VARIABLE_CHANGE_318009" },
	-- 玩法完成保底
	{ config_id = 1318010, name = "GROUP_LOAD_318010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_318010", action = "action_EVENT_GROUP_LOAD_318010", trigger_count = 0 },
	-- 保底刷宝箱
	{ config_id = 1318012, name = "GROUP_LOAD_318012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_318012", action = "action_EVENT_GROUP_LOAD_318012", trigger_count = 0 },
	-- 锁定射线装置group
	{ config_id = 1318014, name = "VARIABLE_CHANGE_318014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_318014", action = "action_EVENT_VARIABLE_CHANGE_318014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 318003, gadget_id = 70330281, pos = { x = -621.505, y = 175.461, z = 4791.669 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
		{ config_id = 318004, gadget_id = 70290281, pos = { x = -621.825, y = 175.461, z = 4793.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
	},
	triggers = {
		{ config_id = 1318006, name = "GADGET_STATE_CHANGE_318006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_318006", action = "action_EVENT_GADGET_STATE_CHANGE_318006", trigger_count = 0 },
		{ config_id = 1318007, name = "GADGET_STATE_CHANGE_318007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_318007", action = "action_EVENT_GADGET_STATE_CHANGE_318007", trigger_count = 0 },
		{ config_id = 1318011, name = "GROUP_LOAD_318011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_318011", action = "action_EVENT_GROUP_LOAD_318011", trigger_count = 0 },
		{ config_id = 1318013, name = "VARIABLE_CHANGE_318013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_318013", action = "action_EVENT_VARIABLE_CHANGE_318013" }
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
		gadgets = { 318002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_318005", "VARIABLE_CHANGE_318008", "VARIABLE_CHANGE_318009", "GROUP_LOAD_318010", "GROUP_LOAD_318012", "VARIABLE_CHANGE_318014" },
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
		gadgets = { 318001 },
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
function condition_EVENT_GADGET_STATE_CHANGE_318005(context, evt)
	
	for _,v in pairs(defs.receiverList) do
	  if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314318, v) then
	    return false
	  end
	
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_318005(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_318008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_318008(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133314318中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133314318, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_318009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_318009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314318, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_318010(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_318010(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133314318中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133314318, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_318012(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_318012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314318, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_318014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_318014(context, evt)
	for _,v in pairs(defs.finishedGroupList)do
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isFinished", 1, v) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	end
	return 0
end