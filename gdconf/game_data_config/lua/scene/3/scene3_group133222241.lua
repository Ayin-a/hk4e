-- 基础信息
local base_info = {
	group_id = 133222241
}

-- DEFS_MISCS
local connection = {
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
	{ config_id = 241001, gadget_id = 70360183, pos = { x = -4436.752, y = 205.804, z = -3744.638 }, rot = { x = 4.232, y = 85.250, z = 354.787 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
	{ config_id = 241002, gadget_id = 70360182, pos = { x = -4427.282, y = 205.105, z = -3744.089 }, rot = { x = 4.575, y = 174.845, z = 4.468 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
	{ config_id = 241003, gadget_id = 70360181, pos = { x = -4436.337, y = 205.381, z = -3749.031 }, rot = { x = 354.737, y = 354.898, z = 355.787 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
	{ config_id = 241004, gadget_id = 70360181, pos = { x = -4426.838, y = 204.656, z = -3748.370 }, rot = { x = 355.799, y = 264.055, z = 5.276 }, level = 30, state = GadgetState.GearAction1, persistent = true, area_id = 14 },
	{ config_id = 241005, gadget_id = 70211112, pos = { x = -4433.881, y = 205.606, z = -3744.040 }, rot = { x = 4.137, y = 188.355, z = 5.289 }, level = 26, drop_tag = "解谜中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 241010, gadget_id = 70360040, pos = { x = -4432.251, y = 206.337, z = -3743.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 成就
	{ config_id = 1241006, name = "GADGET_STATE_CHANGE_241006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_241006", action = "action_EVENT_GADGET_STATE_CHANGE_241006", trigger_count = 0 },
	-- 完成和播放CS
	{ config_id = 1241007, name = "GADGET_STATE_CHANGE_241007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_241007", action = "action_EVENT_GADGET_STATE_CHANGE_241007", trigger_count = 0 },
	-- 如果没有完成则重置
	{ config_id = 1241008, name = "GROUP_LOAD_241008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_241008", action = "action_EVENT_GROUP_LOAD_241008", trigger_count = 0 },
	-- 延时干掉
	{ config_id = 1241009, name = "TIME_AXIS_PASS_241009", event = EventType.EVENT_TIME_AXIS_PASS, source = "CutScene", condition = "condition_EVENT_TIME_AXIS_PASS_241009", action = "action_EVENT_TIME_AXIS_PASS_241009", trigger_count = 0 },
	-- 完成了 要是没有删除则再删除一遍门
	{ config_id = 1241011, name = "GROUP_LOAD_241011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_241011", action = "action_EVENT_GROUP_LOAD_241011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
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
		gadgets = { 241001, 241002, 241003, 241004, 241005, 241010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_241006", "GADGET_STATE_CHANGE_241007", "GROUP_LOAD_241008", "TIME_AXIS_PASS_241009", "GROUP_LOAD_241011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_241006(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222241, 241001) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222241, 241002) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222241, 241003) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222241, 241004) then
		return false
	end
	
	-- 判断变量"Finish"为0
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_241006(context, evt)
	-- 针对当前group内变量名为 "" 的变量，进行修改，变化值为 0
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Finish", 1, 133217260 ) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_241007(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222241, 241001) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222241, 241002) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222241, 241003) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222241, 241004) then
		return false
	end
	
	-- 判断变量"Finish"为0
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_241007(context, evt)
	-- 将configid为 241005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 241005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "IsFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IsFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为33 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 33, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"CutScene"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "CutScene", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_241008(context, evt)
	-- 判断变量"Finish"为0
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_241008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222241, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_241009(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_241009(context, evt)
	-- 杀死Group内指定的monster和gadget
	if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133217176, monsters = {}, gadgets = {176001} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_241011(context, evt)
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_241011(context, evt)
	-- 杀死Group内指定的monster和gadget
	if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133217176, monsters = {}, gadgets = {176001} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	return 0
end

require "V2_1/PirateHelm"