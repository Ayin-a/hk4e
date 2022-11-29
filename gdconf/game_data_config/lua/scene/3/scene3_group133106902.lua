-- 基础信息
local base_info = {
	group_id = 133106902
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 902005, monster_id = 24010101, pos = { x = -204.188, y = 234.817, z = 1232.547 }, rot = { x = 0.000, y = 132.798, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 902001, gadget_id = 70710202, pos = { x = -129.005, y = 224.088, z = 1256.612 }, rot = { x = 0.000, y = 91.425, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 902002, gadget_id = 70710202, pos = { x = -118.828, y = 224.859, z = 1258.729 }, rot = { x = 0.000, y = 59.940, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 902003, gadget_id = 70710202, pos = { x = -168.108, y = 234.589, z = 1245.260 }, rot = { x = 0.000, y = 56.597, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 902004, gadget_id = 70710202, pos = { x = -124.132, y = 223.920, z = 1256.811 }, rot = { x = 0.000, y = 79.007, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 902010, gadget_id = 70710202, pos = { x = -103.254, y = 227.469, z = 1264.374 }, rot = { x = 0.000, y = 32.961, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 902011, gadget_id = 70710202, pos = { x = -100.307, y = 227.452, z = 1269.826 }, rot = { x = 0.000, y = 31.312, z = 0.000 }, level = 32, area_id = 6 },
	{ config_id = 902012, gadget_id = 70710202, pos = { x = -151.945, y = 231.533, z = 1248.872 }, rot = { x = 6.226, y = 71.129, z = 5.482 }, level = 32, area_id = 8 },
	{ config_id = 902013, gadget_id = 70710202, pos = { x = -143.345, y = 228.758, z = 1254.050 }, rot = { x = 0.000, y = 66.921, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 902014, gadget_id = 70710202, pos = { x = -149.144, y = 230.766, z = 1251.383 }, rot = { x = 0.000, y = 58.020, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 902015, gadget_id = 70710202, pos = { x = -175.498, y = 234.589, z = 1237.225 }, rot = { x = 0.000, y = 52.832, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 902016, gadget_id = 70710202, pos = { x = -181.816, y = 234.589, z = 1233.545 }, rot = { x = 0.000, y = 62.089, z = 0.000 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 902006, shape = RegionShape.SPHERE, radius = 15, pos = { x = -115.093, y = 226.247, z = 1264.131 }, area_id = 8 },
	{ config_id = 902007, shape = RegionShape.SPHERE, radius = 8, pos = { x = -148.758, y = 230.666, z = 1252.845 }, area_id = 8 },
	{ config_id = 902008, shape = RegionShape.SPHERE, radius = 10, pos = { x = -175.770, y = 234.589, z = 1239.574 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1902006, name = "ENTER_REGION_902006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_902006", action = "action_EVENT_ENTER_REGION_902006", trigger_count = 0 },
	{ config_id = 1902007, name = "ENTER_REGION_902007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_902007", action = "action_EVENT_ENTER_REGION_902007", trigger_count = 0 },
	{ config_id = 1902008, name = "ENTER_REGION_902008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_902008", action = "action_EVENT_ENTER_REGION_902008", trigger_count = 0 },
	{ config_id = 1902009, name = "ANY_MONSTER_DIE_902009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_902009", action = "action_EVENT_ANY_MONSTER_DIE_902009", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 902005 },
		gadgets = { 902001, 902002, 902003, 902004, 902010, 902011, 902012, 902013, 902014, 902015, 902016 },
		regions = { 902006, 902007, 902008 },
		triggers = { "ENTER_REGION_902006", "ENTER_REGION_902007", "ENTER_REGION_902008", "ANY_MONSTER_DIE_902009" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_902006(context, evt)
	if evt.param1 ~= 902006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_902006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310690201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_902007(context, evt)
	if evt.param1 ~= 902007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_902007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310690202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_902008(context, evt)
	if evt.param1 ~= 902008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_902008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310690203") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_902009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_902009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310690204") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end