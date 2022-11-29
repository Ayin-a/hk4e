-- 基础信息
local base_info = {
	group_id = 133223011
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
	{ config_id = 11001, gadget_id = 70211111, pos = { x = -5979.604, y = 214.508, z = -2568.110 }, rot = { x = 0.000, y = 34.152, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	-- 移动水面
	{ config_id = 11002, gadget_id = 70380283, pos = { x = -5975.960, y = 201.259, z = -2562.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, route_id = 322300020, start_route = false, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 机关1触发
	{ config_id = 1011003, name = "VARIABLE_CHANGE_11003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_11003", action = "action_EVENT_VARIABLE_CHANGE_11003", trigger_count = 0 },
	{ config_id = 1011004, name = "TIME_AXIS_PASS_11004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_11004", action = "action_EVENT_TIME_AXIS_PASS_11004" },
	-- 水面A断线保护
	{ config_id = 1011006, name = "GROUP_LOAD_11006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_11006", action = "action_EVENT_GROUP_LOAD_11006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "water_level_A", value = 0, no_refresh = true },
	{ config_id = 2, name = "progress", value = 0, no_refresh = true }
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
		gadgets = { 11002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_11003", "TIME_AXIS_PASS_11004", "GROUP_LOAD_11006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"progress"为3
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11003(context, evt)
	-- 将本组内变量名为 "water_level_A" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "water_level_A", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 11002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为11001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 11001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建标识为"CS_Start"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "CS_Start", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_11004(context, evt)
	if "CS_Start" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_11004(context, evt)
	-- 通知场景上的所有玩家播放名字为322310001 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 322310001, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 停止标识为"CS_Start"的时间轴
	ScriptLib.EndTimeAxis(context, "CS_Start")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_11006(context, evt)
	-- 判断变量"water_level_A"为1
	if ScriptLib.GetGroupVariableValue(context, "water_level_A") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_11006(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 11002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end