-- 基础信息
local base_info = {
	group_id = 133008285
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
	{ config_id = 285002, gadget_id = 70220050, pos = { x = 1536.042, y = 272.330, z = -843.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 285003, gadget_id = 70220051, pos = { x = 1536.182, y = 272.397, z = -843.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 285004, gadget_id = 70220051, pos = { x = 1535.596, y = 272.326, z = -843.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 285005, gadget_id = 70300092, pos = { x = 1536.807, y = 272.605, z = -845.637 }, rot = { x = 0.000, y = 261.651, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 285006, gadget_id = 70300094, pos = { x = 1546.764, y = 270.685, z = -864.002 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 285007, gadget_id = 70300094, pos = { x = 1546.845, y = 270.591, z = -865.471 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 285008, gadget_id = 70300105, pos = { x = 1551.128, y = 269.314, z = -872.568 }, rot = { x = 0.000, y = 107.691, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 285009, gadget_id = 70220052, pos = { x = 1547.260, y = 270.740, z = -862.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 285010, gadget_id = 70220052, pos = { x = 1546.747, y = 270.728, z = -862.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 285011, gadget_id = 70220050, pos = { x = 1546.840, y = 270.766, z = -861.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 285012, gadget_id = 70220051, pos = { x = 1546.828, y = 270.968, z = -861.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 285013, gadget_id = 70220051, pos = { x = 1546.278, y = 270.999, z = -861.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 285001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1531.554, y = 271.338, z = -862.816 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1285001, name = "ENTER_REGION_285001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_285001", action = "action_EVENT_ENTER_REGION_285001" }
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
		gadgets = { 285002, 285003, 285004, 285005, 285006, 285007, 285008, 285009, 285010, 285011, 285012, 285013 },
		regions = { 285001 },
		triggers = { "ENTER_REGION_285001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_285001(context, evt)
	if evt.param1 ~= 285001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_285001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121102") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end