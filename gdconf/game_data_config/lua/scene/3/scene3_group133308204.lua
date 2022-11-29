-- 基础信息
local base_info = {
	group_id = 133308204
}

-- Trigger变量
local defs = {
	gadget_receiver_1 = 0,
	gadget_receiver_2 = 204003
}

-- DEFS_MISCS
--接收装置列表
defs.receiverList = {
	defs.gadget_receiver_2,
}

local engineerLaserConfigID = 204002
local turnOption = 435
local correctState = 0

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
	{ config_id = 204001, gadget_id = 70211102, pos = { x = -1438.781, y = 13.424, z = 4726.250 }, rot = { x = 0.000, y = 191.199, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 204002, gadget_id = 70330311, pos = { x = -1437.478, y = 13.424, z = 4709.473 }, rot = { x = 0.000, y = 9.492, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 26 },
	-- 接收装置#2
	{ config_id = 204003, gadget_id = 70330281, pos = { x = -1435.451, y = 13.424, z = 4721.597 }, rot = { x = 0.000, y = 9.492, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 204004, gadget_id = 70330416, pos = { x = -1445.476, y = 13.494, z = 4718.720 }, rot = { x = 0.000, y = 10.358, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 204005, gadget_id = 70330225, pos = { x = -1418.572, y = 15.362, z = 4698.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 接收装置#2激活-开启大门
	{ config_id = 1204006, name = "GADGET_STATE_CHANGE_204006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_204006", action = "action_EVENT_GADGET_STATE_CHANGE_204006", trigger_count = 0 },
	-- 接收装置#2取消激活-关闭大门
	{ config_id = 1204007, name = "GADGET_STATE_CHANGE_204007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_204007", action = "action_EVENT_GADGET_STATE_CHANGE_204007", trigger_count = 0 },
	-- 玩法完成表现
	{ config_id = 1204008, name = "VARIABLE_CHANGE_204008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_204008", action = "action_EVENT_VARIABLE_CHANGE_204008" },
	-- （可魔改）玩法完成时行为
	{ config_id = 1204009, name = "VARIABLE_CHANGE_204009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_204009", action = "action_EVENT_VARIABLE_CHANGE_204009" },
	-- 玩法完成保底
	{ config_id = 1204010, name = "GROUP_LOAD_204010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_204010", action = "action_EVENT_GROUP_LOAD_204010", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1204011, name = "GADGET_STATE_CHANGE_204011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_204011", action = "action_EVENT_GADGET_STATE_CHANGE_204011" },
	-- 保底刷宝箱
	{ config_id = 1204012, name = "GROUP_LOAD_204012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_204012", action = "action_EVENT_GROUP_LOAD_204012", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1204013, name = "VARIABLE_CHANGE_204013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_204013", action = "action_EVENT_VARIABLE_CHANGE_204013" }
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
		gadgets = { 204001, 204002, 204003, 204004, 204005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_204006", "VARIABLE_CHANGE_204008", "VARIABLE_CHANGE_204009", "GROUP_LOAD_204010", "GADGET_STATE_CHANGE_204011", "GROUP_LOAD_204012", "VARIABLE_CHANGE_204013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_204006(context, evt)
	if 204003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_204006(context, evt)
	-- 将configid为 204004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 204004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_204007(context, evt)
	if 204003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isActive"为0
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_204007(context, evt)
	-- 将configid为 204004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 204004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_204008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_204008(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133308204中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133308204, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_204009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_204009(context, evt)
	-- 将configid为 204001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 204001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_204010(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_204010(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133308204中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133308204, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_204011(context, evt)
	-- 检测config_id为204002的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 204002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_204011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330311) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_204012(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_204012(context, evt)
	-- 将configid为 204004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 204004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	-- 将configid为 204001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 204001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_204013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_204013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31007, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Engineer_Laser"