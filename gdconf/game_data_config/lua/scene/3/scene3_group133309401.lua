-- 基础信息
local base_info = {
	group_id = 133309401
}

-- Trigger变量
local defs = {
	wait = 0,
	duration = 10,
	interval = 10
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
	{ config_id = 401001, gadget_id = 70330308, pos = { x = -2491.732, y = -7.479, z = 5591.208 }, rot = { x = 359.203, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 401006, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2539.845, y = -9.059, z = 5591.774 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- group加载-wait非0
	{ config_id = 1401002, name = "GROUP_LOAD_401002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_401002", action = "action_EVENT_GROUP_LOAD_401002", trigger_count = 0 },
	-- group加载-wait为0
	{ config_id = 1401003, name = "GROUP_LOAD_401003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_401003", action = "action_EVENT_GROUP_LOAD_401003", trigger_count = 0 },
	-- wait时间后操作
	{ config_id = 1401004, name = "TIME_AXIS_PASS_401004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_401004", action = "action_EVENT_TIME_AXIS_PASS_401004", trigger_count = 0 },
	-- 切换状态
	{ config_id = 1401005, name = "TIME_AXIS_PASS_401005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS_401005", trigger_count = 0 },
	{ config_id = 1401006, name = "ENTER_REGION_401006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_401006", action = "action_EVENT_ENTER_REGION_401006" }
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
		gadgets = { 401001 },
		regions = { 401006 },
		triggers = { "GROUP_LOAD_401002", "GROUP_LOAD_401003", "TIME_AXIS_PASS_401004", "TIME_AXIS_PASS_401005", "ENTER_REGION_401006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_401002(context, evt)
	-- 判断变量"wait"不为0
	if defs.wait == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_401002(context, evt)
	-- 创建标识为"start"，时间节点为{wait}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "start", {defs.wait}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_401003(context, evt)
	-- 判断变量"wait"为0
	if defs.wait ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_401003(context, evt)
	
	local axis
	axis = defs.duration + defs.interval
	-- 创建标识为"fan_state"，时间节点为{defs.interval,defs.duration}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "fan_state", {defs.duration,axis}, true)
	
	-- 将在groupid为 133309401 中的 configid为 401001 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {0,201,0}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133309401, 401001) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 401001 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133309401, 401001, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309401, 401001, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 401001 .."State没有成功")
	
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_401004(context, evt)
	if "start" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_401004(context, evt)
	local axis
	axis = defs.duration + defs.interval
	-- 创建标识为"fan_state"，时间节点为{defs.interval,defs.duration}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "fan_state", {defs.duration,axis}, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_401005(context, evt)
	
	-- 将在groupid为 133309401 中的 configid为 401001 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {0,201,0}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133309401, 401001) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 401001 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133309401, 401001, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309401, 401001, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 401001 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_401006(context, evt)
	if evt.param1 ~= 401006 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_401006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end