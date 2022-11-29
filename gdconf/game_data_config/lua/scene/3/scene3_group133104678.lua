-- 基础信息
local base_info = {
	group_id = 133104678
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 678004, monster_id = 24010101, pos = { x = 351.674, y = 152.881, z = 969.235 }, rot = { x = 0.000, y = 158.977, z = 0.000 }, level = 40, drop_tag = "遗迹守卫", pose_id = 101, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 678005, gadget_id = 70360073, pos = { x = 355.906, y = 152.904, z = 961.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1678001, name = "ANY_MONSTER_DIE_678001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_678001", action = "action_EVENT_ANY_MONSTER_DIE_678001" },
	{ config_id = 1678002, name = "SPECIFIC_MONSTER_HP_CHANGE_678002", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "678004", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_678002", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_678002" },
	{ config_id = 1678003, name = "GROUP_LOAD_678003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_678003", action = "action_EVENT_GROUP_LOAD_678003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_678003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 678004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_678001", "SPECIFIC_MONSTER_HP_CHANGE_678002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_678001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_678001(context, evt)
	-- 将本组内变量名为 "wave2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "wave2", 1, 133104622) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104678, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_678002(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_678002(context, evt)
	-- 创建id为678005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 678005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 400005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_678003(context, evt)
	-- 判断变量"wave1"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "wave1", 133104622) ~= 1 then
			return false
	end
	
	-- 判断变量"wave2"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "wave2", 133104622) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_678003(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104678, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104678, 2)
	
	return 0
end