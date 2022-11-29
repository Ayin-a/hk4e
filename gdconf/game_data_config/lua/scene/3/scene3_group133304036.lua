-- 基础信息
local base_info = {
	group_id = 133304036
}

-- Trigger变量
local defs = {
	point_camera = 36010,
	gadget_lookEntity = 36006,
	look_duration = 6
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,
    blend_duration = 4,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[36001] = { config_id = 36001, monster_id = 22010201, pos = { x = -1713.651, y = 152.995, z = 2740.933 }, rot = { x = 0.000, y = 85.018, z = 0.000 }, level = 30, drop_tag = "深渊法师", pose_id = 9013, area_id = 21 },
	[36002] = { config_id = 36002, monster_id = 22010401, pos = { x = -1710.962, y = 152.889, z = 2743.703 }, rot = { x = 0.000, y = 165.263, z = 0.000 }, level = 30, drop_tag = "深渊法师", pose_id = 9013, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[36006] = { config_id = 36006, gadget_id = 70360001, pos = { x = -1650.000, y = 143.000, z = 2698.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[36007] = { config_id = 36007, gadget_id = 70300107, pos = { x = -1710.926, y = 152.534, z = 2741.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1036003, name = "ANY_MONSTER_DIE_36003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36003", action = "action_EVENT_ANY_MONSTER_DIE_36003", trigger_count = 0 },
	{ config_id = 1036004, name = "ANY_MONSTER_DIE_36004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36004", action = "action_EVENT_ANY_MONSTER_DIE_36004", trigger_count = 0 },
	{ config_id = 1036005, name = "ANY_MONSTER_DIE_36005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36005", action = "action_EVENT_ANY_MONSTER_DIE_36005", trigger_count = 0 },
	-- 延时生长树枝
	{ config_id = 1036008, name = "TIME_AXIS_PASS_36008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_36008", action = "action_EVENT_TIME_AXIS_PASS_36008", trigger_count = 0 },
	{ config_id = 1036009, name = "GROUP_LOAD_36009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_36009", action = "action_EVENT_GROUP_LOAD_36009", trigger_count = 0 },
	-- 保底
	{ config_id = 1036011, name = "GROUP_LOAD_36011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_36011", action = "action_EVENT_GROUP_LOAD_36011", trigger_count = 0 }
}

-- 点位
points = {
	[36010] = { config_id = 36010, pos = { x = -1639.000, y = 147.000, z = 2669.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
}

-- 变量
variables = {
	{ config_id = 1, name = "order", value = 0, no_refresh = true },
	{ config_id = 2, name = "vine2", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		monsters = { 36001, 36002 },
		gadgets = { 36006, 36007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_36003", "ANY_MONSTER_DIE_36004", "ANY_MONSTER_DIE_36005", "TIME_AXIS_PASS_36008", "GROUP_LOAD_36009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_36011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36003(context, evt)
	-- 将configid为 36006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "order" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "order", 1, 133304035) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "order" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "order", 1, 133304037) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"camera"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "camera", {2}, false)
	
	-- 将本组内变量名为 "vine2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "vine2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	LF_PointLook(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"order"为0
	if ScriptLib.GetGroupVariableValue(context, "order") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36004(context, evt)
	-- 调用提示id为 33040205 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040205) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"order"为2
	if ScriptLib.GetGroupVariableValue(context, "order") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36005(context, evt)
	-- 调用提示id为 33040207 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040207) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_36008(context, evt)
	if "camera" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_36008(context, evt)
	-- 将本组内变量名为 "vine2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "vine2", 1, 133304056) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_36009(context, evt)
	-- 判断变量"vine2"为1
	if ScriptLib.GetGroupVariableValue(context, "vine2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_36009(context, evt)
	-- 将本组内变量名为 "vine2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "vine2", 1, 133304056) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_36011(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7302705)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_36011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304036, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/CameraLook"