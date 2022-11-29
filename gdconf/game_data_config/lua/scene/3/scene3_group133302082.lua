-- 基础信息
local base_info = {
	group_id = 133302082
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
	{ config_id = 82001, npc_id = 12729, pos = { x = -520.057, y = 233.692, z = 2734.891 }, rot = { x = 0.000, y = 354.690, z = 0.000 }, area_id = 24 },
	{ config_id = 82002, npc_id = 12729, pos = { x = -425.413, y = 237.316, z = 2718.246 }, rot = { x = 0.000, y = 260.334, z = 0.000 }, area_id = 24 },
	{ config_id = 82003, npc_id = 12729, pos = { x = -460.792, y = 238.003, z = 2680.868 }, rot = { x = 0.000, y = 228.062, z = 0.000 }, area_id = 24 }
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 82004, shape = RegionShape.SPHERE, radius = 18, pos = { x = -527.202, y = 229.802, z = 2734.891 }, area_id = 24 },
	{ config_id = 82005, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = -423.480, y = 237.089, z = 2719.470 }, area_id = 24 },
	{ config_id = 82006, shape = RegionShape.SPHERE, radius = 25, pos = { x = -457.323, y = 232.748, z = 2667.447 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1082004, name = "ENTER_REGION_82004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82004", action = "action_EVENT_ENTER_REGION_82004" },
	{ config_id = 1082005, name = "ENTER_REGION_82005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82005", action = "action_EVENT_ENTER_REGION_82005" },
	{ config_id = 1082006, name = "ENTER_REGION_82006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82006", action = "action_EVENT_ENTER_REGION_82006" }
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
	rand_suite = true
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
		regions = { 82004 },
		triggers = { "ENTER_REGION_82004" },
		npcs = { 82001 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 82005 },
		triggers = { "ENTER_REGION_82005" },
		npcs = { 82002 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 82006 },
		triggers = { "ENTER_REGION_82006" },
		npcs = { 82003 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_82004(context, evt)
	if evt.param1 ~= 82004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_82004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q230030601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_82005(context, evt)
	if evt.param1 ~= 82005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_82005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q230030601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_82006(context, evt)
	if evt.param1 ~= 82006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_82006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q230030601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end