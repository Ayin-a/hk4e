-- 基础信息
local base_info = {
	group_id = 166001108
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 108001, monster_id = 23010301, pos = { x = 715.529, y = 761.551, z = 393.754 }, rot = { x = 1.113, y = 345.091, z = 0.107 }, level = 36, drop_id = 1000100, affix = { 1007 }, title_id = 10084, special_name_id = 10117, area_id = 300 },
	{ config_id = 108002, monster_id = 23010601, pos = { x = 713.829, y = 761.742, z = 389.470 }, rot = { x = 1.093, y = 327.414, z = 359.764 }, level = 36, drop_id = 1000100, area_id = 300 },
	{ config_id = 108003, monster_id = 23010401, pos = { x = 719.705, y = 761.891, z = 390.815 }, rot = { x = 1.107, y = 331.725, z = 359.847 }, level = 36, drop_id = 1000100, area_id = 300 }
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
	{ config_id = 1108005, name = "MONSTER_BATTLE_108005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_108005", action = "action_EVENT_MONSTER_BATTLE_108005" },
	{ config_id = 1108007, name = "ANY_MONSTER_DIE_108007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_108007", action = "action_EVENT_ANY_MONSTER_DIE_108007" }
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
		monsters = { 108001, 108002, 108003 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_108005", "ANY_MONSTER_DIE_108007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_MONSTER_BATTLE_108005(context, evt)
	if 108001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_108005(context, evt)
	-- 将group 166001108 中config id为 108001 的怪物血量设为 90 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetMonsterHp(context, 166001108, 108001, 90) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_hp_by_group")
			return -1
		end
	
	-- 将group 166001108 中config id为 108002 的怪物血量设为 80 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetMonsterHp(context, 166001108, 108002, 80) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_hp_by_group")
			return -1
		end
	
	-- 将group 166001108 中config id为 108003 的怪物血量设为 70 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetMonsterHp(context, 166001108, 108003, 70) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_hp_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_108007(context, evt)
	--判断死亡怪物的configid是否为 108001
	if evt.param1 ~= 108001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_108007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001108") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 166001108, monsters = {108003,108002}, gadgets = {} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end