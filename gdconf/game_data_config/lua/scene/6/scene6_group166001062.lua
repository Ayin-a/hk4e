-- 基础信息
local base_info = {
	group_id = 166001062
}

-- Trigger变量
local defs = {
	bossConfigId = 62001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 62001, monster_id = 24010401, pos = { x = 361.715, y = 44.409, z = 1354.929 }, rot = { x = 0.000, y = 64.553, z = 0.000 }, level = 36, drop_id = 1000100, ban_excel_drop = true, affix = { 5165 }, title_id = 10081, special_name_id = 10114, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 62003, gadget_id = 70360001, pos = { x = 375.077, y = 45.370, z = 1356.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 9999, area_id = 300 },
	{ config_id = 62007, gadget_id = 70290233, pos = { x = 377.260, y = 44.572, z = 1356.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 9999, area_id = 300 },
	{ config_id = 62008, gadget_id = 70290233, pos = { x = 345.194, y = 44.412, z = 1355.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 9999, area_id = 300 },
	{ config_id = 62009, gadget_id = 42401021, pos = { x = 378.067, y = 44.545, z = 1354.609 }, rot = { x = 0.000, y = 222.929, z = 0.000 }, level = 1, mark_flag = 1, area_id = 300 },
	{ config_id = 62010, gadget_id = 42401022, pos = { x = 344.548, y = 44.414, z = 1353.783 }, rot = { x = 0.000, y = 106.521, z = 0.000 }, level = 1, mark_flag = 2, area_id = 300 },
	{ config_id = 62011, gadget_id = 42401020, pos = { x = 361.449, y = 44.219, z = 1334.146 }, rot = { x = 0.000, y = 319.547, z = 0.000 }, level = 1, mark_flag = 5, area_id = 300 },
	{ config_id = 62012, gadget_id = 42401020, pos = { x = 366.264, y = 44.301, z = 1375.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 5, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1062002, name = "TIME_AXIS_PASS_62002", event = EventType.EVENT_TIME_AXIS_PASS, source = "BOSSDIE", condition = "condition_EVENT_TIME_AXIS_PASS_62002", action = "action_EVENT_TIME_AXIS_PASS_62002" },
	{ config_id = 1062004, name = "MONSTER_BATTLE_62004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_62004", action = "action_EVENT_MONSTER_BATTLE_62004", trigger_count = 0 },
	{ config_id = 1062005, name = "LUA_NOTIFY_62005", event = EventType.EVENT_LUA_NOTIFY, source = "WQBOSSDIE", condition = "", action = "action_EVENT_LUA_NOTIFY_62005", trigger_count = 0 },
	{ config_id = 1062006, name = "TIME_AXIS_PASS_62006", event = EventType.EVENT_TIME_AXIS_PASS, source = "BOSSDIE", condition = "condition_EVENT_TIME_AXIS_PASS_62006", action = "action_EVENT_TIME_AXIS_PASS_62006" },
	{ config_id = 1062013, name = "LUA_NOTIFY_62013", event = EventType.EVENT_LUA_NOTIFY, source = "BOSSDIRT", condition = "", action = "action_EVENT_LUA_NOTIFY_62013", trigger_count = 0 },
	{ config_id = 1062014, name = "ANY_GADGET_DIE_62014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_62014", action = "action_EVENT_ANY_GADGET_DIE_62014", trigger_count = 0 },
	{ config_id = 1062015, name = "ANY_GADGET_DIE_62015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_62015", action = "action_EVENT_ANY_GADGET_DIE_62015", trigger_count = 0 },
	{ config_id = 1062016, name = "LUA_NOTIFY_62016", event = EventType.EVENT_LUA_NOTIFY, source = "CRYSTAL18", condition = "", action = "action_EVENT_LUA_NOTIFY_62016", trigger_count = 0 },
	{ config_id = 1062017, name = "LUA_NOTIFY_62017", event = EventType.EVENT_LUA_NOTIFY, source = "CRYSTAL19", condition = "", action = "action_EVENT_LUA_NOTIFY_62017", trigger_count = 0 },
	{ config_id = 1062018, name = "LUA_NOTIFY_62018", event = EventType.EVENT_LUA_NOTIFY, source = "CLEARALL", condition = "", action = "action_EVENT_LUA_NOTIFY_62018", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 62001, 62009, 62010, 62007, 62008 }
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
		monsters = { 62001 },
		gadgets = { 62003 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_62002", "MONSTER_BATTLE_62004", "LUA_NOTIFY_62005", "TIME_AXIS_PASS_62006", "LUA_NOTIFY_62013", "LUA_NOTIFY_62016", "LUA_NOTIFY_62017", "LUA_NOTIFY_62018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 62007, 62008, 62009, 62010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_62014", "ANY_GADGET_DIE_62015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 62011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 62012 },
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
function condition_EVENT_TIME_AXIS_PASS_62002(context, evt)
	if "BOSSDIE" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_62002(context, evt)
	-- 调用提示id为 60010228 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010228) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_62004(context, evt)
	if 62001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_62004(context, evt)
	-- 调用提示id为 60010170 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010170) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_62005(context, evt)
	-- 创建标识为"BOSSDIE"，时间节点为{3,8}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "BOSSDIE", {3,8}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_62006(context, evt)
	if "BOSSDIE" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_62006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001691, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_62013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001062, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_62014(context, evt)
	if 62009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_62014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 62007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_62015(context, evt)
	if 62010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_62015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 62008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_62016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001062, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_62017(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001062, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_62018(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001062, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001062, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001062, 4)
	
	return 0
end

require "V2_7/BW_NearBossAuthorityChange"