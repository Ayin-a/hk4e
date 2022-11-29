-- 基础信息
local base_info = {
	group_id = 133307007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[7002] = { config_id = 7002, monster_id = 24040201, pos = { x = -2152.017, y = 11.784, z = 5603.806 }, rot = { x = 0.000, y = 296.865, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5205, 5246 }, pose_id = 1004, area_id = 27, vision_level = VisionLevelType.VISION_LEVEL_NEARBY }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[7001] = { config_id = 7001, gadget_id = 70330454, pos = { x = -2161.677, y = 13.047, z = 5608.472 }, rot = { x = 0.000, y = 286.564, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[7004] = { config_id = 7004, gadget_id = 70330432, pos = { x = -2135.886, y = 13.173, z = 5598.993 }, rot = { x = 355.069, y = 226.141, z = 18.478 }, level = 32, area_id = 27 },
	[7006] = { config_id = 7006, gadget_id = 70330432, pos = { x = -2150.714, y = 12.288, z = 5598.895 }, rot = { x = 0.000, y = 300.040, z = 339.658 }, level = 32, area_id = 27 },
	[7007] = { config_id = 7007, gadget_id = 70330432, pos = { x = -2137.238, y = 13.665, z = 5589.222 }, rot = { x = 314.322, y = 66.118, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	[7005] = { config_id = 7005, shape = RegionShape.CUBIC, size = { x = 25.000, y = 15.000, z = 25.000 }, pos = { x = -2174.622, y = 12.425, z = 5604.325 }, area_id = 27 },
	[7009] = { config_id = 7009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2152.017, y = 11.784, z = 5603.806 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1007005, name = "ENTER_REGION_7005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7005", action = "action_EVENT_ENTER_REGION_7005", trigger_count = 0 },
	{ config_id = 1007009, name = "ENTER_REGION_7009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7009", action = "action_EVENT_ENTER_REGION_7009", trigger_count = 0 },
	{ config_id = 1007010, name = "VARIABLE_CHANGE_7010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7010", action = "action_EVENT_VARIABLE_CHANGE_7010" }
}

-- 变量
variables = {
	{ config_id = 2, name = "destroy", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1007003, name = "ANY_GADGET_DIE_7003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_7003", action = "action_EVENT_ANY_GADGET_DIE_7003" },
		{ config_id = 1007008, name = "GROUP_LOAD_7008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_7008", action = "action_EVENT_GROUP_LOAD_7008", trigger_count = 0 }
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
		monsters = { 7002 },
		gadgets = { 7001, 7004, 7006, 7007 },
		regions = { 7005, 7009 },
		triggers = { "ENTER_REGION_7005", "ENTER_REGION_7009", "VARIABLE_CHANGE_7010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_7005(context, evt)
	if evt.param1 ~= 7005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7005(context, evt)
	ScriptLib.SetMonsterBattleByGroup(context, 7002, 133307007)
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 7001 })
		
	ScriptLib.SetGroupVariableValue(context, "destroy", 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7009(context, evt)
	if evt.param1 ~= 7009 then return false end
	
	-- 判断变量"destroy"为1
	if ScriptLib.GetGroupVariableValue(context, "destroy") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7009(context, evt)
	-- 通知groupid为133307007中,configid为：7002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 7002, 133307007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"destroy"为1
	if ScriptLib.GetGroupVariableValue(context, "destroy") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7010(context, evt)
	-- 调用提示id为 1000060018 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end