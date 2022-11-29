-- 基础信息
local base_info = {
	group_id = 133303079
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
	{ config_id = 79001, gadget_id = 70290028, pos = { x = -1826.229, y = 356.172, z = 3558.787 }, rot = { x = 10.065, y = 305.876, z = 347.845 }, level = 30, area_id = 23 },
	{ config_id = 79002, gadget_id = 70211111, pos = { x = -1826.262, y = 356.111, z = 3558.851 }, rot = { x = 0.000, y = 306.951, z = 349.374 }, level = 26, chest_drop_id = 1050224, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 79003, gadget_id = 70360286, pos = { x = -1826.229, y = 356.172, z = 3558.787 }, rot = { x = 0.000, y = 306.951, z = 0.000 }, level = 30, worktop_config = { is_persistent = true, init_options = { 99 } }, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 79006, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1826.858, y = 355.995, z = 3559.475 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1079004, name = "SELECT_OPTION_79004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79004", action = "action_EVENT_SELECT_OPTION_79004" },
	{ config_id = 1079005, name = "GROUP_LOAD_79005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_79005", action = "action_EVENT_GROUP_LOAD_79005", trigger_count = 0 },
	{ config_id = 1079006, name = "ENTER_REGION_79006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 开箱本组opened+1并管理组chestNum+1
	{ config_id = 1079007, name = "GADGET_STATE_CHANGE_79007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79007", action = "action_EVENT_GADGET_STATE_CHANGE_79007" },
	{ config_id = 1079008, name = "GROUP_LOAD_79008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_79008", action = "action_EVENT_GROUP_LOAD_79008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "opened", value = 0, no_refresh = true }
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
		regions = { 79006 },
		triggers = { "ENTER_REGION_79006", "GROUP_LOAD_79008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 79001, 79003 },
		regions = { },
		triggers = { "SELECT_OPTION_79004", "GROUP_LOAD_79005", "GADGET_STATE_CHANGE_79007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 79002 },
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
function condition_EVENT_SELECT_OPTION_79004(context, evt)
	-- 判断是gadgetid 79003 option_id 99
	if 79003 ~= evt.param1 then
		return false	
	end
	
	if 99 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79004(context, evt)
	-- 创建id为79002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 79002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303079, EntityType.GADGET, 79003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303079, EntityType.GADGET, 79001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_79005(context, evt)
	-- 判断变量"opened"为1
	if ScriptLib.GetGroupVariableValue(context, "opened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_79005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306412_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79007(context, evt)
	if 79002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79007(context, evt)
	-- 将本组内变量名为 "opened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "opened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "chestNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "chestNum", 1, 133303047) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_79008(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7306412)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_79008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303079, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"