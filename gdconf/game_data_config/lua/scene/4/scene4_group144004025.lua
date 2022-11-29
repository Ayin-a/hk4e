-- 基础信息
local base_info = {
	group_id = 144004025
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 25001, monster_id = 21010401, pos = { x = -498.691, y = 124.028, z = -710.000 }, rot = { x = 0.000, y = 20.037, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 100 },
	{ config_id = 25002, monster_id = 21010901, pos = { x = -476.561, y = 124.049, z = -708.741 }, rot = { x = 0.000, y = 353.810, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 100 },
	{ config_id = 25003, monster_id = 21020101, pos = { x = -487.388, y = 126.499, z = -698.756 }, rot = { x = 0.000, y = 323.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 100 },
	{ config_id = 25004, monster_id = 21030301, pos = { x = -487.715, y = 126.494, z = -698.264 }, rot = { x = 0.000, y = 27.558, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 100 },
	{ config_id = 25005, monster_id = 22010201, pos = { x = -487.499, y = 126.462, z = -697.736 }, rot = { x = 0.000, y = 323.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 哨塔保护罩A
	{ config_id = 25006, gadget_id = 70290058, pos = { x = -498.438, y = 124.036, z = -709.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	-- 可摧毁小哨塔A
	{ config_id = 25007, gadget_id = 70950092, pos = { x = -498.373, y = 120.295, z = -709.942 }, rot = { x = 0.000, y = 314.149, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	-- 可摧毁小哨塔B
	{ config_id = 25008, gadget_id = 70950092, pos = { x = -475.777, y = 120.326, z = -709.156 }, rot = { x = 0.000, y = 311.327, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	-- 哨塔保护罩B
	{ config_id = 25009, gadget_id = 70290058, pos = { x = -475.777, y = 122.979, z = -709.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	-- 不可摧毁大哨塔A
	{ config_id = 25010, gadget_id = 70290059, pos = { x = -486.940, y = 120.295, z = -698.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 25011, gadget_id = 70950087, pos = { x = -499.938, y = 120.682, z = -706.291 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 25012, gadget_id = 70950087, pos = { x = -473.766, y = 121.688, z = -704.538 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 1, area_id = 100 },
	-- 小哨塔A连接梯子A
	{ config_id = 25013, gadget_id = 70290060, pos = { x = -493.692, y = 124.577, z = -704.750 }, rot = { x = 0.000, y = 313.734, z = 0.000 }, level = 1, area_id = 100 },
	-- 小哨塔B连接梯子B
	{ config_id = 25014, gadget_id = 70290060, pos = { x = -481.174, y = 124.495, z = -704.343 }, rot = { x = 0.000, y = 221.702, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1025015, name = "ANY_MONSTER_DIE_25015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_25015", trigger_count = 0 },
	-- 刷新并把进度置为2（海岛营地不需要开关）
	{ config_id = 1025017, name = "GROUP_REFRESH_25017", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_25017" },
	{ config_id = 1025019, name = "BLOSSOM_PROGRESS_FINISH_25019", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_25019" },
	{ config_id = 1025020, name = "GROUP_LOAD_25020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_25020" },
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1025021, name = "ANY_GADGET_DIE_25021", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_25021", action = "action_EVENT_ANY_GADGET_DIE_25021" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1025022, name = "ANY_GADGET_DIE_25022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_25022", action = "action_EVENT_ANY_GADGET_DIE_25022" },
	{ config_id = 1025023, name = "ANY_MONSTER_DIE_25023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25023", action = "action_EVENT_ANY_MONSTER_DIE_25023" },
	{ config_id = 1025024, name = "ANY_MONSTER_DIE_25024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25024", action = "action_EVENT_ANY_MONSTER_DIE_25024" },
	-- 消灭了风丘丘萨满后销毁在场全部风护罩
	{ config_id = 1025025, name = "ANY_MONSTER_DIE_25025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25025", action = "action_EVENT_ANY_MONSTER_DIE_25025" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false },
	{ config_id = 2, name = "remainingHeat", value = 3, no_refresh = false },
	{ config_id = 3, name = "wave", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1025016, name = "GADGET_CREATE_25016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_25016", action = "action_EVENT_GADGET_CREATE_25016", trigger_count = 0 },
		{ config_id = 1025018, name = "SELECT_OPTION_25018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_25018", action = "action_EVENT_SELECT_OPTION_25018", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_25020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 25001, 25002, 25004 },
		gadgets = { 25006, 25007, 25008, 25009, 25010, 25011, 25012, 25013, 25014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25015", "GROUP_REFRESH_25017", "BLOSSOM_PROGRESS_FINISH_25019", "ANY_GADGET_DIE_25021", "ANY_GADGET_DIE_25022", "ANY_MONSTER_DIE_25023", "ANY_MONSTER_DIE_25025" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 25003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25024" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [第三波怪物],
		monsters = { 25005 },
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
function action_EVENT_ANY_MONSTER_DIE_25015(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 144004025)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_25017(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 144004025, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_25019(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 144004025, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 将本组内变量名为 "GroupCompletion" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GroupCompletion", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_25020(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_25021(context, evt)
	if 25007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_25021(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_25022(context, evt)
	if 25008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_25022(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_25023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 144004025) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为0
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25023(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004025, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2677,y=194,z=-1745}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_25024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 144004025) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为1
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25024(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 2
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004025, 4)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2677,y=194,z=-1745}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_25025(context, evt)
	if 25004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end