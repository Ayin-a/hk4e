-- 基础信息
local base_info = {
	group_id = 199001103
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
	{ config_id = 103005, gadget_id = 70220067, pos = { x = 295.269, y = 128.302, z = 167.097 }, rot = { x = 359.497, y = 0.231, z = 358.023 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 103013, gadget_id = 70500000, pos = { x = 290.101, y = 126.895, z = 168.816 }, rot = { x = 0.000, y = 0.000, z = 3.126 }, level = 20, point_type = 3011, persistent = true, area_id = 402 },
	{ config_id = 103014, gadget_id = 70500000, pos = { x = 293.602, y = 128.404, z = 166.637 }, rot = { x = 32.768, y = 0.000, z = 0.000 }, level = 20, point_type = 3011, persistent = true, area_id = 402 },
	{ config_id = 103015, gadget_id = 70500000, pos = { x = 295.463, y = 128.322, z = 167.361 }, rot = { x = 352.572, y = 359.218, z = 355.503 }, level = 20, point_type = 3011, persistent = true, area_id = 402 },
	{ config_id = 103017, gadget_id = 70500000, pos = { x = 294.966, y = 128.409, z = 167.092 }, rot = { x = 358.459, y = 0.543, z = 9.235 }, level = 20, point_type = 3011, persistent = true, area_id = 402 },
	{ config_id = 103018, gadget_id = 70500000, pos = { x = 295.455, y = 128.422, z = 166.886 }, rot = { x = 17.345, y = 244.859, z = 38.291 }, level = 20, point_type = 3011, persistent = true, area_id = 402 },
	{ config_id = 103019, gadget_id = 70500000, pos = { x = 295.640, y = 128.381, z = 167.133 }, rot = { x = 355.128, y = 0.000, z = 16.905 }, level = 20, point_type = 3011, persistent = true, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1103006, name = "ANY_GADGET_DIE_103006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_103006", action = "action_EVENT_ANY_GADGET_DIE_103006", trigger_count = 0 }
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
		gadgets = { 103005, 103013, 103014 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_103006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 103015, 103017, 103018, 103019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_GADGET_DIE_103006(context, evt)
	if 103005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_103006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001103, 2)
	
	return 0
end