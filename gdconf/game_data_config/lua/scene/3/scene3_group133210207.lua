-- 基础信息
local base_info = {
	group_id = 133210207
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 207001, monster_id = 25050502, pos = { x = -4026.556, y = 200.922, z = -722.368 }, rot = { x = 0.000, y = 168.485, z = 0.000 }, level = 90, drop_id = 1000100, isElite = true, title_id = 10039, special_name_id = 10060, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 207003, gadget_id = 70710399, pos = { x = -4026.835, y = 201.130, z = -726.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1207002, name = "ANY_MONSTER_DIE_207002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_207002", action = "action_EVENT_ANY_MONSTER_DIE_207002" }
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
		monsters = { 207001 },
		gadgets = { 207003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_207002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_207002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_207002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202304") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end