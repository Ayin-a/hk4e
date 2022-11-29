-- 基础信息
local base_info = {
	group_id = 133308344
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
	{ config_id = 344001, gadget_id = 70220103, pos = { x = -1446.447, y = 83.842, z = 4711.545 }, rot = { x = 0.000, y = 22.024, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 344002, gadget_id = 70220103, pos = { x = -1449.471, y = 83.842, z = 4687.392 }, rot = { x = 0.000, y = 22.024, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 344003, gadget_id = 70220103, pos = { x = -1460.779, y = 80.785, z = 4663.331 }, rot = { x = 0.000, y = 22.024, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 344004, gadget_id = 70220103, pos = { x = -1475.275, y = 78.736, z = 4639.783 }, rot = { x = 0.000, y = 22.024, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 344005, gadget_id = 70220103, pos = { x = -1481.710, y = 66.342, z = 4610.187 }, rot = { x = 0.000, y = 22.024, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 344006, gadget_id = 70220103, pos = { x = -1460.250, y = 70.561, z = 4558.983 }, rot = { x = 0.000, y = 22.024, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 344007, gadget_id = 70220103, pos = { x = -1479.071, y = 82.758, z = 4516.830 }, rot = { x = 0.000, y = 22.024, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1344008, name = "QUEST_FINISH_344008", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_EVENT_QUEST_FINISH_344008", trigger_count = 0, tag = "7305520" }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_344008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 344001, 344002, 344003, 344004, 344005, 344006, 344007 },
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
function action_EVENT_QUEST_FINISH_344008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308344, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end