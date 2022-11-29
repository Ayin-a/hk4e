-- 基础信息
local base_info = {
	group_id = 133209047
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
	{ config_id = 47001, gadget_id = 70500000, pos = { x = -2589.612, y = 203.060, z = -3741.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9259, isOneoff = true, area_id = 11 },
	{ config_id = 47002, gadget_id = 70710136, pos = { x = -2589.540, y = 203.052, z = -3741.731 }, rot = { x = 0.000, y = 114.462, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1047003, name = "GATHER_47003", event = EventType.EVENT_GATHER, source = "47001", condition = "", action = "action_EVENT_GATHER_47003" }
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
	end_suite = 2,
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
		gadgets = { 47001, 47002 },
		regions = { },
		triggers = { "GATHER_47003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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

-- 触发操作
function action_EVENT_GATHER_47003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209047, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end