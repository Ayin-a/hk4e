-- 基础信息
local base_info = {
	group_id = 133004049
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49003, monster_id = 21010301, pos = { x = 2045.365, y = 209.071, z = -1011.486 }, rot = { x = 0.000, y = 235.988, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 3 },
	{ config_id = 49004, monster_id = 21010101, pos = { x = 2040.635, y = 209.611, z = -1013.976 }, rot = { x = 0.000, y = 58.133, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 9013, area_id = 3 },
	{ config_id = 49005, monster_id = 21010101, pos = { x = 2045.903, y = 209.050, z = -1014.172 }, rot = { x = 0.000, y = 141.147, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 9010, area_id = 3 },
	{ config_id = 49007, monster_id = 21010301, pos = { x = 2041.714, y = 209.293, z = -1011.393 }, rot = { x = 0.000, y = 135.089, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 9010, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 49001, gadget_id = 71700469, pos = { x = 2043.313, y = 209.333, z = -1012.768 }, rot = { x = 0.861, y = 351.647, z = 353.567 }, level = 1, area_id = 3 },
	{ config_id = 49006, gadget_id = 71700469, pos = { x = 2043.313, y = 209.333, z = -1012.768 }, rot = { x = 0.861, y = 351.647, z = 353.567 }, level = 1, area_id = 3 },
	{ config_id = 49011, gadget_id = 71700469, pos = { x = 2043.313, y = 209.333, z = -1012.768 }, rot = { x = 0.861, y = 351.647, z = 353.567 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1049012, name = "ANY_MONSTER_DIE_49012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49012", action = "action_EVENT_ANY_MONSTER_DIE_49012" }
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
		gadgets = { 49001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 49003, 49004, 49005, 49007 },
		gadgets = { 49006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_49012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 49011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q400790401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end