-- 基础信息
local base_info = {
	group_id = 155005092
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 92001, monster_id = 22030201, pos = { x = 259.682, y = 225.394, z = 211.958 }, rot = { x = 0.000, y = 82.621, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 9008, 20301 }, pose_id = 101, title_id = 10065, special_name_id = 10100, area_id = 200 },
	{ config_id = 92003, monster_id = 22010101, pos = { x = 278.330, y = 225.394, z = 205.853 }, rot = { x = 0.000, y = 310.539, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 200 },
	{ config_id = 92004, monster_id = 22010201, pos = { x = 271.252, y = 225.394, z = 223.773 }, rot = { x = 0.000, y = 185.748, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 200 }
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
	{ config_id = 1092002, name = "ANY_MONSTER_DIE_92002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_92002", action = "action_EVENT_ANY_MONSTER_DIE_92002", trigger_count = 0 },
	{ config_id = 1092005, name = "SPECIFIC_MONSTER_HP_CHANGE_92005", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "92001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_92005", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_92005" }
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
		monsters = { 92001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_92002", "SPECIFIC_MONSTER_HP_CHANGE_92005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 92003, 92004 },
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
function condition_EVENT_ANY_MONSTER_DIE_92002(context, evt)
	--判断死亡怪物的configid是否为 92001
	if evt.param1 ~= 92001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_92002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72177_DefeatNPC") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 155005092, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_92005(context, evt)
	--[[判断指定configid的怪物的血量小于%22时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 22 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_92005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155005092, 2)
	
	return 0
end