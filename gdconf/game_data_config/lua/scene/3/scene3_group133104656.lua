-- 基础信息
local base_info = {
	group_id = 133104656
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 656002, monster_id = 22010201, pos = { x = 381.787, y = 215.285, z = 228.114 }, rot = { x = 0.000, y = 140.900, z = 0.000 }, level = 23, drop_id = 1000100, pose_id = 9013, area_id = 9 },
	{ config_id = 656003, monster_id = 22010301, pos = { x = 380.654, y = 216.088, z = 221.330 }, rot = { x = 0.000, y = 43.710, z = 0.000 }, level = 23, drop_id = 1000100, pose_id = 9013, area_id = 9 },
	{ config_id = 656005, monster_id = 21010101, pos = { x = 382.003, y = 215.550, z = 224.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, drop_id = 1000100, pose_id = 9016, area_id = 9 },
	{ config_id = 656006, monster_id = 21010101, pos = { x = 383.494, y = 214.555, z = 228.432 }, rot = { x = 0.000, y = 212.000, z = 0.000 }, level = 23, drop_id = 1000100, pose_id = 9016, area_id = 9 },
	{ config_id = 656007, monster_id = 21010101, pos = { x = 382.210, y = 216.039, z = 220.594 }, rot = { x = 0.000, y = 46.180, z = 0.000 }, level = 23, drop_id = 1000100, pose_id = 9016, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 656001, gadget_id = 70310148, pos = { x = 382.225, y = 215.265, z = 225.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 656010, gadget_id = 70360001, pos = { x = 382.225, y = 215.265, z = 225.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, worktop_config = { init_options = { 64 } }, area_id = 9 },
	{ config_id = 656011, gadget_id = 70710536, pos = { x = 382.225, y = 215.265, z = 225.778 }, rot = { x = 3.400, y = 0.000, z = 331.100 }, level = 1, persistent = true, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 检测剩余怪物数
	{ config_id = 1656004, name = "ANY_MONSTER_DIE_656004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_656004", action = "action_EVENT_ANY_MONSTER_DIE_656004", trigger_count = 0 },
	{ config_id = 1656009, name = "SELECT_OPTION_656009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_656009", action = "action_EVENT_SELECT_OPTION_656009" }
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
		monsters = { 656002, 656003, 656005, 656006, 656007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_656004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 656001, 656010, 656011 },
		regions = { },
		triggers = { "SELECT_OPTION_656009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_656004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_656004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104656, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_656009(context, evt)
	-- 判断是gadgetid 656010 option_id 64
	if 656010 ~= evt.param1 then
		return false	
	end
	
	if 64 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_656009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133104656, EntityType.GADGET, 656001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133104656, EntityType.GADGET, 656010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133104656, EntityType.GADGET, 656011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104656") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end