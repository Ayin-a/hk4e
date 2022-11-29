-- 基础信息
local base_info = {
	group_id = 133303333
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
	{ config_id = 333001, gadget_id = 70310201, pos = { x = -1773.550, y = 171.699, z = 3579.378 }, rot = { x = 0.000, y = 172.773, z = 0.000 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 23 },
	{ config_id = 333002, gadget_id = 70330247, pos = { x = -1773.946, y = 162.774, z = 3585.649 }, rot = { x = 0.000, y = 167.841, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 333003, gadget_id = 70310201, pos = { x = -1773.896, y = 170.577, z = 3592.276 }, rot = { x = 0.000, y = 352.107, z = 0.000 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 23 },
	{ config_id = 333009, gadget_id = 70211121, pos = { x = -1771.996, y = 165.860, z = 3590.555 }, rot = { x = 0.000, y = 289.045, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 333010, gadget_id = 70310199, pos = { x = -1770.458, y = 167.219, z = 3579.105 }, rot = { x = 0.000, y = 264.464, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 333011, gadget_id = 70310199, pos = { x = -1770.619, y = 165.782, z = 3592.020 }, rot = { x = 0.000, y = 350.593, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1333004, name = "GADGET_STATE_CHANGE_333004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_333004", action = "action_EVENT_GADGET_STATE_CHANGE_333004" },
	{ config_id = 1333005, name = "GADGET_STATE_CHANGE_333005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_333005", action = "action_EVENT_GADGET_STATE_CHANGE_333005" },
	{ config_id = 1333006, name = "VARIABLE_CHANGE_333006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_333006", action = "action_EVENT_VARIABLE_CHANGE_333006" },
	{ config_id = 1333007, name = "GADGET_STATE_CHANGE_333007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_333007", action = "action_EVENT_GADGET_STATE_CHANGE_333007" },
	{ config_id = 1333008, name = "GROUP_LOAD_333008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_333008", action = "action_EVENT_GROUP_LOAD_333008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "num", value = 0, no_refresh = true }
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
		gadgets = { 333001, 333002, 333003, 333010, 333011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_333004", "GADGET_STATE_CHANGE_333005", "VARIABLE_CHANGE_333006", "GADGET_STATE_CHANGE_333007", "GROUP_LOAD_333008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_333004(context, evt)
	if 333001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_333004(context, evt)
	-- 针对当前group内变量名为 "num" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_333005(context, evt)
	if 333003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_333005(context, evt)
	-- 针对当前group内变量名为 "num" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_333006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"num"为1
	if ScriptLib.GetGroupVariableValue(context, "num") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_333006(context, evt)
	-- 将configid为 333002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_333007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303333, 333001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303333, 333003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_333007(context, evt)
	-- 将configid为 333002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为333009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 333009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_333008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303333, 333001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303333, 333003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_333008(context, evt)
	-- 将configid为 333002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为333009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 333009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end