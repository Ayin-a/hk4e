-- 基础信息
local base_info = {
	group_id = 133309533
}

-- Trigger变量
local defs = {
	wait = {0},
	duration = 10,
	interval = 10,
	gadget_fan_1 = 533001
}

-- DEFS_MISCS
defs.fans = {
	defs.gadget_fan_1
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
	{ config_id = 533001, gadget_id = 70330308, pos = { x = -2379.139, y = 191.096, z = 5583.334 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 533002, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = -2394.464, y = 196.484, z = 5577.986 }, area_id = 27 },
	-- 开启事件
	{ config_id = 533006, shape = RegionShape.CUBIC, size = { x = 40.000, y = 30.000, z = 40.000 }, pos = { x = -2393.766, y = 203.800, z = 5569.271 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1533002, name = "ENTER_REGION_533002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_533002", action = "action_EVENT_ENTER_REGION_533002" },
	-- wait时间后
	{ config_id = 1533004, name = "TIME_AXIS_PASS_533004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_533004", action = "action_EVENT_TIME_AXIS_PASS_533004", trigger_count = 0 },
	-- 切换状态_每个时间点后
	{ config_id = 1533005, name = "TIME_AXIS_PASS_533005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS_533005", trigger_count = 0 },
	-- 开启事件
	{ config_id = 1533006, name = "ENTER_REGION_533006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_533006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isRefresh", value = 0, no_refresh = true }
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
		gadgets = { 533001 },
		regions = { 533002, 533006 },
		triggers = { "ENTER_REGION_533002", "TIME_AXIS_PASS_533004", "TIME_AXIS_PASS_533005", "ENTER_REGION_533006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_533002(context, evt)
	if evt.param1 ~= 533002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_533002(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_533004(context, evt)
	if nil == string.find(evt.source_name, "wait") then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_533004(context, evt)
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

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_533005(context, evt)
	--获取时间轴对应物件的ID
	local _sGadget = 0
	_sGadget = tonumber(string.sub(evt.source_name, -1))
	
	-- 将在groupid为 133309533 中的 configid为 defs.fans[_sGadget] 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {0,201,0}
	local _key = 0
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133309533, defs.fans[_sGadget]) then
	    _key = k
	    break
	  end
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309533, defs.fans[_sGadget], _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. defs.fans[_sGadget] .."State没有成功")
	  return -1
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_533006(context, evt)
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
	      if v == ScriptLib.GetGadgetStateByConfigId(context, 133309533, _gadgetID) then
	        _key = k
	        break
	      end
	    end
	
	    _key = _key + 1
	    _key = _key%#_gadgetStateList
	    if 0 == _key then
	      _key = #_gadgetStateList
	    end
	
	    if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309533, _gadgetID, _gadgetStateList[_key]) then
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