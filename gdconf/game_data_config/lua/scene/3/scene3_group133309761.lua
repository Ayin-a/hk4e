-- 基础信息
local base_info = {
	group_id = 133309761
}

-- Trigger变量
local defs = {
	wait = 0,
	duration = 5,
	interval = 4
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
	{ config_id = 761001, gadget_id = 70330256, pos = { x = -2947.427, y = 175.048, z = 5406.020 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
}

-- 区域
regions = {
	-- 靠近开启教学
	{ config_id = 761002, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2948.423, y = 172.215, z = 5406.696 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 靠近开启教学
	{ config_id = 1761002, name = "ENTER_REGION_761002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_761002", action = "action_EVENT_ENTER_REGION_761002" },
	-- group加载-wait非0
	{ config_id = 1761003, name = "GROUP_LOAD_761003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_761003", action = "action_EVENT_GROUP_LOAD_761003", trigger_count = 0 },
	-- group加载-wait为0
	{ config_id = 1761004, name = "GROUP_LOAD_761004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_761004", action = "action_EVENT_GROUP_LOAD_761004", trigger_count = 0 },
	-- wait时间后操作
	{ config_id = 1761005, name = "TIME_AXIS_PASS_761005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_761005", action = "action_EVENT_TIME_AXIS_PASS_761005", trigger_count = 0 },
	-- 切换状态
	{ config_id = 1761006, name = "TIME_AXIS_PASS_761006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS_761006", trigger_count = 0 },
	-- 元能火种激活后停止
	{ config_id = 1761007, name = "VARIABLE_CHANGE_761007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_761007", action = "action_EVENT_VARIABLE_CHANGE_761007" },
	-- 元能火种激活后停止 保底
	{ config_id = 1761008, name = "GROUP_LOAD_761008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_761008", action = "action_EVENT_GROUP_LOAD_761008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 3, name = "stop", value = 0, no_refresh = true }
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
		gadgets = { 761001 },
		regions = { 761002 },
		triggers = { "ENTER_REGION_761002", "GROUP_LOAD_761003", "GROUP_LOAD_761004", "TIME_AXIS_PASS_761005", "TIME_AXIS_PASS_761006", "VARIABLE_CHANGE_761007", "GROUP_LOAD_761008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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

-- 触发条件
function condition_EVENT_ENTER_REGION_761002(context, evt)
	if evt.param1 ~= 761002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_761002(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_761003(context, evt)
	-- 判断变量"wait"不为0
	if defs.wait == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_761003(context, evt)
	-- 将configid为 761001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 761001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	-- 创建标识为"start"，时间节点为{wait}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "start", {defs.wait}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_761004(context, evt)
	-- 判断变量"wait"为0
	if defs.wait ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_761004(context, evt)
	-- 将configid为 761001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 761001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	
	local axis
	axis = defs.duration + defs.interval
	-- 创建标识为"fan_state"，时间节点为{defs.interval,defs.duration}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "fan_state", {defs.duration,axis}, true)
	
	-- 将在groupid为 133309761 中的 configid为 761001 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {0,201,0}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133309761, 761001) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 761001 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133309761, 761001, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309761, 761001, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 761001 .."State没有成功")
	
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_761005(context, evt)
	if "start" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_761005(context, evt)
	local axis
	axis = defs.duration + defs.interval
	-- 创建标识为"fan_state"，时间节点为{defs.interval,defs.duration}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "fan_state", {defs.duration,axis}, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_761006(context, evt)
	
	-- 将在groupid为 133309761 中的 configid为 761001 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {0,201,0}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133309761, 761001) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 761001 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133309761, 761001, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309761, 761001, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 761001 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_761007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stop"为1
	if ScriptLib.GetGroupVariableValue(context, "stop") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_761007(context, evt)
	-- 停止标识为"fan_state"的时间轴
	ScriptLib.EndTimeAxis(context, "fan_state")
	
	
	-- 将configid为 761001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 761001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_761008(context, evt)
	-- 判断变量"stop"为1
	if ScriptLib.GetGroupVariableValue(context, "stop") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_761008(context, evt)
	-- 停止标识为"fan_state"的时间轴
	ScriptLib.EndTimeAxis(context, "fan_state")
	
	
	-- 将configid为 761001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 761001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end