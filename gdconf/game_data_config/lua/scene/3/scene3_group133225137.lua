-- 基础信息
local base_info = {
	group_id = 133225137
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 137003, monster_id = 26010301, pos = { x = -6482.158, y = 216.408, z = -2443.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "骗骗花", isOneoff = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 137004, monster_id = 26010301, pos = { x = -6487.518, y = 215.848, z = -2445.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "骗骗花", isOneoff = true, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 137001, gadget_id = 70500000, pos = { x = -6483.073, y = 223.393, z = -2448.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1137002, name = "GATHER_137002", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_137002", action = "action_EVENT_GATHER_137002" }
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
		gadgets = { 137001 },
		regions = { },
		triggers = { "GATHER_137002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 137003, 137004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_137002(context, evt)
	if 137001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_137002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225137, 2)
	
	return 0
end