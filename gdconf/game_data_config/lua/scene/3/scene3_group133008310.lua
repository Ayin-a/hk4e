-- 基础信息
local base_info = {
	group_id = 133008310
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 310002, monster_id = 22010301, pos = { x = 1510.186, y = 266.955, z = -691.596 }, rot = { x = 0.000, y = 273.020, z = 0.000 }, level = 30, drop_tag = "深渊法师", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 310004, gadget_id = 70220045, pos = { x = 1496.476, y = 266.100, z = -691.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 310005, gadget_id = 70220045, pos = { x = 1493.344, y = 266.100, z = -696.985 }, rot = { x = 0.000, y = 259.966, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 310006, gadget_id = 70220045, pos = { x = 1504.445, y = 266.100, z = -657.262 }, rot = { x = 0.000, y = 354.968, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 310003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1508.746, y = 266.491, z = -693.541 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1310003, name = "ENTER_REGION_310003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_310003", action = "action_EVENT_ENTER_REGION_310003" }
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
		gadgets = { 310004, 310005, 310006 },
		regions = { 310003 },
		triggers = { "ENTER_REGION_310003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_310003(context, evt)
	if evt.param1 ~= 310003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_310003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 310002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "701020201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end