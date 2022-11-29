-- 基础信息
local base_info = {
	group_id = 133220538
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
	{ config_id = 538001, gadget_id = 70500000, pos = { x = -1832.575, y = 206.512, z = -4214.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9260, isOneoff = true, area_id = 11 },
	{ config_id = 538002, gadget_id = 70710136, pos = { x = -1832.659, y = 206.545, z = -4214.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1538003, name = "GATHER_538003", event = EventType.EVENT_GATHER, source = "538001", condition = "", action = "action_EVENT_GATHER_538003" }
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
		gadgets = { 538001, 538002 },
		regions = { },
		triggers = { "GATHER_538003" },
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
function action_EVENT_GATHER_538003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220538, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end