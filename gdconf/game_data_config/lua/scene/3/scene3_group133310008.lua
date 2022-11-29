-- 基础信息
local base_info = {
	group_id = 133310008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 25210502, pos = { x = -2724.690, y = 277.059, z = 4122.784 }, rot = { x = 0.000, y = 254.526, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 26 },
	{ config_id = 8002, monster_id = 25210302, pos = { x = -2729.419, y = 277.786, z = 4095.906 }, rot = { x = 0.000, y = 242.827, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9504, area_id = 26 },
	{ config_id = 8003, monster_id = 25210101, pos = { x = -2734.091, y = 279.867, z = 4121.851 }, rot = { x = 0.000, y = 104.184, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9002, area_id = 26 },
	{ config_id = 8006, monster_id = 25210201, pos = { x = -2709.462, y = 279.272, z = 4126.913 }, rot = { x = 0.000, y = 184.147, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8004, gadget_id = 70360001, pos = { x = -2752.341, y = 287.923, z = 4116.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008010, name = "QUEST_FINISH_8010", event = EventType.EVENT_QUEST_FINISH, source = "302107", condition = "", action = "action_EVENT_QUEST_FINISH_8010" }
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
		monsters = { 8001, 8002, 8003, 8006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 8004 },
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
function action_EVENT_QUEST_FINISH_8010(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310008, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end