-- 基础信息
local base_info = {
	group_id = 133302242
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 242002, monster_id = 28010301, pos = { x = -652.266, y = 102.800, z = 2316.948 }, rot = { x = 0.000, y = 106.847, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 242003, monster_id = 28010301, pos = { x = -653.545, y = 102.723, z = 2302.662 }, rot = { x = 0.000, y = 106.847, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 242004, monster_id = 28010101, pos = { x = -650.310, y = 102.800, z = 2293.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 242005, monster_id = 28010101, pos = { x = -648.412, y = 102.757, z = 2279.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 242007, monster_id = 28010203, pos = { x = -581.209, y = 102.800, z = 2281.436 }, rot = { x = 0.000, y = 133.350, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 242008, monster_id = 28010203, pos = { x = -558.997, y = 102.800, z = 2279.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 242011, monster_id = 28010301, pos = { x = -524.460, y = 102.800, z = 2305.038 }, rot = { x = 0.000, y = 224.599, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 242012, monster_id = 28010301, pos = { x = -517.174, y = 102.800, z = 2296.075 }, rot = { x = 0.000, y = 224.599, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 242013, monster_id = 28010301, pos = { x = -521.898, y = 102.800, z = 2246.123 }, rot = { x = 0.000, y = 224.599, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 242014, monster_id = 28040101, pos = { x = -605.059, y = 101.666, z = 2280.351 }, rot = { x = 0.000, y = 82.111, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 24 },
	{ config_id = 242015, monster_id = 28040101, pos = { x = -610.596, y = 101.666, z = 2278.324 }, rot = { x = 0.000, y = 32.111, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 24 },
	{ config_id = 242017, monster_id = 28010203, pos = { x = -555.334, y = 102.800, z = 2351.492 }, rot = { x = 0.000, y = 237.313, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 242018, monster_id = 28010203, pos = { x = -611.648, y = 102.800, z = 2302.726 }, rot = { x = 0.000, y = 237.313, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 242021, monster_id = 28040102, pos = { x = -608.347, y = 101.666, z = 2287.518 }, rot = { x = 0.000, y = 32.833, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 24 },
	{ config_id = 242022, monster_id = 28040102, pos = { x = -619.555, y = 101.666, z = 2266.992 }, rot = { x = 0.000, y = 6.833, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 24 },
	{ config_id = 242024, monster_id = 28010203, pos = { x = -678.313, y = 102.800, z = 2277.632 }, rot = { x = 0.000, y = 216.812, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 242025, monster_id = 28010203, pos = { x = -674.364, y = 102.800, z = 2303.101 }, rot = { x = 0.000, y = 282.968, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1242001, name = "QUEST_START_242001", event = EventType.EVENT_QUEST_START, source = "7306110", condition = "", action = "action_EVENT_QUEST_START_242001" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 242006, monster_id = 28010101, pos = { x = -651.781, y = 102.800, z = 2268.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 242009, monster_id = 28010203, pos = { x = -575.014, y = 102.800, z = 2306.177 }, rot = { x = 0.000, y = 189.342, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 242010, monster_id = 28010301, pos = { x = -549.986, y = 102.800, z = 2319.223 }, rot = { x = 0.000, y = 224.599, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 242016, monster_id = 28010201, pos = { x = -566.060, y = 102.800, z = 2311.957 }, rot = { x = 0.000, y = 328.309, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 242019, monster_id = 28040101, pos = { x = -601.575, y = 101.666, z = 2288.542 }, rot = { x = 0.000, y = 65.111, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 24 },
		{ config_id = 242020, monster_id = 28040102, pos = { x = -596.754, y = 101.666, z = 2296.779 }, rot = { x = 0.000, y = 68.833, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 24 },
		{ config_id = 242023, monster_id = 28010203, pos = { x = -686.823, y = 102.800, z = 2293.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_242001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 242002, 242003, 242004, 242005, 242007, 242008, 242011, 242012, 242013, 242014, 242015, 242017, 242018, 242021, 242022, 242024, 242025 },
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
function action_EVENT_QUEST_START_242001(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302242, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end