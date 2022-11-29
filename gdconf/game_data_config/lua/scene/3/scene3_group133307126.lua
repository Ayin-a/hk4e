-- 基础信息
local base_info = {
	group_id = 133307126
}

-- Trigger变量
local defs = {
	wait = {0,3},
	duration = 5,
	interval = 8,
	gadget_fan_1 = 126001,
	gadget_fan_2 = 126002
}

-- DEFS_MISCS
defs.fans = {
	defs.gadget_fan_1,
	defs.gadget_fan_2,
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
	{ config_id = 126001, gadget_id = 70330256, pos = { x = -2032.490, y = 95.070, z = 5982.149 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 126002, gadget_id = 70330256, pos = { x = -2012.490, y = 95.070, z = 5951.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 开启事件
	{ config_id = 126007, shape = RegionShape.CUBIC, size = { x = 80.000, y = 14.790, z = 35.520 }, pos = { x = -2015.697, y = 93.834, z = 5967.422 }, area_id = 27 },
	-- 靠近开启教学
	{ config_id = 126008, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2012.490, y = 95.070, z = 5952.650 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- wait时间后
	{ config_id = 1126004, name = "TIME_AXIS_PASS_126004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_126004", action = "action_EVENT_TIME_AXIS_PASS_126004", trigger_count = 0 },
	-- 切换状态_每个时间点后
	{ config_id = 1126005, name = "TIME_AXIS_PASS_126005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_126005", action = "action_EVENT_TIME_AXIS_PASS_126005", trigger_count = 0 },
	-- 开启事件
	{ config_id = 1126007, name = "ENTER_REGION_126007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_126007", action = "action_EVENT_ENTER_REGION_126007" },
	-- 靠近开启教学
	{ config_id = 1126008, name = "ENTER_REGION_126008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_126008", action = "action_EVENT_ENTER_REGION_126008" },
	-- 彻底关闭风扇
	{ config_id = 1126009, name = "VARIABLE_CHANGE_126009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_126009", action = "action_EVENT_VARIABLE_CHANGE_126009", trigger_count = 0 },
	-- 彻底关闭风扇
	{ config_id = 1126010, name = "GROUP_LOAD_126010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_126010", action = "action_EVENT_GROUP_LOAD_126010", trigger_count = 0 },
	{ config_id = 1126011, name = "GROUP_LOAD_126011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_126011", action = "action_EVENT_GROUP_LOAD_126011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isRefresh", value = 0, no_refresh = true },
	{ config_id = 2, name = "isOff", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 126003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2036.923, y = 96.362, z = 5969.396 }, area_id = 27 },
		{ config_id = 126006, shape = RegionShape.CUBIC, size = { x = 19.750, y = 19.750, z = 19.750 }, pos = { x = -2019.660, y = 89.663, z = 5970.511 }, area_id = 27 }
	},
	triggers = {
		{ config_id = 1126003, name = "ENTER_REGION_126003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_126003", action = "action_EVENT_ENTER_REGION_126003" },
		{ config_id = 1126006, name = "ENTER_REGION_126006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_126006", action = "action_EVENT_ENTER_REGION_126006" }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 2,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 126001, state = 0 },
			{ config_id = 126002, state = 0 }
		},
		monsters = {
		},
		regions = { 126007, 126008 },
		triggers = { "TIME_AXIS_PASS_126004", "TIME_AXIS_PASS_126005", "ENTER_REGION_126007", "ENTER_REGION_126008", "VARIABLE_CHANGE_126009", "GROUP_LOAD_126010", "GROUP_LOAD_126011" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isRefresh", value = 0, no_refresh = true },
			{ config_id = 2, name = "isOff", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 126001, state = 0 },
			{ config_id = 126002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isRefresh", value = 0, no_refresh = true },
			{ config_id = 2, name = "isOff", value = 1, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_126004(context, evt)
	if nil == string.find(evt.source_name, "wait") then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_126004(context, evt)
	--获取时间轴对应物件的ID
	local _sGadget = 0
	_sGadget = tonumber(string.sub(evt.source_name, -1))
	
	--创建正式时间轴
	local _timeAxisKey = ""
	_timeAxisKey = string.format("switch_%d",_sGadget) 
	local _switchTime = 0
	_switchTime = defs.duration + defs.interval
	ScriptLib.InitTimeAxis(context, _timeAxisKey, {defs.duration,_switchTime}, true)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_126005(context, evt)
	if nil ~= string.find(evt.source_name, "switch") then
		return true
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_126005(context, evt)
	--获取时间轴对应物件的ID
	local _sGadget = 0
	_sGadget = tonumber(string.sub(evt.source_name, -1))
	
	-- 将在groupid为 133307126 中的 configid为 defs.fans[_sGadget] 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {0,201,0}
	local _key = 0
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133307126, defs.fans[_sGadget]) then
	    _key = k
	    break
	  end
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133307126, defs.fans[_sGadget], _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. defs.fans[_sGadget] .."State没有成功")
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_126007(context, evt)
	if evt.param1 ~= 126007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"isRefresh"为0
	if ScriptLib.GetGroupVariableValue(context, "isRefresh") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_126007(context, evt)
	local _timeAxisKey = ""
	local _waitTime = 0
	local _gadgetID = 0
	
	--判断wait是否为空
	if 0 == #defs.wait then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : wait为空")
	  return -1
	end
	
	for i , v in pairs(defs.fans) do
	  if defs.wait[i] ~= nil then
	    _waitTime = defs.wait[i]
	  end
	    _timeAxisKey = string.format("wait_%d",i)
	  if _waitTime ~= 0 then
	    --创建等待时间轴
	    ScriptLib.InitTimeAxis(context, _timeAxisKey, {_waitTime}, false)
	  else
	    _gadgetID = v
	    --执行一次转换
	    local _gadgetStateList = {0,201,0}
	    local _key = 0
	
	    for k,v in pairs(_gadgetStateList) do
	      if v == ScriptLib.GetGadgetStateByConfigId(context, 133307126, _gadgetID) then
	        _key = k
	        break
	      end
	    end
	
	    _key = _key + 1
	    _key = _key%#_gadgetStateList
	    if 0 == _key then
	      _key = #_gadgetStateList
	    end
	
	    if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133307126, _gadgetID, _gadgetStateList[_key]) then
	          ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. _gadgetID .."State没有成功")
	    return -1
	    end
	    --创建正式时间轴
	    _timeAxisKey = string.format("switch_%d",i) 
	    local _switchTime = 0
	    _switchTime = defs.duration + defs.interval
	    ScriptLib.InitTimeAxis(context, _timeAxisKey, {defs.duration,_switchTime}, true)
	  end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_126008(context, evt)
	if evt.param1 ~= 126008 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_126008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_126009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isOff"为1
	if ScriptLib.GetGroupVariableValue(context, "isOff") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_126009(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133307126, 2)
	
	-- 将configid为 126001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 126002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_126010(context, evt)
	-- 判断变量"isOff"为1
	if ScriptLib.GetGroupVariableValue(context, "isOff") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_126010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133307126, 2)
	
	-- 将configid为 126001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 126002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_126011(context, evt)
	-- 判断变量"isOff"为0
	if ScriptLib.GetGroupVariableValue(context, "isOff") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_126011(context, evt)
	-- 将configid为 126001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 126002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end