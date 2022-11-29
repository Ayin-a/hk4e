-- 基础信息
local base_info = {
	group_id = 133309815
}

-- Trigger变量
local defs = {
	wait = 0,
	duration = 6,
	interval = 6
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
	{ config_id = 815001, gadget_id = 70330308, pos = { x = -2255.828, y = -38.397, z = 5891.234 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 815007, gadget_id = 70220103, pos = { x = -2222.323, y = 42.112, z = 5874.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 815008, gadget_id = 70690001, pos = { x = -2255.549, y = 11.158, z = 5890.456 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 815009, gadget_id = 70690001, pos = { x = -2255.549, y = -13.413, z = 5890.456 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 815010, gadget_id = 70690001, pos = { x = -2255.549, y = -4.424, z = 5890.456 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 815011, gadget_id = 70690001, pos = { x = -2255.549, y = 3.657, z = 5890.456 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	-- 靠近开启教学
	{ config_id = 815002, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2255.828, y = -38.397, z = 5891.234 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 靠近开启教学
	{ config_id = 1815002, name = "ENTER_REGION_815002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_815002", action = "action_EVENT_ENTER_REGION_815002" },
	-- group加载-wait非0
	{ config_id = 1815003, name = "GROUP_LOAD_815003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_815003", action = "action_EVENT_GROUP_LOAD_815003", trigger_count = 0 },
	-- group加载-wait为0
	{ config_id = 1815004, name = "GROUP_LOAD_815004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_815004", action = "action_EVENT_GROUP_LOAD_815004", trigger_count = 0 },
	-- wait时间后操作
	{ config_id = 1815005, name = "TIME_AXIS_PASS_815005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_815005", action = "action_EVENT_TIME_AXIS_PASS_815005", trigger_count = 0 },
	-- 切换状态
	{ config_id = 1815006, name = "TIME_AXIS_PASS_815006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS_815006", trigger_count = 0 }
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
		gadgets = { 815001, 815007, 815008, 815009, 815010, 815011 },
		regions = { 815002 },
		triggers = { "ENTER_REGION_815002", "GROUP_LOAD_815003", "GROUP_LOAD_815004", "TIME_AXIS_PASS_815005", "TIME_AXIS_PASS_815006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_815002(context, evt)
	if evt.param1 ~= 815002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_815002(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_815003(context, evt)
	-- 判断变量"wait"不为0
	if defs.wait == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_815003(context, evt)
	-- 创建标识为"start"，时间节点为{wait}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "start", {defs.wait}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_815004(context, evt)
	-- 判断变量"wait"为0
	if defs.wait ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_815004(context, evt)
	
	local axis
	axis = defs.duration + defs.interval
	-- 创建标识为"fan_state"，时间节点为{defs.interval,defs.duration}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "fan_state", {defs.duration,axis}, true)
	
	-- 将在groupid为 133309815 中的 configid为 815001 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {0,201,0}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133309815, 815001) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 815001 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133309815, 815001, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309815, 815001, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 815001 .."State没有成功")
	
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_815005(context, evt)
	if "start" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_815005(context, evt)
	local axis
	axis = defs.duration + defs.interval
	-- 创建标识为"fan_state"，时间节点为{defs.interval,defs.duration}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "fan_state", {defs.duration,axis}, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_815006(context, evt)
	
	-- 将在groupid为 133309815 中的 configid为 815001 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {0,201,0}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133309815, 815001) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 815001 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133309815, 815001, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309815, 815001, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 815001 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end