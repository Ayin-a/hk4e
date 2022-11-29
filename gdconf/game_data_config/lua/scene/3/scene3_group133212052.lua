-- 基础信息
local base_info = {
	group_id = 133212052
}

-- Trigger变量
local defs = {
	groupID = 133212052,
	shooter = 52001,
	 repeater = {52001,52002,52003,52005,52006,52007},
	target = 52010
}

-- DEFS_MISCS
function CheckSuccess(context)

	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52001) then  --放大
		return false
	end
	
	if 101 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52002) then --反射1
		return false
	end
	
	if 303 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52003) then --反射2
		return false
	end
	
	if 303 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52005) then --反射3
		return false
	end
	
	if 204 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52006) then --反射4
		return false
	end
	
	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52007) then --反射5
		return false
	end
    if -1 == ScriptLib.GetGadgetStateByConfigId(context, 133212233, 233010) then --反射5
		return false
	end
	
	-- 判断变量"playcutscene"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "playcutscene", 133212052) ~= 0 then
		return false
	end
	
	return true

end

function CheckSuccess02(context)

	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52001) then  --放大
		return false
	end
	
	if 101 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52002) then --反射1
		return false
	end
	
	if 303 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52003) then --反射2
		return false
	end
	
	if 303 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52005) then --反射3
		return false
	end
	
	if 204 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52006) then --反射4
		return false
	end
	
	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52007) then --反射5
		return false
	end
	

	return true

end

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
	{ config_id = 52001, gadget_id = 70290114, pos = { x = -3651.490, y = 197.690, z = -1784.009 }, rot = { x = 0.021, y = 188.452, z = 1.031 }, level = 27, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 52002, gadget_id = 70290115, pos = { x = -3641.214, y = 198.937, z = -1736.883 }, rot = { x = 47.178, y = 304.411, z = 354.518 }, level = 27, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 52003, gadget_id = 70290115, pos = { x = -3689.874, y = 198.640, z = -1699.897 }, rot = { x = 42.554, y = 54.768, z = 0.000 }, level = 27, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 52005, gadget_id = 70290115, pos = { x = -3719.730, y = 198.300, z = -1724.410 }, rot = { x = 45.000, y = 29.685, z = 358.463 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 52006, gadget_id = 70290115, pos = { x = -3743.144, y = 197.633, z = -1766.218 }, rot = { x = 359.178, y = 44.479, z = 359.828 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 52007, gadget_id = 70290115, pos = { x = -3711.267, y = 197.325, z = -1796.575 }, rot = { x = 0.000, y = 203.897, z = 0.000 }, level = 27, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1052004, name = "QUEST_START_52004", event = EventType.EVENT_QUEST_START, source = "7212906", condition = "", action = "action_EVENT_QUEST_START_52004", trigger_count = 0 },
	{ config_id = 1052013, name = "VARIABLE_CHANGE_52013", event = EventType.EVENT_VARIABLE_CHANGE, source = "ShootTrigger", condition = "condition_EVENT_VARIABLE_CHANGE_52013", action = "action_EVENT_VARIABLE_CHANGE_52013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "playcutscene", value = 0, no_refresh = false }
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
		gadgets = { 52001, 52002, 52003, 52005, 52006, 52007 },
		regions = { },
		triggers = { "QUEST_START_52004", "VARIABLE_CHANGE_52013" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_52004(context, evt)
	-- 将configid为 52002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 52003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 52005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 52006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 52007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 52001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_52013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_52013(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if CheckSuccess(context)==true then
		-- 通知场景上的所有玩家播放名字为321214201 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 321205201, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 将本组内变量名为 "playcutscene" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "playcutscene", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {52001}, "_CHECK_FIRE_BULLET", 2)
	return 0
	else
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {52001}, "_CHECK_FIRE_BULLET", 1)
	return 0
	end
	
	
	
end

require "BlackBoxPlay/EnergyAmplifier"