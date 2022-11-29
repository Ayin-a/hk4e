-- 基础信息
local base_info = {
	group_id = 199003019
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
	{ config_id = 19001, gadget_id = 70211001, pos = { x = -530.980, y = 115.507, z = 989.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050195, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 403 },
	{ config_id = 19003, gadget_id = 70220038, pos = { x = -529.839, y = 115.507, z = 995.531 }, rot = { x = 0.000, y = 173.443, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1019002, name = "ANY_GADGET_DIE_19002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_19002", action = "action_EVENT_ANY_GADGET_DIE_19002" },
	{ config_id = 1019004, name = "GROUP_LOAD_19004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_19004", action = "action_EVENT_GROUP_LOAD_19004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "destroy", value = 0, no_refresh = true }
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
		gadgets = { 19003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_19002", "GROUP_LOAD_19004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_19002(context, evt)
	if 19003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_19002(context, evt)
	 ScriptLib.CreateGadget(context, { config_id = 19001 })
	ScriptLib.SetGroupVariableValue(context, "destroy", 1)
	
	if ScriptLib.GetHostQuestState(context,7902001)==3 then
	
	ScriptLib.ShowReminder(context, 1111232) 
	
	end
	
	ScriptLib.SetGroupVariableValueByGroup(context, "weather", 3, 199003100)
	ScriptLib.SetWeatherAreaState(context, 9005, 1)
	ScriptLib.SetWeatherAreaState(context, 9006, 0)
	ScriptLib.SetWeatherAreaState(context, 9007, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_19004(context, evt)
	-- 判断变量"destroy"为1
	if ScriptLib.GetGroupVariableValue(context, "destroy") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_19004(context, evt)
	-- 创建id为19001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 19001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end