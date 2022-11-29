-- 基础信息
local base_info = {
	group_id = 133212610
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
	-- 防止group被卸载
	{ config_id = 610001, gadget_id = 70290196, pos = { x = -3648.612, y = 250.750, z = -2177.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 610002, shape = RegionShape.SPHERE, radius = 1024, pos = { x = -3649.238, y = 250.034, z = -2175.638 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1610002, name = "ENTER_REGION_610002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_610002" }
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
		gadgets = { 610001 },
		regions = { 610002 },
		triggers = { "ENTER_REGION_610002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_610002(context, evt)
	ScriptLib.PrintContextLog(context,"## 补丁：删除残留天气")
	ScriptLib.SetWeatherAreaState(context, 3151, 0) 
	return 0
end