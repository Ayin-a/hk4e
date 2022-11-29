-- 基础信息
local base_info = {
	group_id = 133104679
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 679005, monster_id = 26030101, pos = { x = 337.376, y = 152.840, z = 966.615 }, rot = { x = 0.000, y = 134.878, z = 0.000 }, level = 40, drop_id = 1000100, area_id = 6 },
	{ config_id = 679006, monster_id = 26030101, pos = { x = 361.020, y = 152.840, z = 979.347 }, rot = { x = 0.000, y = 189.632, z = 0.000 }, level = 40, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 679007, gadget_id = 70360073, pos = { x = 360.182, y = 152.840, z = 981.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 679008, gadget_id = 70360073, pos = { x = 336.577, y = 152.840, z = 969.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 679001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 355.314, y = 152.904, z = 960.632 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1679001, name = "ENTER_REGION_679001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1679002, name = "ANY_MONSTER_DIE_679002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_679002", action = "action_EVENT_ANY_MONSTER_DIE_679002" },
	{ config_id = 1679003, name = "SPECIFIC_MONSTER_HP_CHANGE_679003", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "679006", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_679003", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_679003" },
	{ config_id = 1679004, name = "SPECIFIC_MONSTER_HP_CHANGE_679004", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "679005", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_679004", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_679004" },
	{ config_id = 1679009, name = "GROUP_LOAD_679009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_679009", action = "action_EVENT_GROUP_LOAD_679009", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_679009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 679005, 679006 },
		gadgets = { },
		regions = { 679001 },
		triggers = { "ENTER_REGION_679001", "ANY_MONSTER_DIE_679002", "SPECIFIC_MONSTER_HP_CHANGE_679003", "SPECIFIC_MONSTER_HP_CHANGE_679004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_679002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_679002(context, evt)
	-- 将本组内变量名为 "wave3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "wave3", 1, 133104622) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104679, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_679003(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_679003(context, evt)
	-- 创建id为679007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 679007 }) then
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
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_679004(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_679004(context, evt)
	-- 创建id为679008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 679008 }) then
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
function condition_EVENT_GROUP_LOAD_679009(context, evt)
	-- 判断变量"wave2"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "wave2", 133104622) ~= 1 then
			return false
	end
	
	-- 判断变量"wave3"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "wave3", 133104622) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_679009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104679, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104679, 2)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104678, 2)
	
	return 0
end