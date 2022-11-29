-- 基础信息
local base_info = {
	group_id = 133210203
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
	{ config_id = 203001, gadget_id = 70710413, pos = { x = -4064.545, y = 201.422, z = -658.312 }, rot = { x = 0.381, y = 276.065, z = 356.744 }, level = 1, area_id = 17 },
	{ config_id = 203002, gadget_id = 70710414, pos = { x = -4066.220, y = 201.002, z = -653.858 }, rot = { x = 0.000, y = 97.692, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203003, gadget_id = 70710414, pos = { x = -4067.288, y = 201.382, z = -661.996 }, rot = { x = 0.000, y = 102.289, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203004, gadget_id = 70710416, pos = { x = -4084.421, y = 200.383, z = -670.768 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 17, is_enable_interact = false },
	{ config_id = 203005, gadget_id = 70300087, pos = { x = -4078.115, y = 200.587, z = -657.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203006, gadget_id = 70710398, pos = { x = -4064.439, y = 201.458, z = -657.029 }, rot = { x = 0.000, y = 226.903, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203007, gadget_id = 70220065, pos = { x = -4069.811, y = 202.386, z = -671.553 }, rot = { x = 0.000, y = 130.897, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 17 },
	{ config_id = 203008, gadget_id = 70220065, pos = { x = -4070.286, y = 202.462, z = -673.540 }, rot = { x = 0.000, y = 130.897, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 17 },
	{ config_id = 203009, gadget_id = 70220066, pos = { x = -4070.179, y = 202.061, z = -669.740 }, rot = { x = 0.000, y = 130.897, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 17 },
	{ config_id = 203011, gadget_id = 70300090, pos = { x = -4063.340, y = 200.283, z = -649.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203012, gadget_id = 70300090, pos = { x = -4069.361, y = 200.247, z = -686.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203013, gadget_id = 70300106, pos = { x = -4082.645, y = 200.164, z = -661.443 }, rot = { x = 0.000, y = 13.131, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203014, gadget_id = 70300106, pos = { x = -4083.032, y = 200.185, z = -664.351 }, rot = { x = 0.000, y = 12.301, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203015, gadget_id = 70300106, pos = { x = -4083.280, y = 200.211, z = -667.243 }, rot = { x = 0.000, y = 10.874, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203016, gadget_id = 70350007, pos = { x = -4083.873, y = 200.027, z = -663.155 }, rot = { x = 0.000, y = 280.141, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203017, gadget_id = 70350007, pos = { x = -4082.678, y = 199.939, z = -658.918 }, rot = { x = 0.000, y = 115.203, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203018, gadget_id = 70300085, pos = { x = -4078.205, y = 200.127, z = -657.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203019, gadget_id = 70710409, pos = { x = -4069.739, y = 200.000, z = -647.530 }, rot = { x = 0.000, y = 54.455, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203020, gadget_id = 70710416, pos = { x = -4065.538, y = 201.798, z = -663.731 }, rot = { x = 0.000, y = 91.446, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203021, gadget_id = 70350007, pos = { x = -4084.458, y = 199.957, z = -667.464 }, rot = { x = 0.000, y = 93.103, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203022, gadget_id = 70220017, pos = { x = -4082.420, y = 200.214, z = -668.688 }, rot = { x = 0.000, y = 95.900, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203023, gadget_id = 70710397, pos = { x = -4065.113, y = 201.379, z = -656.754 }, rot = { x = 0.000, y = 226.903, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203024, gadget_id = 70220062, pos = { x = -4065.585, y = 201.902, z = -665.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17, is_enable_interact = false },
	{ config_id = 203025, gadget_id = 70220063, pos = { x = -4066.039, y = 201.818, z = -666.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17, is_enable_interact = false },
	{ config_id = 203026, gadget_id = 70220063, pos = { x = -4066.258, y = 201.774, z = -665.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17, is_enable_interact = false },
	{ config_id = 203027, gadget_id = 70220064, pos = { x = -4066.231, y = 201.756, z = -665.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17, is_enable_interact = false },
	{ config_id = 203028, gadget_id = 70310009, pos = { x = -4067.743, y = 201.044, z = -657.790 }, rot = { x = 0.152, y = 274.407, z = 356.709 }, level = 1, area_id = 17 },
	{ config_id = 203029, gadget_id = 70300081, pos = { x = -4079.273, y = 199.767, z = -653.956 }, rot = { x = 0.000, y = 251.813, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 203030, gadget_id = 71700226, pos = { x = -4067.184, y = 200.732, z = -645.748 }, rot = { x = 2.609, y = 320.193, z = 16.461 }, level = 1, area_id = 17, is_enable_interact = false }
}

-- 区域
regions = {
	{ config_id = 203010, shape = RegionShape.SPHERE, radius = 30, pos = { x = -4072.606, y = 202.086, z = -674.228 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1203010, name = "ENTER_REGION_203010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_203010", action = "action_EVENT_ENTER_REGION_203010" }
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
		gadgets = { 203001, 203002, 203003, 203004, 203005, 203006, 203007, 203008, 203009, 203011, 203012, 203013, 203014, 203015, 203016, 203017, 203018, 203019, 203020, 203021, 203022, 203023, 203024, 203025, 203026, 203027, 203028, 203029, 203030 },
		regions = { 203010 },
		triggers = { "ENTER_REGION_203010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_203010(context, evt)
	if evt.param1 ~= 203010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_203010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end