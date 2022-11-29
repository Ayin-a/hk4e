-- 基础信息
local base_info = {
	group_id = 133212135
}

-- Trigger变量
local defs = {
	groupID = 133212135,
	shooter = 135008,
	repeater = {135008,135006,135009,135010,135011,135012,135015},
	target = 135013
}

-- DEFS_MISCS
function CheckSuccess(context)
	--龙首
if 202 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212135, 135008) then --放大器
	return false
end

if 202 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212135, 135009) then --反射1
	return false
end

if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212135, 135010) then --反射2
	return false
end

if 301 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212135, 135011) then --反射3
	return false
end

if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212135, 135012) then --反射4
	return false
end

if 202 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212135, 135006) then --反射5
	return false
end

if 202 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212135, 135015) then --反射6
	return false
end

-- 判断变量"playcutscene"为0
if ScriptLib.GetGroupVariableValueByGroup(context, "playcutscene", 133212135) ~= 0 then
	return false
end

return true

end

function CheckSuccess02(context)
	--龙首
if 202 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212135, 135008) then --放大器
	return false
end

if 202 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212135, 135009) then --反射1
	return false
end

if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212135, 135010) then --反射2
	return false
end

if 301 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212135, 135011) then --反射3
	return false
end

if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212135, 135012) then --反射4
	return false
end

if 202 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212135, 135006) then --反射5
	return false
end

if 202 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212135, 135015) then --反射6
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
	{ config_id = 135001, gadget_id = 70500000, pos = { x = -3854.279, y = 209.807, z = -2181.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9167, isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 135003, gadget_id = 70330100, pos = { x = -3906.624, y = 225.903, z = -2189.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 135004, gadget_id = 70330100, pos = { x = -3861.482, y = 225.131, z = -2212.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 135005, gadget_id = 70330100, pos = { x = -3902.399, y = 208.332, z = -2194.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 135006, gadget_id = 70290115, pos = { x = -3902.790, y = 208.210, z = -2193.670 }, rot = { x = 357.154, y = 196.839, z = 0.182 }, level = 27, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 135007, gadget_id = 70330100, pos = { x = -3838.598, y = 205.948, z = -2212.759 }, rot = { x = 0.000, y = 322.250, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 135008, gadget_id = 70290114, pos = { x = -3911.646, y = 243.957, z = -2226.715 }, rot = { x = 357.194, y = 95.539, z = 25.367 }, level = 27, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 135009, gadget_id = 70290115, pos = { x = -3906.818, y = 226.312, z = -2189.096 }, rot = { x = 353.560, y = 205.279, z = 2.744 }, level = 27, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 135010, gadget_id = 70290115, pos = { x = -3860.988, y = 225.962, z = -2211.283 }, rot = { x = 1.342, y = 348.120, z = 0.148 }, level = 27, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 135011, gadget_id = 70290115, pos = { x = -3876.363, y = 223.918, z = -2141.720 }, rot = { x = 5.000, y = 156.684, z = 1.087 }, level = 27, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 135012, gadget_id = 70290115, pos = { x = -3870.182, y = 208.916, z = -2156.077 }, rot = { x = 0.000, y = 222.172, z = 0.000 }, level = 27, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 135013, gadget_id = 70950143, pos = { x = -3854.591, y = 197.677, z = -2179.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 135015, gadget_id = 70290115, pos = { x = -3838.380, y = 206.700, z = -2212.670 }, rot = { x = 355.911, y = 59.262, z = 3.490 }, level = 27, persistent = true, is_use_point_array = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1135002, name = "ANY_GADGET_DIE_135002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_135002", action = "action_EVENT_ANY_GADGET_DIE_135002" },
	{ config_id = 1135014, name = "VARIABLE_CHANGE_135014", event = EventType.EVENT_VARIABLE_CHANGE, source = "ShootTrigger", condition = "condition_EVENT_VARIABLE_CHANGE_135014", action = "action_EVENT_VARIABLE_CHANGE_135014", trigger_count = 0 },
	{ config_id = 1135016, name = "QUEST_START_135016", event = EventType.EVENT_QUEST_START, source = "7212906", condition = "", action = "action_EVENT_QUEST_START_135016", trigger_count = 0 },
	{ config_id = 1135017, name = "GATHER_135017", event = EventType.EVENT_GATHER, source = "135001", condition = "condition_EVENT_GATHER_135017", action = "action_EVENT_GATHER_135017", trigger_count = 0 },
	{ config_id = 1135018, name = "QUEST_START_135018", event = EventType.EVENT_QUEST_START, source = "7213007", condition = "", action = "action_EVENT_QUEST_START_135018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "playcutscene", value = 0, no_refresh = false },
	{ config_id = 2, name = "reminder", value = 0, no_refresh = true }
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
		gadgets = { 135001, 135003, 135004, 135005, 135006, 135007, 135008, 135009, 135010, 135011, 135012, 135013, 135015 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_135002", "VARIABLE_CHANGE_135014", "QUEST_START_135016", "GATHER_135017", "QUEST_START_135018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_135002(context, evt)
	if 135013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_135002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7213008_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_135014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_135014(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if CheckSuccess(context)==true then
		-- 通知场景上的所有玩家播放名字为321214201 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 321213501, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 将本组内变量名为 "playcutscene" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "playcutscene", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {135008}, "_CHECK_FIRE_BULLET", 2)
	return 0
	else
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {135008}, "_CHECK_FIRE_BULLET", 1)
	return 0
	end
	
	
	
end

-- 触发操作
function action_EVENT_QUEST_START_135016(context, evt)
	-- 将configid为 135006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 135009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 135010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 135011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 135012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 135015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 135008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_135017(context, evt)
	-- 判断变量"reminder"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_135017(context, evt)
	-- 调用提示id为 321230071 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321230071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_135018(context, evt)
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/EnergyAmplifier"