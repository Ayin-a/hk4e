-- 基础信息
local base_info = {
	group_id = 133309337
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 337001, monster_id = 26090201, pos = { x = -2252.074, y = -96.272, z = 6015.778 }, rot = { x = 0.000, y = 43.999, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 337002, gadget_id = 70500000, pos = { x = -2251.749, y = -96.812, z = 6015.934 }, rot = { x = 7.763, y = 323.852, z = 337.427 }, level = 32, point_type = 2045, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1337003, name = "GATHER_337003", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_337003", action = "action_EVENT_GATHER_337003" }
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
		gadgets = { 337002 },
		regions = { },
		triggers = { "GATHER_337003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 337001 },
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
function condition_EVENT_GATHER_337003(context, evt)
	if 337002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_337003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309337, 2)
	
	return 0
end