-- 基础信息
local base_info = {
	group_id = 133210038
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
	{ config_id = 38001, gadget_id = 70500000, pos = { x = -4061.951, y = 236.787, z = -873.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 17 },
	{ config_id = 38002, gadget_id = 70500000, pos = { x = -4060.414, y = 206.825, z = -816.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 17 },
	{ config_id = 38004, gadget_id = 70330093, pos = { x = -4061.772, y = 224.199, z = -873.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1038003, name = "GATHER_38003", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_38003", action = "action_EVENT_GATHER_38003" }
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
		gadgets = { 38001, 38002, 38004 },
		regions = { },
		triggers = { "GATHER_38003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_38003(context, evt)
	if 38001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_38003(context, evt)
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210110) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end