-- 基础信息
local base_info = {
	group_id = 133309729
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 729003, monster_id = 26090201, pos = { x = -2678.306, y = -12.044, z = 5760.774 }, rot = { x = 0.000, y = 246.210, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 729001, gadget_id = 70500000, pos = { x = -2678.468, y = -12.024, z = 5760.659 }, rot = { x = 13.397, y = 2.214, z = 350.910 }, level = 32, point_type = 2045, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1729002, name = "GATHER_729002", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_729002", action = "action_EVENT_GATHER_729002" }
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
		gadgets = { 729001 },
		regions = { },
		triggers = { "GATHER_729002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 729003 },
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
function condition_EVENT_GATHER_729002(context, evt)
	if 729001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_729002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309729, 2)
	
	return 0
end