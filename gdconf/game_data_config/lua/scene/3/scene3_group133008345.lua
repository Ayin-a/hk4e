-- 基础信息
local base_info = {
	group_id = 133008345
}

-- Trigger变量
local defs = {
	duration = 180,
	kill_sum = 6,
	group_id = 133008345,
	gadget_controller_id = 345004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 345001, monster_id = 21011401, pos = { x = 1076.067, y = 285.861, z = -438.882 }, rot = { x = 0.000, y = 90.734, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 345009, monster_id = 21011301, pos = { x = 1074.274, y = 285.861, z = -442.120 }, rot = { x = 0.000, y = 62.854, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 345011, monster_id = 21020401, pos = { x = 1072.050, y = 285.861, z = -438.910 }, rot = { x = 0.000, y = 90.950, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 345012, monster_id = 21020601, pos = { x = 1077.054, y = 285.861, z = -434.961 }, rot = { x = 0.000, y = 119.728, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 345013, monster_id = 21020601, pos = { x = 1077.632, y = 285.861, z = -443.402 }, rot = { x = 0.000, y = 62.854, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 345014, monster_id = 21011301, pos = { x = 1073.874, y = 285.861, z = -435.232 }, rot = { x = 0.000, y = 62.854, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 345002, gadget_id = 70350092, pos = { x = 1084.477, y = 285.861, z = -439.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 345003, gadget_id = 70211145, pos = { x = 1073.425, y = 285.861, z = -439.070 }, rot = { x = 0.000, y = 89.868, z = 0.000 }, level = 26, drop_tag = "雪山玉髓高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 },
	{ config_id = 345004, gadget_id = 70360001, pos = { x = 1084.467, y = 286.885, z = -439.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 345016, gadget_id = 70211011, pos = { x = 1071.663, y = 285.861, z = -436.564 }, rot = { x = 0.000, y = 89.868, z = 0.000 }, level = 26, drop_tag = "雪山战斗中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 345017, gadget_id = 70211011, pos = { x = 1071.507, y = 285.861, z = -441.520 }, rot = { x = 0.000, y = 89.868, z = 0.000 }, level = 26, drop_tag = "雪山战斗中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 345018, gadget_id = 70360105, pos = { x = 1085.051, y = 286.486, z = -438.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 345021, gadget_id = 70310022, pos = { x = 1087.522, y = 285.861, z = -443.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 345022, gadget_id = 70310022, pos = { x = 1087.231, y = 285.861, z = -434.948 }, rot = { x = 0.000, y = 284.963, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 345023, gadget_id = 70310022, pos = { x = 1079.488, y = 285.861, z = -438.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1345005, name = "CHALLENGE_SUCCESS_345005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_345005" },
	{ config_id = 1345006, name = "CHALLENGE_FAIL_345006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_345006", trigger_count = 0 },
	{ config_id = 1345007, name = "GADGET_CREATE_345007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_345007", action = "action_EVENT_GADGET_CREATE_345007", trigger_count = 0 },
	{ config_id = 1345008, name = "SELECT_OPTION_345008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_345008", action = "action_EVENT_SELECT_OPTION_345008", trigger_count = 0 },
	{ config_id = 1345010, name = "ANY_MONSTER_DIE_345010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_345010", action = "action_EVENT_ANY_MONSTER_DIE_345010" },
	{ config_id = 1345015, name = "ANY_MONSTER_DIE_345015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_345015", action = "action_EVENT_ANY_MONSTER_DIE_345015" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 345002, 345004, 345021, 345022, 345023 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_345005", "CHALLENGE_FAIL_345006", "GADGET_CREATE_345007", "SELECT_OPTION_345008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 345001, 345009, 345014 },
		gadgets = { 345018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_345010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 345012, 345013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_345015" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 345011 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_345005(context, evt)
	-- 创建id为345003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 345003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为345016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 345016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为345017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 345017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 345002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 345002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 345018 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 345018, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_345006(context, evt)
	-- 将configid为 345002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 345002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 345018 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 345018, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为345004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 345004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008345, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008345, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008345, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_345007(context, evt)
	if 345004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_345007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008345, 345004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_345008(context, evt)
	-- 判断是gadgetid 345004 option_id 177
	if 345004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_345008(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 212, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 345002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	if 0 ~= ScriptLib.ShowReminder(context, 400001) then
		return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_345010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_345010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008345, 3)
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_345015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_345015(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008345, 4)
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end