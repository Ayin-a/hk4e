-- 基础信息
local base_info = {
	group_id = 133108176
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 176006, monster_id = 26030101, pos = { x = -461.392, y = 201.927, z = -814.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 7 },
	{ config_id = 176008, monster_id = 24010201, pos = { x = -455.017, y = 203.904, z = -818.006 }, rot = { x = 0.000, y = 299.995, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 1010, 1007 }, pose_id = 100, area_id = 7 },
	{ config_id = 176013, monster_id = 26030101, pos = { x = -434.290, y = 200.862, z = -827.130 }, rot = { x = 0.000, y = 58.627, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 176001, gadget_id = 70211121, pos = { x = -450.130, y = 203.733, z = -813.199 }, rot = { x = 0.038, y = 245.620, z = 351.119 }, level = 26, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 176002, gadget_id = 70710038, pos = { x = -450.095, y = 203.809, z = -813.473 }, rot = { x = 20.260, y = 19.548, z = 26.317 }, level = 32, area_id = 7 },
	{ config_id = 176004, gadget_id = 70360129, pos = { x = -450.307, y = 204.299, z = -813.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 176007, gadget_id = 70710055, pos = { x = -454.229, y = 204.711, z = -818.347 }, rot = { x = 3.723, y = 287.707, z = 15.788 }, level = 32, area_id = 7 },
	{ config_id = 176014, gadget_id = 70360040, pos = { x = -450.176, y = 203.924, z = -813.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 176012, shape = RegionShape.SPHERE, radius = 15, pos = { x = -459.067, y = 201.127, z = -819.345 }, area_id = 7 },
	{ config_id = 176016, shape = RegionShape.SPHERE, radius = 15, pos = { x = -459.067, y = 201.127, z = -819.345 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1176003, name = "SELECT_OPTION_176003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_176003", action = "action_EVENT_SELECT_OPTION_176003", trigger_count = 0 },
	{ config_id = 1176005, name = "GADGET_CREATE_176005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_176005", action = "action_EVENT_GADGET_CREATE_176005", trigger_count = 0 },
	{ config_id = 1176009, name = "ANY_MONSTER_DIE_176009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_176009", action = "action_EVENT_ANY_MONSTER_DIE_176009", trigger_count = 0 },
	{ config_id = 1176010, name = "GADGET_STATE_CHANGE_176010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_176010", action = "action_EVENT_GADGET_STATE_CHANGE_176010", trigger_count = 0 },
	{ config_id = 1176012, name = "ENTER_REGION_176012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_176012", action = "action_EVENT_ENTER_REGION_176012", trigger_count = 0 },
	{ config_id = 1176015, name = "GROUP_LOAD_176015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_176015", action = "action_EVENT_GROUP_LOAD_176015", trigger_count = 0 },
	{ config_id = 1176016, name = "ENTER_REGION_176016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_176016", action = "action_EVENT_ENTER_REGION_176016" }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = true },
	{ config_id = 2, name = "dig", value = 0, no_refresh = true }
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
		monsters = { 176006, 176013 },
		gadgets = { 176002, 176004, 176007, 176014 },
		regions = { 176012, 176016 },
		triggers = { "SELECT_OPTION_176003", "GADGET_CREATE_176005", "ANY_MONSTER_DIE_176009", "GADGET_STATE_CHANGE_176010", "ENTER_REGION_176012", "GROUP_LOAD_176015", "ENTER_REGION_176016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_176003(context, evt)
	-- 判断是gadgetid 176004 option_id 169
	if 176004 ~= evt.param1 then
		return false	
	end
	
	if 169 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_176003(context, evt)
	-- 创建id为176001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 176001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 176008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 176007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除指定group： 133108176 ；指定config：176004；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108176, 176004, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 176014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "dig" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "dig", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_176005(context, evt)
	if 176004 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"dig"为0
	if ScriptLib.GetGroupVariableValue(context, "dig") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_176005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_176009(context, evt)
	--判断死亡怪物的configid是否为 176008
	if evt.param1 ~= 176008 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_176009(context, evt)
	-- 将configid为 176001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_176010(context, evt)
	if 176001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_176010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133108176") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_176012(context, evt)
	if evt.param1 ~= 176012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_176012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133108176_zhiyin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_176015(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_176015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133108176") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_176016(context, evt)
	if evt.param1 ~= 176016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_176016(context, evt)
	-- 调用提示id为 1110188 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end