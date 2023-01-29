-- 基础信息
local base_info = {
	group_id = 133307204
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 204001, monster_id = 23020101, pos = { x = -1252.311, y = 4.438, z = 5309.357 }, rot = { x = 0.000, y = 237.282, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 32 },
	{ config_id = 204002, monster_id = 23010501, pos = { x = -1226.458, y = 3.749, z = 5317.006 }, rot = { x = 0.000, y = 51.385, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 204003, monster_id = 23010501, pos = { x = -1227.829, y = 3.989, z = 5314.621 }, rot = { x = 0.000, y = 61.010, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 204008, gadget_id = 71700434, pos = { x = -1247.723, y = 3.749, z = 5310.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 204009, gadget_id = 71700434, pos = { x = -1246.423, y = 3.749, z = 5315.654 }, rot = { x = 0.000, y = 35.332, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 204010, gadget_id = 70710548, pos = { x = -1247.382, y = 3.749, z = 5311.329 }, rot = { x = 0.000, y = 198.016, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 204012, gadget_id = 70220063, pos = { x = -1233.070, y = 4.713, z = 5318.392 }, rot = { x = 348.928, y = 29.686, z = 288.617 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 204006, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1208.496, y = 3.749, z = 5322.635 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1204005, name = "ANY_MONSTER_DIE_204005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_204005" },
	{ config_id = 1204006, name = "ENTER_REGION_204006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_204006" },
	{ config_id = 1204007, name = "ANY_MONSTER_DIE_204007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_204007", action = "action_EVENT_ANY_MONSTER_DIE_204007" }
}

-- 变量
variables = {
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
		gadgets = { 204008, 204009, 204010, 204012 },
		regions = { 204006 },
		triggers = { "ANY_MONSTER_DIE_204005", "ENTER_REGION_204006", "ANY_MONSTER_DIE_204007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 204001, 204002, 204003 },
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
function action_EVENT_ANY_MONSTER_DIE_204005(context, evt)
	-- 调用提示id为 1000140003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_204006(context, evt)
	-- 调用提示id为 1000140000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307204, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-1213.14, y=6.008661, z=5319.225}，持续时间为6秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1213.14, y=6.008661, z=5319.225}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 6, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 改变指定group组133307100中， configid为100007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133307100, 100007, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open", 1, 133307100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_204007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_204007(context, evt)
	-- 调用提示id为 1000140045 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140045) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end