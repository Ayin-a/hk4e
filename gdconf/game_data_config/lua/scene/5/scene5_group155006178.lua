-- 基础信息
local base_info = {
	group_id = 155006178
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 500600026,
	gadget_seelie = 178002,
	group_ID = 155006178,
	gadget_footprint = 178003,
	gadget_seeliehome = 178001
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1
local gameplayStateFuncitons = 
{
	["0"] = function(context)
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_footprint })
	end,
	["1"] = function(context)
	
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		-- 设置移动平台路径
		ScriptLib.SetPlatformRouteId(context, defs.gadget_seelie, defs.route_2)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_footprint })
		
	end,
	["2"] = function(context)
	
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_seeliehome, GadgetState.GearAction1) 
	
	
	end

}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

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
	{ config_id = 178001, gadget_id = 70290293, pos = { x = 410.961, y = 173.813, z = -220.896 }, rot = { x = 0.000, y = 107.871, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 178002, gadget_id = 70710010, pos = { x = 376.049, y = 186.413, z = -178.781 }, rot = { x = 0.000, y = 92.034, z = 0.000 }, level = 36, route_id = 500600026, area_id = 200 },
	{ config_id = 178003, gadget_id = 70710007, pos = { x = 410.645, y = 175.036, z = -220.919 }, rot = { x = 0.000, y = 326.360, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1178004, name = "PLATFORM_REACH_POINT_178004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_178004", action = "action_EVENT_PLATFORM_REACH_POINT_178004", trigger_count = 0 },
	{ config_id = 1178005, name = "GADGET_STATE_CHANGE_178005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_178005", action = "action_EVENT_GADGET_STATE_CHANGE_178005" },
	{ config_id = 1178006, name = "GROUP_LOAD_178006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_178006", trigger_count = 0 },
	{ config_id = 1178007, name = "VARIABLE_CHANGE_178007", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_178007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 178001 },
		regions = { },
		triggers = { "GROUP_LOAD_178006", "VARIABLE_CHANGE_178007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 178001, 178002 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_178004", "GADGET_STATE_CHANGE_178005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 178001 },
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
function condition_EVENT_PLATFORM_REACH_POINT_178004(context, evt)
		ScriptLib.PrintContextLog(context, "seelie : "..evt.param1.." route : "..evt.param2.." finalPoint : "..evt.param3)
		if defs.gadget_seelie ~= evt.param1 then
		return false
		end
		
		if defs.route_2 ~= evt.param2 then
		return false
		end
		
		if  defs.final_point ~= evt.param3 then
		return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_178004(context, evt)
	-- 针对当前group内变量名为 "activecount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "activecount", 1, 155006205) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 178001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 178001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 178002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 178002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_178005(context, evt)
	if 178001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_178005(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_178006(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_178007(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end