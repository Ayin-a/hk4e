-- 基础信息
local base_info = {
	group_id = 220026019
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
	{ config_id = 114, gadget_id = 70360021, pos = { x = 121.406, y = -92.107, z = -189.548 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 11, start_route = false },
	{ config_id = 115, gadget_id = 70360021, pos = { x = 112.013, y = -92.072, z = -199.099 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 12, start_route = false },
	{ config_id = 116, gadget_id = 70360021, pos = { x = 131.323, y = -91.965, z = -189.538 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 13, start_route = false },
	{ config_id = 117, gadget_id = 70360021, pos = { x = 121.656, y = -92.038, z = -208.936 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 14, start_route = false },
	{ config_id = 118, gadget_id = 70360021, pos = { x = 131.290, y = -92.072, z = -208.842 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 15, start_route = false },
	{ config_id = 119, gadget_id = 70360021, pos = { x = 131.339, y = -92.198, z = -199.122 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 16, start_route = false },
	{ config_id = 120, gadget_id = 70360021, pos = { x = 140.896, y = -92.113, z = -199.313 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 17, start_route = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000050, name = "TIMER_EVENT_50", event = EventType.EVENT_TIMER_EVENT, source = "Boss", condition = "", action = "action_EVENT_TIMER_EVENT_50" },
	{ config_id = 1000052, name = "TIMER_EVENT_52", event = EventType.EVENT_TIMER_EVENT, source = "First", condition = "", action = "action_EVENT_TIMER_EVENT_52" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = true }
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
		gadgets = { 114, 115, 116, 117, 118, 119, 120 },
		regions = { },
		triggers = { "TIMER_EVENT_50", "TIMER_EVENT_52" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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
function action_EVENT_TIMER_EVENT_50(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 114) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 115) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 117) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 118) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 119) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 120) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_52(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 114) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 115) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 117) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 118) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 119) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 120) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 改变指定group组220026019中， configid为115的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220026019, 115, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220026019中， configid为116的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220026019, 116, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220026019中， configid为118的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220026019, 118, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end