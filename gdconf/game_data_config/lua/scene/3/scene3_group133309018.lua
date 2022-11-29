-- 基础信息
local base_info = {
	group_id = 133309018
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 18001, monster_id = 23010301, pos = { x = -2376.249, y = -63.011, z = 5727.670 }, rot = { x = 0.000, y = 291.290, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 9014, area_id = 27 },
	{ config_id = 18002, monster_id = 23010201, pos = { x = -2375.542, y = -63.000, z = 5725.347 }, rot = { x = 0.000, y = 319.275, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 9014, area_id = 27 },
	{ config_id = 18004, monster_id = 35310101, pos = { x = -2378.662, y = -63.174, z = 5730.692 }, rot = { x = 0.000, y = 117.844, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 27, isPartner = true },
	{ config_id = 18005, monster_id = 35310301, pos = { x = -2378.745, y = -63.268, z = 5728.242 }, rot = { x = 0.000, y = 118.794, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 27, isPartner = true }
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
	{ config_id = 1018003, name = "ANY_MONSTER_DIE_18003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_18003", action = "action_EVENT_ANY_MONSTER_DIE_18003" }
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
		monsters = { 18001, 18002, 18004, 18005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_18003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_18003(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_18003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7305416") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133309018, EntityType.MONSTER, 18004)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133309018, EntityType.MONSTER, 18005)
	
		
	
	return 0
end