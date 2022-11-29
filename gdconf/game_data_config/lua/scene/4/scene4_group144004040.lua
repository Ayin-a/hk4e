-- 基础信息
local base_info = {
	group_id = 144004040
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 40001, monster_id = 21010401, pos = { x = -511.864, y = 124.028, z = -642.603 }, rot = { x = 0.000, y = 20.037, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 100 },
	{ config_id = 40002, monster_id = 21010901, pos = { x = -489.734, y = 124.049, z = -641.344 }, rot = { x = 0.000, y = 353.810, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 100 },
	{ config_id = 40003, monster_id = 21020101, pos = { x = -500.561, y = 126.499, z = -631.359 }, rot = { x = 0.000, y = 323.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 100 },
	{ config_id = 40004, monster_id = 21030301, pos = { x = -500.888, y = 126.494, z = -630.867 }, rot = { x = 0.000, y = 27.558, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 100 },
	{ config_id = 40005, monster_id = 22010201, pos = { x = -500.672, y = 126.462, z = -630.339 }, rot = { x = 0.000, y = 323.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 哨塔保护罩A
	{ config_id = 40008, gadget_id = 70290058, pos = { x = -511.611, y = 124.036, z = -642.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	-- 可摧毁小哨塔A
	{ config_id = 40009, gadget_id = 70950092, pos = { x = -511.546, y = 120.295, z = -642.545 }, rot = { x = 0.000, y = 314.149, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	-- 可摧毁小哨塔B
	{ config_id = 40010, gadget_id = 70950092, pos = { x = -488.950, y = 120.326, z = -641.759 }, rot = { x = 0.000, y = 311.327, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	-- 哨塔保护罩B
	{ config_id = 40011, gadget_id = 70290058, pos = { x = -488.950, y = 122.979, z = -641.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	-- 不可摧毁大哨塔A
	{ config_id = 40012, gadget_id = 70290059, pos = { x = -500.113, y = 120.295, z = -630.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 40013, gadget_id = 70950087, pos = { x = -513.111, y = 120.682, z = -638.894 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 40014, gadget_id = 70950087, pos = { x = -486.939, y = 121.688, z = -637.141 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 1, area_id = 100 },
	-- 小哨塔A连接梯子A
	{ config_id = 40015, gadget_id = 70290060, pos = { x = -506.865, y = 124.577, z = -637.353 }, rot = { x = 0.000, y = 313.734, z = 0.000 }, level = 1, area_id = 100 },
	-- 小哨塔B连接梯子B
	{ config_id = 40016, gadget_id = 70290060, pos = { x = -494.347, y = 124.495, z = -636.946 }, rot = { x = 0.000, y = 221.702, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1040017, name = "ANY_MONSTER_DIE_40017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_40017", trigger_count = 0 },
	-- 刷新并把进度置为2（海岛营地不需要开关）
	{ config_id = 1040020, name = "GROUP_REFRESH_40020", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_40020" },
	{ config_id = 1040023, name = "BLOSSOM_PROGRESS_FINISH_40023", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_40023" },
	{ config_id = 1040024, name = "GROUP_LOAD_40024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_40024" },
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1040025, name = "ANY_GADGET_DIE_40025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40025", action = "action_EVENT_ANY_GADGET_DIE_40025" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1040026, name = "ANY_GADGET_DIE_40026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40026", action = "action_EVENT_ANY_GADGET_DIE_40026" },
	{ config_id = 1040027, name = "ANY_MONSTER_DIE_40027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40027", action = "action_EVENT_ANY_MONSTER_DIE_40027" },
	{ config_id = 1040028, name = "ANY_MONSTER_DIE_40028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40028", action = "action_EVENT_ANY_MONSTER_DIE_40028" },
	-- 消灭了风丘丘萨满后销毁在场全部风护罩
	{ config_id = 1040029, name = "ANY_MONSTER_DIE_40029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40029", action = "action_EVENT_ANY_MONSTER_DIE_40029" }
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
		{ config_id = 1040019, name = "GADGET_CREATE_40019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_40019", action = "action_EVENT_GADGET_CREATE_40019", trigger_count = 0 },
		{ config_id = 1040022, name = "SELECT_OPTION_40022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_40022", action = "action_EVENT_SELECT_OPTION_40022", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_40024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 40001, 40002, 40004 },
		gadgets = { 40008, 40009, 40010, 40011, 40012, 40013, 40014, 40015, 40016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_40017", "GROUP_REFRESH_40020", "BLOSSOM_PROGRESS_FINISH_40023", "ANY_GADGET_DIE_40025", "ANY_GADGET_DIE_40026", "ANY_MONSTER_DIE_40027", "ANY_MONSTER_DIE_40029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 40003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_40028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [第三波怪物],
		monsters = { 40005 },
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
function action_EVENT_ANY_MONSTER_DIE_40017(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 144004040)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_40020(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 144004040, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_40023(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 144004040, 3) then
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
function action_EVENT_GROUP_LOAD_40024(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40025(context, evt)
	if 40009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40026(context, evt)
	if 40010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40027(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 144004040) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为0
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40027(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004040, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2677,y=194,z=-1745}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40028(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 144004040) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为1
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40028(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 2
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004040, 4)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2677,y=194,z=-1745}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40029(context, evt)
	if 40004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end