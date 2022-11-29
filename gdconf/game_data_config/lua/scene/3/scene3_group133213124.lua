-- 基础信息
local base_info = {
	group_id = 133213124
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124002, monster_id = 23010501, pos = { x = -3644.357, y = 206.976, z = -3196.450 }, rot = { x = 0.000, y = 111.851, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 124003, monster_id = 23010301, pos = { x = -3646.011, y = 207.253, z = -3202.856 }, rot = { x = 0.000, y = 66.256, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 124007, monster_id = 23050101, pos = { x = -3643.553, y = 207.027, z = -3199.462 }, rot = { x = 0.000, y = 94.944, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 124009, gadget_id = 70900389, pos = { x = -3625.568, y = 206.641, z = -3203.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 124010, gadget_id = 70310081, pos = { x = -3625.568, y = 206.641, z = -3203.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 124012, gadget_id = 70360001, pos = { x = -3627.520, y = 206.843, z = -3207.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 124001, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3626.418, y = 206.794, z = -3201.411 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1124001, name = "ENTER_REGION_124001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_124001", action = "action_EVENT_ENTER_REGION_124001" },
	{ config_id = 1124005, name = "ANY_MONSTER_DIE_124005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_124005", action = "action_EVENT_ANY_MONSTER_DIE_124005" },
	{ config_id = 1124008, name = "ANY_MONSTER_DIE_124008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_124008", action = "action_EVENT_ANY_MONSTER_DIE_124008" },
	{ config_id = 1124011, name = "MONSTER_BATTLE_124011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_124011" },
	{ config_id = 1124013, name = "GADGET_CREATE_124013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_124013", action = "action_EVENT_GADGET_CREATE_124013", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 124004, monster_id = 23010301, pos = { x = -3642.856, y = 206.807, z = -3193.718 }, rot = { x = 0.000, y = 132.167, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, climate_area_id = 2, area_id = 12 },
		{ config_id = 124006, monster_id = 23020101, pos = { x = -3637.877, y = 207.361, z = -3208.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, climate_area_id = 2, area_id = 12 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 124001 },
		triggers = { "ENTER_REGION_124001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 124002, 124003 },
		gadgets = { 124009, 124010, 124012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_124005", "MONSTER_BATTLE_124011", "GADGET_CREATE_124013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 124007 },
		gadgets = { 124009, 124010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_124008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_124001(context, evt)
	if evt.param1 ~= 124001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_124001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212207_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为124009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 124009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为124010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 124010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_124005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_124005(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213124, 4)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_124008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_124008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212209_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 124009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_124011(context, evt)
	-- 调用提示id为 1110327 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110327) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_124013(context, evt)
	if 124012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_124013(context, evt)
	-- 将configid为 124009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end