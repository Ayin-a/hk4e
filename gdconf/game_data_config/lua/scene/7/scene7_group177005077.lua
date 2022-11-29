-- 基础信息
local base_info = {
	group_id = 177005077
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
	{ config_id = 77001, gadget_id = 70360001, pos = { x = 233.387, y = 325.547, z = 288.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 }
}

-- 区域
regions = {
	-- 离开区域失败任务
	{ config_id = 77002, shape = RegionShape.POLYGON, pos = { x = 236.824, y = 325.100, z = 285.912 }, height = 26.540, point_array = { { x = 231.165, y = 296.345 }, { x = 248.205, y = 283.068 }, { x = 241.066, y = 275.479 }, { x = 225.443, y = 287.935 } }, area_id = 210 },
	-- 进入区域流转任务
	{ config_id = 77006, shape = RegionShape.CUBIC, size = { x = 10.000, y = 1.000, z = 10.000 }, pos = { x = 240.118, y = 324.980, z = 281.795 }, area_id = 210 }
}

-- 触发器
triggers = {
	-- 离开区域失败任务
	{ config_id = 1077002, name = "LEAVE_REGION_77002", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_77002", action = "action_EVENT_LEAVE_REGION_77002", trigger_count = 0 },
	-- 进入区域流转任务
	{ config_id = 1077006, name = "ENTER_REGION_77006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_77006", action = "action_EVENT_ENTER_REGION_77006", trigger_count = 0 }
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
		gadgets = { 77001 },
		regions = { 77002, 77006 },
		triggers = { "LEAVE_REGION_77002", "ENTER_REGION_77006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_LEAVE_REGION_77002(context, evt)
	-- 判断是区域77002
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 77002 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_77002(context, evt)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "722760601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_77006(context, evt)
	if evt.param1 ~= 77006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_77006(context, evt)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7227606") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end