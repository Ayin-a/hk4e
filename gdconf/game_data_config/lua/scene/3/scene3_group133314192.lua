-- 基础信息
local base_info = {
	group_id = 133314192
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
	-- 1
	{ config_id = 192001, gadget_id = 70330225, pos = { x = -978.611, y = -147.248, z = 5009.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 192002, gadget_id = 70330315, pos = { x = -989.656, y = -148.590, z = 5034.984 }, rot = { x = 0.000, y = 24.781, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1192003, name = "GADGET_STATE_CHANGE_192003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_192003", action = "action_EVENT_GADGET_STATE_CHANGE_192003", trigger_count = 0 },
	-- 建筑完毕1
	{ config_id = 1192004, name = "VARIABLE_CHANGE_192004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_192004", action = "action_EVENT_VARIABLE_CHANGE_192004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "built", value = 0, no_refresh = false }
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
		gadgets = { 192001, 192002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_192003", "VARIABLE_CHANGE_192004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_192003(context, evt)
	-- 检测config_id为192002的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 192002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_192003(context, evt)
	-- 将本组内变量名为 "built" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "built", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330315) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_192004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"built"为1
	if ScriptLib.GetGroupVariableValue(context, "built") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_192004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 192001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_1/Engineer_Mark"