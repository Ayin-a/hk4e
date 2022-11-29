-- 基础信息
local base_info = {
	group_id = 220123009
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
	{ config_id = 9002, gadget_id = 70330161, pos = { x = 4.820, y = -3.400, z = -21.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 9003, gadget_id = 70300048, pos = { x = 4.810, y = -6.473, z = -34.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 扰动壁画
	{ config_id = 9005, gadget_id = 70330161, pos = { x = 4.820, y = -3.400, z = -21.116 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, start_route = false, is_use_point_array = true },
	-- 正常壁画
	{ config_id = 9006, gadget_id = 70330161, pos = { x = 4.820, y = -3.400, z = -21.116 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 4秒后转墙！
	{ config_id = 1009004, name = "VARIABLE_CHANGE_9004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_9004", action = "action_EVENT_VARIABLE_CHANGE_9004" },
	-- 转墙！
	{ config_id = 1009007, name = "TIME_AXIS_PASS_9007", event = EventType.EVENT_TIME_AXIS_PASS, source = "T999", condition = "", action = "action_EVENT_TIME_AXIS_PASS_9007" },
	{ config_id = 1009008, name = "TIME_AXIS_PASS_9008", event = EventType.EVENT_TIME_AXIS_PASS, source = "T888", condition = "", action = "action_EVENT_TIME_AXIS_PASS_9008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Mural", value = 0, no_refresh = false }
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
		gadgets = { 9002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_9004", "TIME_AXIS_PASS_9007", "TIME_AXIS_PASS_9008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 9005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 9006 },
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
function condition_EVENT_VARIABLE_CHANGE_9004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Mural"为1
	if ScriptLib.GetGroupVariableValue(context, "Mural") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "120300401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 改变指定group组220123002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220123002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220123003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220123003, 3001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建标识为"T999"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T999", {4}, false)
	
	
	-- 将本组内变量名为 "END" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "END", 1, 220123003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "END" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "END", 1, 220123008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_9007(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 9002, 11, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 创建标识为"T888"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T888", {5}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_9008(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 9002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end