-- 基础信息
local base_info = {
	group_id = 133223219
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
	{ config_id = 219001, gadget_id = 70500000, pos = { x = -5890.947, y = 171.142, z = -2691.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 219002, gadget_id = 70500000, pos = { x = -5927.839, y = 157.339, z = -2710.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1219003, name = "GATHER_219003", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_219003", action = "action_EVENT_GATHER_219003" }
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
		gadgets = { 219001, 219002 },
		regions = { },
		triggers = { "GATHER_219003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_219003(context, evt)
	if 219001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_219003(context, evt)
	-- 针对当前group内变量名为 "Finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Finish", 1, 133223251) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end