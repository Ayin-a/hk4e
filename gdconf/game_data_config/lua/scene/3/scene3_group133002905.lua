-- 基础信息
local base_info = {
	group_id = 133002905
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
	{ config_id = 905001, gadget_id = 70220015, pos = { x = 1788.444, y = 222.219, z = -417.957 }, rot = { x = 88.318, y = 250.179, z = 179.995 }, level = 10, area_id = 3 },
	{ config_id = 905002, gadget_id = 70220015, pos = { x = 1789.834, y = 221.405, z = -417.346 }, rot = { x = 273.225, y = 180.000, z = 180.000 }, level = 10, area_id = 3 },
	{ config_id = 905003, gadget_id = 70220016, pos = { x = 1789.428, y = 222.114, z = -419.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 905004, gadget_id = 70220015, pos = { x = 1791.552, y = 222.638, z = -399.292 }, rot = { x = 0.000, y = 66.064, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 905005, gadget_id = 70220015, pos = { x = 1790.940, y = 221.837, z = -400.007 }, rot = { x = 275.220, y = 163.316, z = 180.000 }, level = 10, area_id = 3 },
	{ config_id = 905006, gadget_id = 70220016, pos = { x = 1789.651, y = 222.681, z = -399.737 }, rot = { x = 19.162, y = 50.281, z = 344.777 }, level = 10, area_id = 3 },
	{ config_id = 905007, gadget_id = 70220016, pos = { x = 1791.914, y = 222.425, z = -401.604 }, rot = { x = 2.944, y = 334.163, z = 269.870 }, level = 10, area_id = 3 },
	{ config_id = 905008, gadget_id = 70220015, pos = { x = 1778.928, y = 221.705, z = -415.301 }, rot = { x = 271.706, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 905009, gadget_id = 70220015, pos = { x = 1778.885, y = 222.675, z = -416.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 905010, gadget_id = 70220015, pos = { x = 1778.655, y = 222.804, z = -417.927 }, rot = { x = 27.654, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 905011, gadget_id = 70220016, pos = { x = 1780.211, y = 221.863, z = -416.455 }, rot = { x = 272.278, y = 43.816, z = 180.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1905012, name = "ANY_GADGET_DIE_905012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_905012", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 905001, 905002, 905003, 905004, 905005, 905006, 905007, 905008, 905009, 905010, 905011 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_905012" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_905012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330029051") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end