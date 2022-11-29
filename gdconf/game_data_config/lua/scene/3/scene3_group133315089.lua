-- 基础信息
local base_info = {
	group_id = 133315089
}

-- Trigger变量
local defs = {
	point_camera = 89017,
	gadget_lookEntity = 89018,
	look_duration = 3
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = true,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 右侧藏怪
	[89005] = { config_id = 89005, monster_id = 26090901, pos = { x = 23.028, y = 111.676, z = 2936.001 }, rot = { x = 0.000, y = 99.835, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	-- 右侧藏怪
	[89006] = { config_id = 89006, monster_id = 26090901, pos = { x = 22.064, y = 111.118, z = 2938.819 }, rot = { x = 0.000, y = 99.835, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	-- 左侧藏怪
	[89037] = { config_id = 89037, monster_id = 26090901, pos = { x = 209.017, y = 98.216, z = 2967.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	-- 左侧藏怪
	[89038] = { config_id = 89038, monster_id = 26090901, pos = { x = 209.584, y = 98.005, z = 2965.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[89001] = { config_id = 89001, gadget_id = 70330248, pos = { x = 169.448, y = 102.704, z = 2931.528 }, rot = { x = 356.065, y = 336.195, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[89002] = { config_id = 89002, gadget_id = 70210101, pos = { x = 217.324, y = 98.991, z = 2974.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 20 },
	[89003] = { config_id = 89003, gadget_id = 70210101, pos = { x = 216.121, y = 98.709, z = 2973.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 20 },
	-- 左侧藏怪巨石
	[89007] = { config_id = 89007, gadget_id = 70310215, pos = { x = 211.558, y = 97.955, z = 2967.656 }, rot = { x = 0.001, y = 67.432, z = 351.332 }, level = 27, persistent = true, area_id = 20 },
	[89008] = { config_id = 89008, gadget_id = 70217020, pos = { x = 46.947, y = 122.819, z = 2944.656 }, rot = { x = 350.535, y = 335.771, z = 4.183 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
	[89009] = { config_id = 89009, gadget_id = 70217020, pos = { x = 60.142, y = 109.641, z = 2918.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
	[89010] = { config_id = 89010, gadget_id = 70330197, pos = { x = 53.119, y = 105.740, z = 2917.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[89018] = { config_id = 89018, gadget_id = 70360001, pos = { x = 170.059, y = 118.066, z = 2929.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[89022] = { config_id = 89022, gadget_id = 70217020, pos = { x = 217.514, y = 98.037, z = 2969.919 }, rot = { x = 0.000, y = 346.066, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
	-- 左侧空巨石
	[89023] = { config_id = 89023, gadget_id = 70310215, pos = { x = 232.965, y = 94.624, z = 2977.871 }, rot = { x = 0.000, y = 207.850, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 右侧藏怪巨石
	[89024] = { config_id = 89024, gadget_id = 70310215, pos = { x = 21.028, y = 110.429, z = 2937.412 }, rot = { x = 0.000, y = 78.611, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 右侧巨石藏怪
	{ config_id = 1089004, name = "ANY_GADGET_DIE_89004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_89004", action = "action_EVENT_ANY_GADGET_DIE_89004" },
	-- 变量=1 封印1/2
	{ config_id = 1089011, name = "VARIABLE_CHANGE_89011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_89011", action = "action_EVENT_VARIABLE_CHANGE_89011" },
	-- 右侧藏怪入战
	{ config_id = 1089012, name = "MONSTER_BATTLE_89012", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_89012", action = "action_EVENT_MONSTER_BATTLE_89012" },
	-- 变量=2 封印2/2 开门
	{ config_id = 1089013, name = "VARIABLE_CHANGE_89013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_89013", action = "action_EVENT_VARIABLE_CHANGE_89013" },
	-- 左侧藏怪入站
	{ config_id = 1089014, name = "MONSTER_BATTLE_89014", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_89014", action = "action_EVENT_MONSTER_BATTLE_89014" },
	{ config_id = 1089015, name = "GROUP_LOAD_89015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_89015", action = "action_EVENT_GROUP_LOAD_89015", trigger_count = 0 },
	-- 水面冲下来，所有石块都干掉
	{ config_id = 1089019, name = "QUEST_START_89019", event = EventType.EVENT_QUEST_START, source = "7306334", condition = "", action = "action_EVENT_QUEST_START_89019", trigger_count = 0 },
	-- 门开 仙灵goto2
	{ config_id = 1089020, name = "ANY_GADGET_DIE_89020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_89020", action = "action_EVENT_ANY_GADGET_DIE_89020", trigger_count = 0 },
	-- 左侧巨石藏怪
	{ config_id = 1089036, name = "ANY_GADGET_DIE_89036", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_89036", action = "action_EVENT_ANY_GADGET_DIE_89036" },
	-- 左侧捷径，打开后没有东西，捷径内有三态物件移动平台
	{ config_id = 1089041, name = "ANY_GADGET_DIE_89041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_89041", action = "action_EVENT_ANY_GADGET_DIE_89041" }
}

-- 点位
points = {
	[89016] = { config_id = 89016, pos = { x = 170.059, y = 118.066, z = 2929.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 },
	[89017] = { config_id = 89017, pos = { x = 154.105, y = 117.916, z = 2953.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlock", value = 0, no_refresh = true }
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
		monsters = { 89038 },
		gadgets = { 89001, 89002, 89003, 89007, 89008, 89009, 89010, 89022, 89023, 89024 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_89004", "VARIABLE_CHANGE_89011", "MONSTER_BATTLE_89012", "VARIABLE_CHANGE_89013", "MONSTER_BATTLE_89014", "GROUP_LOAD_89015", "QUEST_START_89019", "ANY_GADGET_DIE_89020", "ANY_GADGET_DIE_89036", "ANY_GADGET_DIE_89041" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_89004(context, evt)
	if 89024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_89004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 89005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 89006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_89011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_89011(context, evt)
	-- 将configid为 89001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
	end
	
	
	LF_PointLook(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_89012(context, evt)
	if 89005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_89012(context, evt)
	-- 调用提示id为 7306321 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306321) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_89013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为2
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_89013(context, evt)
	-- 将configid为 89001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 0 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306330) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	
	
	LF_PointLook(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_89014(context, evt)
	if 89037 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_89014(context, evt)
	-- 调用提示id为 7306327 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306327) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_89015(context, evt)
	-- 判断变量"unlock"为2
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_89015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 89001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_89019(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 89007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 89023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 89024 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133315307, monsters = {}, gadgets = {307006} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_89020(context, evt)
	if 89001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_89020(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315229, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_89036(context, evt)
	if 89007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_89036(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 89037, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 89038, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_89041(context, evt)
	if 89023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_89041(context, evt)
	-- 调用提示id为 730632407 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730632407) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_0/CameraLook"