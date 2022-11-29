-- 基础信息
local base_info = {
	group_id = 133103921
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 921001, monster_id = 26030101, pos = { x = 21.325, y = 200.782, z = 1305.159 }, rot = { x = 0.000, y = 305.416, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 921002, monster_id = 26030101, pos = { x = 22.709, y = 200.874, z = 1308.488 }, rot = { x = 0.000, y = 259.737, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 921004, monster_id = 20011201, pos = { x = 15.500, y = 201.986, z = 1307.592 }, rot = { x = 0.000, y = 86.374, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 901, area_id = 6 },
	{ config_id = 921005, monster_id = 20011201, pos = { x = 16.323, y = 201.606, z = 1305.392 }, rot = { x = 0.000, y = 42.378, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 901, area_id = 6 },
	{ config_id = 921006, monster_id = 20011201, pos = { x = 18.483, y = 201.092, z = 1303.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 901, area_id = 6 }
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
	{ config_id = 1921003, name = "ANY_MONSTER_DIE_921003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_921003", action = "action_EVENT_ANY_MONSTER_DIE_921003", trigger_count = 0 }
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
		monsters = { 921001, 921002, 921004, 921005, 921006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_921003" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_921003(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133103921) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_921003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103921") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end