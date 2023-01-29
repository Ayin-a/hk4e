-- 基础信息
local base_info = {
	group_id = 133314315
}

-- Trigger变量
local defs = {
	gadget_receiver_1 = 315002,
	gadget_receiver_2 = 315003
}

-- DEFS_MISCS
--接收装置列表
defs.receiverList = {
	defs.gadget_receiver_1,
	defs.gadget_receiver_2,
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
	{ config_id = 315001, gadget_id = 70211111, pos = { x = -624.128, y = 187.532, z = 4790.172 }, rot = { x = 0.000, y = 55.527, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 接收装置#1
	{ config_id = 315002, gadget_id = 70330281, pos = { x = -615.824, y = 187.532, z = 4781.696 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	-- 接收装置#2
	{ config_id = 315003, gadget_id = 70330281, pos = { x = -625.761, y = 187.532, z = 4798.907 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 同时激活判定
	{ config_id = 1315005, name = "GADGET_STATE_CHANGE_315005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_315005", action = "action_EVENT_GADGET_STATE_CHANGE_315005" },
	-- 玩法完成表现
	{ config_id = 1315008, name = "VARIABLE_CHANGE_315008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_315008", action = "action_EVENT_VARIABLE_CHANGE_315008" },
	-- （可魔改）玩法完成时行为
	{ config_id = 1315009, name = "VARIABLE_CHANGE_315009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_315009", action = "action_EVENT_VARIABLE_CHANGE_315009" },
	-- 玩法完成保底
	{ config_id = 1315010, name = "GROUP_LOAD_315010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_315010", action = "action_EVENT_GROUP_LOAD_315010", trigger_count = 0 },
	-- 保底刷宝箱
	{ config_id = 1315012, name = "GROUP_LOAD_315012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_315012", action = "action_EVENT_GROUP_LOAD_315012", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1315013, name = "VARIABLE_CHANGE_315013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_315013", action = "action_EVENT_VARIABLE_CHANGE_315013" },
	-- 锁定射线装置group
	{ config_id = 1315014, name = "VARIABLE_CHANGE_315014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_315014", action = "action_EVENT_VARIABLE_CHANGE_315014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 315004, gadget_id = 70290281, pos = { x = -618.873, y = 187.461, z = 4796.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
	},
	triggers = {
		{ config_id = 1315006, name = "GADGET_STATE_CHANGE_315006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_315006", action = "action_EVENT_GADGET_STATE_CHANGE_315006", trigger_count = 0 },
		{ config_id = 1315007, name = "GADGET_STATE_CHANGE_315007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_315007", action = "action_EVENT_GADGET_STATE_CHANGE_315007", trigger_count = 0 },
		{ config_id = 1315011, name = "GROUP_LOAD_315011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_315011", action = "action_EVENT_GROUP_LOAD_315011", trigger_count = 0 }
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
		gadgets = { 315002, 315003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_315005", "VARIABLE_CHANGE_315008", "VARIABLE_CHANGE_315009", "GROUP_LOAD_315010", "GROUP_LOAD_315012", "VARIABLE_CHANGE_315013", "VARIABLE_CHANGE_315014" },
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
		gadgets = { 315001 },
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
function condition_EVENT_GADGET_STATE_CHANGE_315005(context, evt)
	
	for _,v in pairs(defs.receiverList) do
	  if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314315, v) then
	    return false
	  end
	
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_315005(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_315008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_315008(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133314315中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133314315, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_315009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_315009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314315, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_315010(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_315010(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133314315中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133314315, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_315012(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_315012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314315, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_315013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_315013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31007, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_315014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_315014(context, evt)
	for _,v in pairs(defs.finishedGroupList)do
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isFinished", 1, v) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	end
	return 0
end