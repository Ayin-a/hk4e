-- 基础信息
local base_info = {
	group_id = 133106446
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 446004, monster_id = 28040102, pos = { x = -571.791, y = 140.659, z = 1954.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 446001, gadget_id = 70380284, pos = { x = -574.700, y = 141.350, z = 1956.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 446003, gadget_id = 70360001, pos = { x = -570.514, y = 141.350, z = 1955.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1446002, name = "QUEST_START_446002", event = EventType.EVENT_QUEST_START, source = "7104422", condition = "", action = "action_EVENT_QUEST_START_446002", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 446005, monster_id = 28040102, pos = { x = -571.097, y = 140.659, z = 1959.912 }, rot = { x = 0.000, y = 283.267, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 19 }
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
		monsters = { 446004 },
		gadgets = { 446001 },
		regions = { },
		triggers = { "QUEST_START_446002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 446003 },
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
function action_EVENT_QUEST_START_446002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106446, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end