-- 基础信息
local base_info = {
	group_id = 177002003
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
	{ config_id = 3001, gadget_id = 70330144, pos = { x = 1491.727, y = 193.646, z = 840.410 }, rot = { x = 0.000, y = 327.734, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 3002, gadget_id = 70330144, pos = { x = 1485.746, y = 192.819, z = 837.021 }, rot = { x = 0.000, y = 324.893, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 3003, gadget_id = 70690001, pos = { x = 1430.187, y = 199.035, z = 826.195 }, rot = { x = 13.734, y = 269.970, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 3004, gadget_id = 70690001, pos = { x = 1418.530, y = 196.186, z = 826.189 }, rot = { x = 13.735, y = 269.970, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 3005, gadget_id = 70690001, pos = { x = 1406.873, y = 193.337, z = 826.183 }, rot = { x = 13.903, y = 270.161, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 3006, gadget_id = 70690001, pos = { x = 1395.228, y = 190.454, z = 826.215 }, rot = { x = 18.758, y = 275.887, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 3007, gadget_id = 70690001, pos = { x = 1383.925, y = 186.595, z = 827.381 }, rot = { x = 18.758, y = 275.887, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 3008, gadget_id = 70690001, pos = { x = 1372.622, y = 182.737, z = 828.546 }, rot = { x = 18.758, y = 275.887, z = 0.000 }, level = 1, area_id = 210 }
}

-- 区域
regions = {
	-- 移动平台教学
	{ config_id = 3009, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1498.652, y = 196.034, z = 845.032 }, area_id = 210 }
}

-- 触发器
triggers = {
	-- 移动平台教学
	{ config_id = 1003009, name = "ENTER_REGION_3009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3009", action = "action_EVENT_ENTER_REGION_3009", trigger_count = 0 }
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
		gadgets = { 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008 },
		regions = { 3009 },
		triggers = { "ENTER_REGION_3009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3009(context, evt)
	if evt.param1 ~= 3009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3009(context, evt)
	-- 显示id为6048的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,164,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end