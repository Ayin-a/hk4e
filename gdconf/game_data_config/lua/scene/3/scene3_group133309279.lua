-- 基础信息
local base_info = {
	group_id = 133309279
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
	{ config_id = 279002, gadget_id = 70330256, pos = { x = -2978.129, y = 175.720, z = 5416.159 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 279003, gadget_id = 70330256, pos = { x = -2978.129, y = 175.226, z = 5396.159 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 279004, shape = RegionShape.CUBIC, size = { x = 30.000, y = 20.000, z = 10.000 }, pos = { x = -2962.649, y = 176.811, z = 5395.628 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1279004, name = "ENTER_REGION_279004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_279004", action = "action_EVENT_ENTER_REGION_279004" },
	-- 开启
	{ config_id = 1279005, name = "VARIABLE_CHANGE_279005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_279005", action = "action_EVENT_VARIABLE_CHANGE_279005", trigger_count = 0 },
	-- 关闭
	{ config_id = 1279006, name = "VARIABLE_CHANGE_279006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_279006", action = "action_EVENT_VARIABLE_CHANGE_279006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isOn", value = 0, no_refresh = true }
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
		gadgets = { 279002, 279003 },
		regions = { 279004 },
		triggers = { "ENTER_REGION_279004", "VARIABLE_CHANGE_279005", "VARIABLE_CHANGE_279006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_279004(context, evt)
	if evt.param1 ~= 279004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_279004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_279005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isOn"为1
	if ScriptLib.GetGroupVariableValue(context, "isOn") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_279005(context, evt)
	-- 将configid为 279002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 279002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 279003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 279003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_279006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isOn"为0
	if ScriptLib.GetGroupVariableValue(context, "isOn") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_279006(context, evt)
	-- 将configid为 279002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 279002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 279003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 279003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end