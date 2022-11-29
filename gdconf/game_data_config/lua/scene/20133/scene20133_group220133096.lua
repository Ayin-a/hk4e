-- 基础信息
local base_info = {
	group_id = 220133096
}

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
}

-- 区域
regions = {
	-- 进入虚无空间
	{ config_id = 96001, shape = RegionShape.POLYGON, pos = { x = 3754.250, y = 100.000, z = -684.583 }, height = 1400.000, point_array = { { x = 1286.766, y = 938.412 }, { x = 4943.040, y = 1483.597 }, { x = 6221.733, y = -1990.906 }, { x = 1948.328, y = -2852.763 } } },
	-- 进入山洞
	{ config_id = 96002, shape = RegionShape.SPHERE, radius = 350, pos = { x = 11.981, y = 276.589, z = 587.509 } }
}

-- 触发器
triggers = {
	-- 进入虚无空间
	{ config_id = 1096001, name = "ENTER_REGION_96001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_96001", action = "action_EVENT_ENTER_REGION_96001", trigger_count = 0 },
	-- 进入山洞
	{ config_id = 1096002, name = "ENTER_REGION_96002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_96002", action = "action_EVENT_ENTER_REGION_96002", trigger_count = 0 }
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
		regions = { 96001, 96002 },
		triggers = { "ENTER_REGION_96001", "ENTER_REGION_96002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_96001(context, evt)
	if evt.param1 ~= 96001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_96001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "PlayerEnterTransmitDoor") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_96002(context, evt)
	if evt.param1 ~= 96002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_96002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "PlayerBackToCave") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end