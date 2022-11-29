-- 基础信息
local base_info = {
	group_id = 111101231
}

-- DEFS_MISCS
local EnvControlGadgets = {
231005
}

--仅在白天出现的gadget（夜晚会默认销毁）
local DayAppearGadgets = {
 231006
}

--仅在夜晚出现的gadget（白天会默认销毁）
local NightAppearGadgets = {
    231001
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
	{ config_id = 231001, gadget_id = 70690028, pos = { x = 2514.500, y = 333.550, z = -1659.012 }, rot = { x = 1.731, y = 0.253, z = 16.615 }, level = 1, state = GadgetState.GearStart, route_id = 110100097, start_route = false },
	{ config_id = 231002, gadget_id = 70690030, pos = { x = 2515.107, y = 335.044, z = -1655.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 231005, gadget_id = 70360309, pos = { x = 2511.361, y = 334.115, z = -1656.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 231006, gadget_id = 70290231, pos = { x = 2514.932, y = 334.996, z = -1655.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩家敲击震动机关，准备启动冥鱼倒计时
	{ config_id = 1231003, name = "GADGET_STATE_CHANGE_231003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_231003", action = "action_EVENT_GADGET_STATE_CHANGE_231003", trigger_count = 0 },
	-- 启动倒计时结束，冥鱼启动，创生风场
	{ config_id = 1231004, name = "TIME_AXIS_PASS_231004", event = EventType.EVENT_TIME_AXIS_PASS, source = "wait_to_move", condition = "", action = "action_EVENT_TIME_AXIS_PASS_231004", trigger_count = 0 },
	{ config_id = 1231007, name = "GROUP_LOAD_231007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_231007", trigger_count = 0 }
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
		gadgets = { 231005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_231003", "TIME_AXIS_PASS_231004", "GROUP_LOAD_231007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_231003(context, evt)
	if 231005 ~= evt.param2 or 322 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_231003(context, evt)
	-- 停止标识为"wait_to_move"的时间轴
	ScriptLib.EndTimeAxis(context, "wait_to_move")
	
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 111101231, EntityType.GADGET, 231001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 111101231, EntityType.GADGET, 231002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为231001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 231001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 231001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 231001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"wait_to_move"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wait_to_move", {4}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_231004(context, evt)
	-- 创建id为231002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 231002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 231001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_231007(context, evt)
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (231005 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,231005,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,231005,302)
	end
	
	
	return 0
end

require "V2_4/EnvState"