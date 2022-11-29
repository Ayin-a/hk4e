-- 基础信息
local base_info = {
	group_id = 133001054
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
	{ config_id = 54001, gadget_id = 70380239, pos = { x = 1881.884, y = 195.897, z = -1550.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 54002, gadget_id = 70360286, pos = { x = 1881.884, y = 197.397, z = -1550.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 54005, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1881.884, y = 195.897, z = -1550.693 }, area_id = 2 },
	{ config_id = 54006, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1881.884, y = 195.897, z = -1550.693 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1054003, name = "GADGET_CREATE_54003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_54003", action = "action_EVENT_GADGET_CREATE_54003", trigger_count = 0 },
	{ config_id = 1054004, name = "SELECT_OPTION_54004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_54004", action = "action_EVENT_SELECT_OPTION_54004", trigger_count = 0 },
	{ config_id = 1054005, name = "ENTER_REGION_54005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_54005", action = "action_EVENT_ENTER_REGION_54005", trigger_count = 0 },
	{ config_id = 1054006, name = "LEAVE_REGION_54006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_54006", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 54001, 54002 },
		regions = { 54005, 54006 },
		triggers = { "GADGET_CREATE_54003", "SELECT_OPTION_54004", "ENTER_REGION_54005", "LEAVE_REGION_54006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_54003(context, evt)
	if 54002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_54003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133001054, 54002, {418}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_54004(context, evt)
	-- 判断是gadgetid 54002 option_id 418
	if 54002 ~= evt.param1 then
		return false	
	end
	
	if 418 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_54004(context, evt)
	-- 删除指定group： 133001054 ；指定config：54002；物件身上指定option：418；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133001054, 54002, 418) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 54001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133001054, EntityType.GADGET, 54002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001054") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_54005(context, evt)
	if evt.param1 ~= 54005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_54005(context, evt)
	-- 改变指定group组133001101中， configid为101001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133001101, 101001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_54006(context, evt)
	-- 改变指定group组133001101中， configid为101001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133001101, 101001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end