-- 基础信息
local base_info = {
	group_id = 133309661
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 661004, monster_id = 26090901, pos = { x = -2650.701, y = -16.350, z = 5745.218 }, rot = { x = 0.000, y = 3.615, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 661005, monster_id = 26090901, pos = { x = -2648.933, y = -15.862, z = 5748.200 }, rot = { x = 0.000, y = 251.466, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 661001, gadget_id = 70500000, pos = { x = -2653.355, y = -15.227, z = 5746.264 }, rot = { x = 338.418, y = 2.525, z = 346.809 }, level = 32, point_type = 2045, area_id = 27 },
	{ config_id = 661002, gadget_id = 70500000, pos = { x = -2653.656, y = -14.793, z = 5746.967 }, rot = { x = 354.274, y = 244.918, z = 32.226 }, level = 32, point_type = 2045, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1661003, name = "GATHER_661003", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_661003", action = "action_EVENT_GATHER_661003" }
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
		gadgets = { 661001, 661002 },
		regions = { },
		triggers = { "GATHER_661003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 661004, 661005 },
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
function condition_EVENT_GATHER_661003(context, evt)
	if 661001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_661003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309661, 2)
	
	return 0
end