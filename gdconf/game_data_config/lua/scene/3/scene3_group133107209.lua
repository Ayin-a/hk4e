-- 基础信息
local base_info = {
	group_id = 133107209
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
	{ config_id = 209001, gadget_id = 70710136, pos = { x = -653.780, y = 222.397, z = 244.413 }, rot = { x = 0.000, y = 349.753, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 209003, gadget_id = 70710615, pos = { x = -654.089, y = 222.460, z = 243.778 }, rot = { x = 0.000, y = 296.855, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 209010, gadget_id = 70710590, pos = { x = -653.923, y = 222.440, z = 244.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 209011, gadget_id = 70710589, pos = { x = -654.409, y = 222.462, z = 244.339 }, rot = { x = 0.000, y = 276.507, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1209002, name = "QUEST_START_209002", event = EventType.EVENT_QUEST_START, source = "4003709", condition = "", action = "action_EVENT_QUEST_START_209002" }
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
		gadgets = { 209003, 209010, 209011 },
		regions = { },
		triggers = { "QUEST_START_209002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 209001 },
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
function action_EVENT_QUEST_START_209002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107209, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end