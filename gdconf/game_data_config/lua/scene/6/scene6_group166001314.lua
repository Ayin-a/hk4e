-- 基础信息
local base_info = {
	group_id = 166001314
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 314001, monster_id = 28010201, pos = { x = 932.263, y = 1020.708, z = 883.285 }, rot = { x = 0.000, y = 143.903, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 314003, gadget_id = 70500000, pos = { x = 938.539, y = 1015.249, z = 918.191 }, rot = { x = 357.456, y = 108.839, z = 341.340 }, level = 36, point_type = 1002, area_id = 300 },
	{ config_id = 314004, gadget_id = 70500000, pos = { x = 945.558, y = 1014.838, z = 907.907 }, rot = { x = 337.741, y = 163.008, z = 8.306 }, level = 36, point_type = 1002, area_id = 300 },
	{ config_id = 314005, gadget_id = 70500000, pos = { x = 943.189, y = 1020.217, z = 888.526 }, rot = { x = 4.156, y = 323.368, z = 349.251 }, level = 36, point_type = 1002, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 314002, shape = RegionShape.SPHERE, radius = 8, pos = { x = 933.796, y = 1020.298, z = 887.578 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1314002, name = "ENTER_REGION_314002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_314002" }
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
		gadgets = { 314003, 314004, 314005 },
		regions = { 314002 },
		triggers = { "ENTER_REGION_314002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_314002(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 314001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end