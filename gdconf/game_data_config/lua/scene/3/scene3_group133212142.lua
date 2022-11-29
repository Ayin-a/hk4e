-- 基础信息
local base_info = {
	group_id = 133212142
}

-- Trigger变量
local defs = {
	groupID = 133212142,
	shooter = 142001,
	 repeater = {142001,142002,142003,142011},
	target = 142005
}

-- DEFS_MISCS
function CheckSuccess(context)
	if 204 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212142, 142001) then
	return false
end

if 304 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212142, 142002) then
	return false
end

if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212142, 142003) then
	return false
end

if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212142, 142011) then
	return false
end

-- 判断变量"playcutscene"为0
if ScriptLib.GetGroupVariableValueByGroup(context, "playcutscene", 133212142) ~= 0 then
	return false
end

return true

end
function CheckSuccess02(context)
	if 204 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212142, 142001) then
	return false
end

if 304 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212142, 142002) then
	return false
end

if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212142, 142003) then
	return false
end

if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212142, 142011) then
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
	{ config_id = 142014, monster_id = 25080101, pos = { x = -3568.208, y = 228.466, z = -2260.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 142015, monster_id = 25080101, pos = { x = -3565.726, y = 228.309, z = -2271.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 142016, monster_id = 25080101, pos = { x = -3557.439, y = 228.408, z = -2277.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 142017, monster_id = 25080101, pos = { x = -3544.469, y = 228.188, z = -2275.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 142018, monster_id = 25080101, pos = { x = -3540.099, y = 228.089, z = -2258.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 142019, monster_id = 25100101, pos = { x = -3555.997, y = 220.633, z = -2272.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1101 }, pose_id = 1002, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 142001, gadget_id = 70290114, pos = { x = -3595.419, y = 250.316, z = -2277.676 }, rot = { x = 357.592, y = 43.349, z = 355.874 }, level = 5, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 142002, gadget_id = 70290115, pos = { x = -3575.269, y = 247.700, z = -2298.240 }, rot = { x = 0.000, y = 349.849, z = 0.000 }, level = 5, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 142003, gadget_id = 70290115, pos = { x = -3552.713, y = 229.800, z = -2295.156 }, rot = { x = 0.000, y = 19.882, z = 0.000 }, level = 5, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 142004, gadget_id = 70290135, pos = { x = -3609.740, y = 253.460, z = -2240.884 }, rot = { x = 0.000, y = 76.645, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 142005, gadget_id = 70900385, pos = { x = -3553.823, y = 228.253, z = -2263.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 13 },
	{ config_id = 142006, gadget_id = 70500000, pos = { x = -3553.971, y = 229.779, z = -2263.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9165, isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 142007, gadget_id = 70500000, pos = { x = -3557.422, y = 220.552, z = -2278.107 }, rot = { x = 0.000, y = 115.527, z = 0.000 }, level = 27, point_type = 9166, isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 142010, gadget_id = 70290135, pos = { x = -3599.399, y = 250.195, z = -2236.121 }, rot = { x = 0.000, y = 59.004, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 142011, gadget_id = 70290115, pos = { x = -3535.024, y = 230.065, z = -2246.781 }, rot = { x = 0.000, y = 227.414, z = 0.000 }, level = 27, persistent = true, is_use_point_array = true, area_id = 13 },
	{ config_id = 142012, gadget_id = 70290135, pos = { x = -3587.676, y = 249.254, z = -2229.791 }, rot = { x = 0.000, y = 69.272, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 142022, gadget_id = 70290135, pos = { x = -3572.160, y = 242.940, z = -2232.846 }, rot = { x = 0.000, y = 135.839, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 142023, gadget_id = 70290135, pos = { x = -3562.030, y = 233.063, z = -2243.125 }, rot = { x = 0.000, y = 151.346, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 142030, gadget_id = 70290135, pos = { x = -3556.886, y = 228.971, z = -2252.695 }, rot = { x = 0.000, y = 151.346, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 142031, gadget_id = 70290135, pos = { x = -3552.073, y = 221.377, z = -2263.835 }, rot = { x = 0.000, y = 204.960, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 142032, gadget_id = 70290135, pos = { x = -3554.671, y = 221.377, z = -2271.339 }, rot = { x = 0.000, y = 204.960, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 142008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3554.070, y = 220.693, z = -2266.307 }, area_id = 13 },
	{ config_id = 142009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3595.028, y = 249.926, z = -2282.467 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1142008, name = "ENTER_REGION_142008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1142009, name = "ENTER_REGION_142009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1142013, name = "ANY_GADGET_DIE_142013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_142013", action = "action_EVENT_ANY_GADGET_DIE_142013" },
	{ config_id = 1142020, name = "GATHER_142020", event = EventType.EVENT_GATHER, source = "142007", condition = "condition_EVENT_GATHER_142020", action = "action_EVENT_GATHER_142020", trigger_count = 0 },
	{ config_id = 1142021, name = "VARIABLE_CHANGE_142021", event = EventType.EVENT_VARIABLE_CHANGE, source = "ShootTrigger", condition = "", action = "action_EVENT_VARIABLE_CHANGE_142021", trigger_count = 0 },
	{ config_id = 1142024, name = "QUEST_START_142024", event = EventType.EVENT_QUEST_START, source = "7212906", condition = "", action = "action_EVENT_QUEST_START_142024", trigger_count = 0 },
	{ config_id = 1142025, name = "QUEST_FINISH_142025", event = EventType.EVENT_QUEST_FINISH, source = "7212906", condition = "", action = "action_EVENT_QUEST_FINISH_142025" },
	{ config_id = 1142026, name = "GATHER_142026", event = EventType.EVENT_GATHER, source = "142006", condition = "condition_EVENT_GATHER_142026", action = "action_EVENT_GATHER_142026", trigger_count = 0 },
	-- 播放reminder1
	{ config_id = 1142027, name = "QUEST_START_142027", event = EventType.EVENT_QUEST_START, source = "7212907", condition = "", action = "action_EVENT_QUEST_START_142027", trigger_count = 0 },
	-- 播放reminder2
	{ config_id = 1142028, name = "QUEST_START_142028", event = EventType.EVENT_QUEST_START, source = "7212908", condition = "", action = "action_EVENT_QUEST_START_142028", trigger_count = 0 },
	-- 播放任务完成reminder
	{ config_id = 1142029, name = "QUEST_FINISH_142029", event = EventType.EVENT_QUEST_FINISH, source = "7212909", condition = "", action = "action_EVENT_QUEST_FINISH_142029", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "playcutscene", value = 0, no_refresh = false },
	{ config_id = 2, name = "reminder_01", value = 0, no_refresh = true }
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
		monsters = { 142014, 142015, 142016, 142017, 142018 },
		gadgets = { 142001, 142002, 142003, 142004, 142005, 142006, 142007, 142010, 142011, 142012, 142022, 142023, 142030, 142031, 142032 },
		regions = { 142008, 142009 },
		triggers = { "ENTER_REGION_142008", "ENTER_REGION_142009", "ANY_GADGET_DIE_142013", "VARIABLE_CHANGE_142021", "QUEST_START_142024", "QUEST_FINISH_142025", "GATHER_142026", "QUEST_START_142027", "QUEST_START_142028", "QUEST_FINISH_142029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 142019 },
		gadgets = { 142007 },
		regions = { },
		triggers = { "GATHER_142020", "QUEST_START_142027", "QUEST_START_142028", "QUEST_FINISH_142029" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_142013(context, evt)
	if 142005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_142013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212142, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212907_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_142020(context, evt)
	-- 判断变量""不为0
	if ScriptLib.GetGroupVariableValue(context, "") ~= 0 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GATHER_142020(context, evt)
	-- 调用提示id为 321229071 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321229071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_142021(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == evt.param2 then return -1 end
	
	if CheckSuccess(context)==true then
		-- 通知场景上的所有玩家播放名字为321214201 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 321214201, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 将本组内变量名为 "playcutscene" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "playcutscene", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {142001}, "_CHECK_FIRE_BULLET", 2)
	return 0
	else
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {142001}, "_CHECK_FIRE_BULLET", 1)
	return 0
	end
	
	
	
end

-- 触发操作
function action_EVENT_QUEST_START_142024(context, evt)
	-- 将configid为 142002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 142003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 142011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 142001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_142025(context, evt)
	-- 调用提示id为 321229061 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321229061) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 改变指定group组133212002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133212002, 2001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_142026(context, evt)
	-- 判断变量""不为0
	if ScriptLib.GetGroupVariableValue(context, "reminder_01") ~= 0 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GATHER_142026(context, evt)
	-- 调用提示id为 321229081 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321229081) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_142027(context, evt)
	-- 将本组内变量名为 "reminder_01" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder_01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_142028(context, evt)
	-- 将本组内变量名为 "reminder_01" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder_01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_142029(context, evt)
	-- 调用提示id为 321229061 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321229061) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "BlackBoxPlay/EnergyAmplifier"