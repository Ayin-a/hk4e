-- 基础信息
local base_info = {
	group_id = 133309057
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 57003, monster_id = 26090901, pos = { x = -2600.588, y = -2.430, z = 5876.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 57004, monster_id = 26090901, pos = { x = -2595.304, y = -4.302, z = 5881.520 }, rot = { x = 0.000, y = 198.426, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 57001, gadget_id = 70500000, pos = { x = -2598.414, y = -1.715, z = 5878.409 }, rot = { x = 2.628, y = 1.727, z = 16.060 }, level = 32, point_type = 2045, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1057002, name = "GATHER_57002", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_57002", action = "action_EVENT_GATHER_57002" }
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
		gadgets = { 57001 },
		regions = { },
		triggers = { "GATHER_57002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 57003, 57004 },
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
function condition_EVENT_GATHER_57002(context, evt)
	if 57001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_57002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309057, 2)
	
	return 0
end