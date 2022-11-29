-- 基础信息
local base_info = {
	group_id = 133301466
}

-- Trigger变量
local defs = {
	gadget_CoreID = 466005,
	monster_BossID = 466002,
	gadget_Point_1 = 466006,
	gadget_Point_2 = 466007,
	gadget_Point_3 = 466008,
	point_camera = 466013,
	gadget_lookEntity = 466005,
	look_duration = 5
}

-- DEFS_MISCS
local RequireSuite = {} --死域玩法的初始suit。若不填或不注入，默认走init_config.suite

local DeathField ={
	CoreID = defs.gadget_CoreID,
	BossID = defs.monster_BossID,
	BossSuite = 2,
	EndSuite = 3,
	PointList = {defs.gadget_Point_1,defs.gadget_Point_2,defs.gadget_Point_3},
}

local CameraLookSetting = {
    blend_type = 0,
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
	[466001] = { config_id = 466001, monster_id = 26090201, pos = { x = -943.935, y = 204.539, z = 2619.304 }, rot = { x = 0.000, y = 121.336, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 24 },
	[466002] = { config_id = 466002, monster_id = 26120101, pos = { x = -940.258, y = 206.212, z = 2632.005 }, rot = { x = 0.000, y = 132.763, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6117 }, isElite = true, pose_id = 201, area_id = 24 },
	[466003] = { config_id = 466003, monster_id = 26090201, pos = { x = -933.772, y = 204.508, z = 2624.109 }, rot = { x = 0.000, y = 120.885, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[466005] = { config_id = 466005, gadget_id = 70310193, pos = { x = -947.295, y = 207.360, z = 2637.667 }, rot = { x = 0.000, y = 109.478, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[466006] = { config_id = 466006, gadget_id = 70310195, pos = { x = -932.698, y = 204.611, z = 2620.413 }, rot = { x = 5.499, y = 37.693, z = 3.148 }, level = 27, persistent = true, area_id = 24 },
	[466007] = { config_id = 466007, gadget_id = 70310195, pos = { x = -944.690, y = 206.290, z = 2629.054 }, rot = { x = 1.001, y = 7.900, z = 6.816 }, level = 27, persistent = true, area_id = 24 },
	[466008] = { config_id = 466008, gadget_id = 70310195, pos = { x = -940.259, y = 207.440, z = 2640.828 }, rot = { x = 350.208, y = 354.054, z = 0.128 }, level = 27, persistent = true, area_id = 24 },
	[466009] = { config_id = 466009, gadget_id = 70360001, pos = { x = -944.826, y = 207.150, z = 2630.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[466010] = { config_id = 466010, gadget_id = 70310191, pos = { x = -937.761, y = 204.861, z = 2620.013 }, rot = { x = 0.000, y = 351.133, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[466017] = { config_id = 466017, gadget_id = 70310198, pos = { x = -920.337, y = 205.028, z = 2623.404 }, rot = { x = 12.217, y = 199.663, z = 2.473 }, level = 27, area_id = 24 },
	[466018] = { config_id = 466018, gadget_id = 70310198, pos = { x = -932.289, y = 207.554, z = 2638.104 }, rot = { x = 12.948, y = 228.089, z = 2.545 }, level = 27, area_id = 24 },
	[466020] = { config_id = 466020, gadget_id = 70310196, pos = { x = -946.141, y = 208.241, z = 2637.092 }, rot = { x = 14.044, y = 143.377, z = 33.689 }, level = 27, persistent = true, area_id = 24 },
	[466021] = { config_id = 466021, gadget_id = 70310196, pos = { x = -946.141, y = 208.241, z = 2637.092 }, rot = { x = 357.966, y = 180.128, z = 359.137 }, level = 27, persistent = true, area_id = 24 },
	[466022] = { config_id = 466022, gadget_id = 70310196, pos = { x = -946.141, y = 208.241, z = 2637.092 }, rot = { x = 1.536, y = 63.912, z = 357.345 }, level = 27, persistent = true, area_id = 24 },
	-- 指引
	[466031] = { config_id = 466031, gadget_id = 70360001, pos = { x = -946.589, y = 208.247, z = 2637.312 }, rot = { x = 0.000, y = 142.021, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
	-- 新手指引1
	[466014] = { config_id = 466014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -932.828, y = 204.419, z = 2620.318 }, area_id = 24 },
	-- 新手指引2
	[466015] = { config_id = 466015, shape = RegionShape.SPHERE, radius = 5, pos = { x = -945.117, y = 205.665, z = 2628.696 }, area_id = 24 },
	-- 新手指引3
	[466016] = { config_id = 466016, shape = RegionShape.SPHERE, radius = 5, pos = { x = -940.137, y = 204.293, z = 2641.201 }, area_id = 24 }
}

-- 触发器
triggers = {
	-- 核心交互播镜头
	{ config_id = 1466004, name = "LUA_NOTIFY_466004", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_466004", trigger_count = 0 },
	{ config_id = 1466011, name = "GROUP_LOAD_466011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_466011", trigger_count = 0 },
	{ config_id = 1466012, name = "GROUP_LOAD_466012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_466012", trigger_count = 0 },
	-- 新手指引1
	{ config_id = 1466014, name = "ENTER_REGION_466014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_466014", action = "action_EVENT_ENTER_REGION_466014", trigger_count = 0 },
	-- 新手指引2
	{ config_id = 1466015, name = "ENTER_REGION_466015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_466015", action = "action_EVENT_ENTER_REGION_466015", trigger_count = 0 },
	-- 新手指引3
	{ config_id = 1466016, name = "ENTER_REGION_466016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_466016", action = "action_EVENT_ENTER_REGION_466016", trigger_count = 0 },
	{ config_id = 1466019, name = "QUEST_START_466019", event = EventType.EVENT_QUEST_START, source = "7300104", condition = "", action = "action_EVENT_QUEST_START_466019", trigger_count = 0 },
	-- 核心消失刷宝箱
	{ config_id = 1466023, name = "ANY_GADGET_DIE_466023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_466023", action = "action_EVENT_ANY_GADGET_DIE_466023" },
	-- 节点死对应特效消失
	{ config_id = 1466024, name = "GADGET_STATE_CHANGE_466024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_466024", action = "action_EVENT_GADGET_STATE_CHANGE_466024" },
	-- 节点死对应特效消失
	{ config_id = 1466025, name = "GADGET_STATE_CHANGE_466025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_466025", action = "action_EVENT_GADGET_STATE_CHANGE_466025" },
	-- 节点死对应特效消失
	{ config_id = 1466026, name = "GADGET_STATE_CHANGE_466026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_466026", action = "action_EVENT_GADGET_STATE_CHANGE_466026" },
	-- 创建指引
	{ config_id = 1466030, name = "ANY_MONSTER_DIE_466030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_466030", action = "action_EVENT_ANY_MONSTER_DIE_466030", trigger_count = 0 }
}

-- 点位
points = {
	[466013] = { config_id = 466013, pos = { x = -927.717, y = 232.283, z = 2659.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 24 }
}

-- 变量
variables = {
	{ config_id = 1, name = "tutorial", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1466027, name = "ANY_GADGET_DIE_466027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_466027", action = "action_EVENT_ANY_GADGET_DIE_466027", trigger_count = 0 },
		{ config_id = 1466028, name = "ANY_GADGET_DIE_466028", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_466028", action = "action_EVENT_ANY_GADGET_DIE_466028", trigger_count = 0 },
		{ config_id = 1466029, name = "ANY_GADGET_DIE_466029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_466029", action = "action_EVENT_ANY_GADGET_DIE_466029", trigger_count = 0 },
		{ config_id = 1466032, name = "GADGET_CREATE_466032", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_466032", action = "action_EVENT_GADGET_CREATE_466032", trigger_count = 0 },
		{ config_id = 1466033, name = "GADGET_CREATE_466033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_466033", action = "action_EVENT_GADGET_CREATE_466033", trigger_count = 0 },
		{ config_id = 1466034, name = "GADGET_CREATE_466034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_466034", action = "action_EVENT_GADGET_CREATE_466034", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 466005, 466006, 466007, 466008, 466009, 466010, 466017, 466018, 466020, 466021, 466022 },
		regions = { 466014, 466015, 466016 },
		triggers = { "LUA_NOTIFY_466004", "GROUP_LOAD_466011", "ENTER_REGION_466014", "ENTER_REGION_466015", "ENTER_REGION_466016", "QUEST_START_466019", "ANY_GADGET_DIE_466023", "GADGET_STATE_CHANGE_466024", "GADGET_STATE_CHANGE_466025", "GADGET_STATE_CHANGE_466026", "ANY_MONSTER_DIE_466030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 466002 },
		gadgets = { 466009 },
		regions = { },
		triggers = { "QUEST_START_466019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 466009, 466017, 466018 },
		regions = { },
		triggers = { "GROUP_LOAD_466012", "QUEST_START_466019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 466009 },
		regions = { },
		triggers = { "QUEST_START_466019" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
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
function action_EVENT_LUA_NOTIFY_466004(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_466011(context, evt)
	-- 将configid为 %config_id% 的物件更改为状态 %state%
	if 0 ~= ScriptLib.ChangeDeathZone(context,0,{is_open = true}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_deatzone")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_466012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7300104") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 466009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 466009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_466014(context, evt)
	if evt.param1 ~= 466014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"tutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "tutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_466014(context, evt)
	-- 调用提示id为 33010248 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010248) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_466015(context, evt)
	if evt.param1 ~= 466015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"tutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "tutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_466015(context, evt)
	-- 调用提示id为 33010248 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010248) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_466016(context, evt)
	if evt.param1 ~= 466016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"tutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "tutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_466016(context, evt)
	-- 调用提示id为 33010248 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010248) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_466019(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 466001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 466003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_466023(context, evt)
	if 466005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_466023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301466, 4)
	
	-- 将configid为 466009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 466009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301466, EntityType.GADGET, 466031 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_466024(context, evt)
	if 466006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_466024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 466020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "tutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_466025(context, evt)
	if 466007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_466025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 466021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "tutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_466026(context, evt)
	if 466008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_466026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 466022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "tutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_466030(context, evt)
	if 466002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_466030(context, evt)
	-- 创建id为466031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 466031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"