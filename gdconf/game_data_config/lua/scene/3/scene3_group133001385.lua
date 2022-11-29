-- 基础信息
local base_info = {
	group_id = 133001385
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 385017, monster_id = 21010201, pos = { x = 2005.981, y = 214.990, z = -1091.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 3 },
	{ config_id = 385018, monster_id = 21010201, pos = { x = 2006.392, y = 215.066, z = -1089.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 3 },
	{ config_id = 385019, monster_id = 21010201, pos = { x = 2004.689, y = 214.979, z = -1092.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 3 },
	{ config_id = 385020, monster_id = 21010101, pos = { x = 2001.875, y = 215.571, z = -1094.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 3 },
	{ config_id = 385021, monster_id = 21010101, pos = { x = 1999.177, y = 215.840, z = -1094.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 385006, gadget_id = 70220017, pos = { x = 1995.681, y = 216.465, z = -1097.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 },
	{ config_id = 385007, gadget_id = 70220017, pos = { x = 1998.061, y = 216.171, z = -1098.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 },
	{ config_id = 385008, gadget_id = 70310001, pos = { x = 2006.342, y = 215.365, z = -1087.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 },
	{ config_id = 385009, gadget_id = 70310001, pos = { x = 2002.605, y = 216.282, z = -1080.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 },
	{ config_id = 385010, gadget_id = 70220014, pos = { x = 2001.854, y = 215.562, z = -1097.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 },
	{ config_id = 385011, gadget_id = 70220014, pos = { x = 2001.117, y = 215.667, z = -1098.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 },
	{ config_id = 385012, gadget_id = 70220014, pos = { x = 2000.059, y = 215.815, z = -1098.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 },
	{ config_id = 385013, gadget_id = 70220014, pos = { x = 1999.381, y = 215.907, z = -1097.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 },
	{ config_id = 385014, gadget_id = 70220014, pos = { x = 1993.501, y = 216.662, z = -1096.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 },
	{ config_id = 385015, gadget_id = 70220014, pos = { x = 1992.631, y = 216.813, z = -1097.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 },
	{ config_id = 385016, gadget_id = 70310006, pos = { x = 2002.377, y = 215.492, z = -1091.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1385022, name = "ANY_MONSTER_DIE_385022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_385022", action = "action_EVENT_ANY_MONSTER_DIE_385022" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 385017, 385018, 385019, 385020, 385021 },
		gadgets = { 385006, 385007, 385008, 385009, 385010, 385011, 385012, 385013, 385014, 385015, 385016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_385022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_385022(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133001385) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_385022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330013851") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end