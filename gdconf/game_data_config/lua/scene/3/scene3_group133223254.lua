-- 基础信息
local base_info = {
	group_id = 133223254
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 254001, monster_id = 20060301, pos = { x = -6153.876, y = 216.869, z = -2818.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 254002, monster_id = 20060301, pos = { x = -6149.306, y = 217.341, z = -2818.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 254004, gadget_id = 70500000, pos = { x = -6152.149, y = 220.608, z = -2816.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1254006, name = "GATHER_254006", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_254006", action = "action_EVENT_GATHER_254006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 254005, monster_id = 20060301, pos = { x = -6149.764, y = 217.893, z = -2815.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 7, area_id = 18 }
	}
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
		gadgets = { 254004 },
		regions = { },
		triggers = { "GATHER_254006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 254001, 254002 },
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
function condition_EVENT_GATHER_254006(context, evt)
	if 254004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_254006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223254, 2)
	
	return 0
end