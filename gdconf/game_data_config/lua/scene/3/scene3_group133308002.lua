-- 基础信息
local base_info = {
	group_id = 133308002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2003, monster_id = 24040301, pos = { x = -2202.700, y = 60.994, z = 4272.083 }, rot = { x = 0.000, y = 45.102, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, affix = { 5245, 5246 }, pose_id = 1, area_id = 26 },
	{ config_id = 2005, monster_id = 35310101, pos = { x = -2195.749, y = 60.882, z = 4274.100 }, rot = { x = 0.000, y = 243.924, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 26, isPartner = true },
	{ config_id = 2006, monster_id = 35310301, pos = { x = -2200.840, y = 60.925, z = 4278.327 }, rot = { x = 0.000, y = 189.826, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26, isPartner = true }
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
	{ config_id = 1002002, name = "ANY_MONSTER_DIE_2002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2002", action = "action_EVENT_ANY_MONSTER_DIE_2002" },
	{ config_id = 1002004, name = "MONSTER_BATTLE_2004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_2004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 2001, monster_id = 24040101, pos = { x = -2199.337, y = 60.986, z = 4268.728 }, rot = { x = 0.000, y = 46.171, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 26 }
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
		monsters = { 2003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2002", "MONSTER_BATTLE_2004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2005, 2006 },
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
function condition_EVENT_ANY_MONSTER_DIE_2002(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7305219") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_2004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308002, 2)
	
	return 0
end