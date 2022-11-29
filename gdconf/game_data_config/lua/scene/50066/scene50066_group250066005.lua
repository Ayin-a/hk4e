-- 基础信息
local base_info = {
	group_id = 250066005
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
	{ config_id = 5001, gadget_id = 70710010, pos = { x = -84.611, y = -572.638, z = -176.351 }, rot = { x = 0.000, y = 175.667, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 5002, gadget_id = 70710010, pos = { x = -63.837, y = -573.893, z = -233.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 5003, gadget_id = 70710006, pos = { x = -64.187, y = -573.892, z = -232.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5004, gadget_id = 70710006, pos = { x = -70.840, y = -573.893, z = -220.469 }, rot = { x = 0.000, y = 175.848, z = 0.000 }, level = 1 },
	{ config_id = 5005, gadget_id = 70220024, pos = { x = -71.127, y = -573.839, z = -293.588 }, rot = { x = 0.000, y = 184.165, z = 0.000 }, level = 1 },
	{ config_id = 5007, gadget_id = 70900201, pos = { x = -68.960, y = -573.877, z = -246.629 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5006, shape = RegionShape.SPHERE, radius = 35, pos = { x = -69.710, y = -572.709, z = -275.110 } }
}

-- 触发器
triggers = {
	{ config_id = 1005006, name = "ENTER_REGION_5006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5006", action = "action_EVENT_ENTER_REGION_5006", trigger_count = 0 }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5001, 5002, 5003, 5004, 5005, 5007 },
		regions = { 5006 },
		triggers = { "ENTER_REGION_5006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5006(context, evt)
	if evt.param1 ~= 5006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2500660051") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 250066005, EntityType.GADGET, 5007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end