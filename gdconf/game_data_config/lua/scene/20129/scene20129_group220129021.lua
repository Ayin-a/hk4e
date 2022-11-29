-- 基础信息
local base_info = {
	group_id = 220129021
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
	{ config_id = 21001, gadget_id = 70800204, pos = { x = 331.400, y = 200.500, z = 480.400 }, rot = { x = 0.000, y = 273.100, z = 0.000 }, level = 1 },
	{ config_id = 21002, gadget_id = 70800220, pos = { x = 330.301, y = 199.776, z = 257.917 }, rot = { x = 0.000, y = 350.696, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021003, name = "ANY_GADGET_DIE_21003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_21003", action = "action_EVENT_ANY_GADGET_DIE_21003" }
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
		gadgets = { 21001, 21002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_21003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_21003(context, evt)
	if 21001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_21003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220129021, EntityType.GADGET, 21002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "max_time" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "max_time", 4, 220129018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end