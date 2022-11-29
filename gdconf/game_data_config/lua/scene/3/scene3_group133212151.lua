-- 基础信息
local base_info = {
	group_id = 133212151
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
	{ config_id = 151002, npc_id = 20266, pos = { x = -3636.667, y = 246.953, z = -2157.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 13 }
}

-- 装置
gadgets = {
	{ config_id = 151001, gadget_id = 70220049, pos = { x = -3637.594, y = 246.768, z = -2156.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 151005, gadget_id = 70900391, pos = { x = -3636.664, y = 246.947, z = -2157.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 151004, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3635.829, y = 247.078, z = -2165.964 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1151003, name = "GADGET_CREATE_151003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_151003", action = "action_EVENT_GADGET_CREATE_151003" },
	{ config_id = 1151004, name = "ENTER_REGION_151004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_151004", action = "" },
	-- 第1次缴满
	{ config_id = 1151006, name = "QUEST_START_151006", event = EventType.EVENT_QUEST_START, source = "7213902", condition = "", action = "action_EVENT_QUEST_START_151006", trigger_count = 0 },
	-- 第2次缴满
	{ config_id = 1151007, name = "QUEST_START_151007", event = EventType.EVENT_QUEST_START, source = "7213904", condition = "", action = "action_EVENT_QUEST_START_151007", trigger_count = 0 },
	-- 第3次缴满
	{ config_id = 1151008, name = "QUEST_START_151008", event = EventType.EVENT_QUEST_START, source = "7213906", condition = "", action = "action_EVENT_QUEST_START_151008", trigger_count = 0 },
	-- 第4次缴满
	{ config_id = 1151009, name = "QUEST_START_151009", event = EventType.EVENT_QUEST_START, source = "7213909", condition = "", action = "action_EVENT_QUEST_START_151009", trigger_count = 0 },
	-- 第1次取走
	{ config_id = 1151010, name = "QUEST_FINISH_151010", event = EventType.EVENT_QUEST_FINISH, source = "7213902", condition = "", action = "action_EVENT_QUEST_FINISH_151010", trigger_count = 0 },
	-- 第2次取走
	{ config_id = 1151011, name = "QUEST_FINISH_151011", event = EventType.EVENT_QUEST_FINISH, source = "7213904", condition = "", action = "action_EVENT_QUEST_FINISH_151011", trigger_count = 0 },
	-- 第3次取走
	{ config_id = 1151012, name = "QUEST_FINISH_151012", event = EventType.EVENT_QUEST_FINISH, source = "7213906", condition = "", action = "action_EVENT_QUEST_FINISH_151012", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 151001, 151005 },
		regions = { 151004 },
		triggers = { "GADGET_CREATE_151003", "ENTER_REGION_151004", "QUEST_START_151006", "QUEST_START_151007", "QUEST_START_151008", "QUEST_START_151009", "QUEST_FINISH_151010", "QUEST_FINISH_151011", "QUEST_FINISH_151012" },
		npcs = { 151002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_151003(context, evt)
	if 151001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_151003(context, evt)
	-- 调用提示id为 1120002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1120002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_151004(context, evt)
	if evt.param1 ~= 151004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_151006(context, evt)
	-- 将configid为 151005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_151007(context, evt)
	-- 将configid为 151005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_151008(context, evt)
	-- 将configid为 151005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_151009(context, evt)
	-- 将configid为 151005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_151010(context, evt)
	-- 将configid为 151005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_151011(context, evt)
	-- 将configid为 151005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_151012(context, evt)
	-- 将configid为 151005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end