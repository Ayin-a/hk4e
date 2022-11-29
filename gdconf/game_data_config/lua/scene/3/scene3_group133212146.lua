-- 基础信息
local base_info = {
	group_id = 133212146
}

-- Trigger变量
local defs = {
	groupID = 133212146,
	shooter = 146001,
	 repeater = {146001,146002,146003,146012,146013,146014,146004},
	target = 146005
}

-- DEFS_MISCS
function CheckSuccess(context)
	--矿坑
if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212146, 146001) then --放大1
	return false
end

if 301 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212146, 146002) then --反射1
	return false
end

if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212146, 146004) then --反射2
	return false
end

if 304 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212146, 146003) then --反射3
	return false
end

if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212146, 146012) then --反射4
	return false
end

if 204 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212146, 146013) then --反射5
	return false
end

if 302 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212146, 146014) then --反射6
	return false
end

-- 判断变量"playcutscene"为0
if ScriptLib.GetGroupVariableValueByGroup(context, "playcutscene", 133212146) ~= 0 then
	return false
end

return true

end

function CheckSuccess02(context)
	--矿坑
if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212146, 146001) then --放大1
	return false
end

if 301 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212146, 146002) then --反射1
	return false
end

if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212146, 146004) then --反射2
	return false
end

if 304 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212146, 146003) then --反射3
	return false
end

if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212146, 146012) then --反射4
	return false
end

if 204 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212146, 146013) then --反射5
	return false
end

if 302 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212146, 146014) then --反射6
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
	{ config_id = 146001, gadget_id = 70290114, pos = { x = -4057.850, y = 239.783, z = -2356.358 }, rot = { x = 355.701, y = 3.936, z = 0.543 }, level = 5, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 146002, gadget_id = 70290115, pos = { x = -4060.756, y = 235.068, z = -2408.299 }, rot = { x = 0.000, y = 10.294, z = 356.270 }, level = 5, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 146003, gadget_id = 70290115, pos = { x = -4038.907, y = 223.485, z = -2362.424 }, rot = { x = 352.124, y = 184.596, z = 0.000 }, level = 5, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 146004, gadget_id = 70290115, pos = { x = -4059.946, y = 222.513, z = -2394.573 }, rot = { x = 357.417, y = 32.824, z = 1.007 }, level = 27, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 146005, gadget_id = 70330100, pos = { x = -4057.886, y = 239.199, z = -2356.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 146006, gadget_id = 70330100, pos = { x = -4059.973, y = 222.862, z = -2394.878 }, rot = { x = 0.000, y = 297.767, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 146007, gadget_id = 70950143, pos = { x = -4029.542, y = 196.292, z = -2369.054 }, rot = { x = 0.000, y = 0.000, z = 4.183 }, level = 27, area_id = 13 },
	{ config_id = 146012, gadget_id = 70290115, pos = { x = -4055.881, y = 212.968, z = -2362.344 }, rot = { x = 2.633, y = 185.224, z = 359.730 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 146013, gadget_id = 70290115, pos = { x = -4060.739, y = 213.086, z = -2402.861 }, rot = { x = 1.269, y = 323.278, z = 0.786 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 146014, gadget_id = 70290115, pos = { x = -4003.730, y = 214.445, z = -2361.125 }, rot = { x = 0.000, y = 349.284, z = 0.000 }, level = 27, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1146008, name = "ANY_GADGET_DIE_146008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_146008", action = "" },
	{ config_id = 1146009, name = "VARIABLE_CHANGE_146009", event = EventType.EVENT_VARIABLE_CHANGE, source = "ShootTrigger", condition = "condition_EVENT_VARIABLE_CHANGE_146009", action = "action_EVENT_VARIABLE_CHANGE_146009", trigger_count = 0 },
	{ config_id = 1146010, name = "QUEST_START_146010", event = EventType.EVENT_QUEST_START, source = "7212906", condition = "", action = "action_EVENT_QUEST_START_146010", trigger_count = 0 }
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
		gadgets = { 146001, 146002, 146003, 146004, 146005, 146006, 146007, 146012, 146013, 146014 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_146008", "VARIABLE_CHANGE_146009", "QUEST_START_146010" },
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

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_146008(context, evt)
	if 146007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_146009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_146009(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if CheckSuccess(context)==true then
		-- 通知场景上的所有玩家播放名字为321214201 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 321214601, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 将本组内变量名为 "playcutscene" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "playcutscene", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {146001}, "_CHECK_FIRE_BULLET", 2)
	return 0
	else
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {146001}, "_CHECK_FIRE_BULLET", 1)
	return 0
	end
	
	
	
end

-- 触发操作
function action_EVENT_QUEST_START_146010(context, evt)
	-- 将configid为 146002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/EnergyAmplifier"