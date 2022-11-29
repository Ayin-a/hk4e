-- 基础信息
local base_info = {
	group_id = 220111009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9001, gadget_id = 70211001, pos = { x = 62.368, y = 26.222, z = 122.977 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true },
	{ config_id = 9004, gadget_id = 70290141, pos = { x = 60.785, y = 15.557, z = 111.225 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1 },
	{ config_id = 9006, gadget_id = 70360001, pos = { x = 60.733, y = 16.569, z = 111.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 9002, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 15.000 }, pos = { x = 58.715, y = 19.900, z = 138.520 } },
	{ config_id = 9003, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 20.000 }, pos = { x = 58.323, y = 19.851, z = 114.070 } }
}

-- 触发器
triggers = {
	{ config_id = 1009002, name = "ENTER_REGION_9002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9002", action = "action_EVENT_ENTER_REGION_9002" },
	{ config_id = 1009003, name = "ENTER_REGION_9003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9003", action = "action_EVENT_ENTER_REGION_9003" },
	{ config_id = 1009005, name = "SELECT_OPTION_9005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9005", action = "action_EVENT_SELECT_OPTION_9005" },
	{ config_id = 1009007, name = "SELECT_OPTION_9007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9007", action = "action_EVENT_SELECT_OPTION_9007" },
	{ config_id = 1009008, name = "SELECT_OPTION_9008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9008", action = "action_EVENT_SELECT_OPTION_9008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "point1", value = 0, no_refresh = false }
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
		gadgets = { 9001, 9004, 9006 },
		regions = { 9002, 9003 },
		triggers = { "ENTER_REGION_9002", "ENTER_REGION_9003", "SELECT_OPTION_9005", "SELECT_OPTION_9007", "SELECT_OPTION_9008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_9002(context, evt)
	if evt.param1 ~= 9002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220111009, 9006, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 9)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9003(context, evt)
	if evt.param1 ~= 9003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9003(context, evt)
	-- 调用提示id为 201110401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9005(context, evt)
	-- 判断是gadgetid 9006 option_id 73
	if 9006 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9005(context, evt)
	-- 改变指定group组220111009中， configid为9004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111009, 9004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 220111009 ；指定config：9006；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220111009, 9006, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "collect" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "collect", 1, 220111013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "point" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "point", 1, 220111006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9007(context, evt)
	-- 判断是gadgetid 9006 option_id 73
	if 9006 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"point1"为0
	if ScriptLib.GetGroupVariableValue(context, "point1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9007(context, evt)
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 10)
	
	-- 将本组内变量名为 "point1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "point1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9008(context, evt)
	-- 判断是gadgetid 9006 option_id 73
	if 9006 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"point1"为1
	if ScriptLib.GetGroupVariableValue(context, "point1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9008(context, evt)
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 9)
	
	return 0
end