-- 基础信息
local base_info = {
	group_id = 133001388
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 388001, monster_id = 21020201, pos = { x = 1712.054, y = 271.568, z = -1089.438 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 388002, gadget_id = 70220014, pos = { x = 1699.205, y = 273.116, z = -1095.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 388003, gadget_id = 70220014, pos = { x = 1698.537, y = 273.200, z = -1094.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 388005, gadget_id = 70220014, pos = { x = 1700.430, y = 272.963, z = -1094.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 388006, gadget_id = 70220013, pos = { x = 1696.525, y = 273.326, z = -1086.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 388007, gadget_id = 70220013, pos = { x = 1698.306, y = 273.105, z = -1085.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 388008, gadget_id = 70220013, pos = { x = 1714.050, y = 272.072, z = -1078.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 388009, gadget_id = 70220013, pos = { x = 1711.714, y = 272.571, z = -1076.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 388010, gadget_id = 70220013, pos = { x = 1715.022, y = 270.265, z = -1106.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 388011, gadget_id = 70220013, pos = { x = 1713.118, y = 270.527, z = -1106.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 388012, gadget_id = 70220013, pos = { x = 1714.777, y = 270.336, z = -1104.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1388004, name = "ANY_MONSTER_DIE_388004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_388004", action = "action_EVENT_ANY_MONSTER_DIE_388004" }
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
		monsters = { 388001 },
		gadgets = { 388002, 388003, 388005, 388006, 388007, 388008, 388009, 388010, 388011, 388012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_388004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_388004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133001388) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_388004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330013881") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end