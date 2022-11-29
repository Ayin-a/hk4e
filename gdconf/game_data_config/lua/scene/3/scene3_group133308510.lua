-- 基础信息
local base_info = {
	group_id = 133308510
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 510001, monster_id = 25210302, pos = { x = -2083.152, y = 169.255, z = 4425.843 }, rot = { x = 0.000, y = 51.976, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 510002, monster_id = 28060901, pos = { x = -2078.894, y = 168.259, z = 4430.264 }, rot = { x = 0.000, y = 14.843, z = 0.000 }, level = 32, drop_tag = "驮兽镀金旅团", pose_id = 4, area_id = 26 },
	{ config_id = 510003, monster_id = 25210501, pos = { x = -2075.238, y = 166.982, z = 4481.976 }, rot = { x = 0.000, y = 207.389, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 26 },
	{ config_id = 510004, monster_id = 25210101, pos = { x = -2075.442, y = 167.947, z = 4433.684 }, rot = { x = 0.000, y = 21.312, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 26 },
	{ config_id = 510009, monster_id = 25210302, pos = { x = -2118.215, y = 163.667, z = 4488.908 }, rot = { x = 0.000, y = 110.981, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9002, area_id = 26 },
	{ config_id = 510010, monster_id = 28060901, pos = { x = -2118.663, y = 166.666, z = 4518.762 }, rot = { x = 0.000, y = 183.906, z = 0.000 }, level = 32, drop_tag = "驮兽镀金旅团", disableWander = true, pose_id = 2, area_id = 26 },
	{ config_id = 510011, monster_id = 25210501, pos = { x = -2143.230, y = 169.063, z = 4495.007 }, rot = { x = 0.000, y = 130.185, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9502, area_id = 26 },
	{ config_id = 510012, monster_id = 25210101, pos = { x = -2118.599, y = 166.189, z = 4514.120 }, rot = { x = 0.000, y = 16.924, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 510005, gadget_id = 71700431, pos = { x = -2092.959, y = 171.479, z = 4420.718 }, rot = { x = 355.144, y = 231.073, z = 4.116 }, level = 32, area_id = 26 },
	{ config_id = 510006, gadget_id = 70220052, pos = { x = -2092.040, y = 171.296, z = 4421.447 }, rot = { x = 354.497, y = 359.497, z = 8.360 }, level = 32, area_id = 26 },
	{ config_id = 510007, gadget_id = 70220051, pos = { x = -2091.664, y = 171.097, z = 4419.837 }, rot = { x = 8.302, y = 349.047, z = 11.263 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1510008, name = "QUEST_FINISH_510008", event = EventType.EVENT_QUEST_FINISH, source = "7305203", condition = "", action = "action_EVENT_QUEST_FINISH_510008" },
	{ config_id = 1510013, name = "QUEST_FINISH_510013", event = EventType.EVENT_QUEST_FINISH, source = "7305202", condition = "", action = "action_EVENT_QUEST_FINISH_510013" }
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 510002, 510004 },
	{ 510010, 510012 }
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
		monsters = { 510001, 510002, 510003, 510004 },
		gadgets = { 510005, 510006, 510007 },
		regions = { },
		triggers = { "QUEST_FINISH_510008", "QUEST_FINISH_510013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 510009, 510010, 510011, 510012 },
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
function action_EVENT_QUEST_FINISH_510008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308510, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_510013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308510, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end