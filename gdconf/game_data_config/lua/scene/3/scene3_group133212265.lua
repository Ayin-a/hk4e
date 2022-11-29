-- 基础信息
local base_info = {
	group_id = 133212265
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
	{ config_id = 265002, gadget_id = 70211122, pos = { x = -3465.082, y = 200.229, z = -2701.192 }, rot = { x = 0.000, y = 271.403, z = 0.000 }, level = 26, drop_tag = "解谜高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1265001, name = "VARIABLE_CHANGE_265001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_265001", action = "action_EVENT_VARIABLE_CHANGE_265001" }
}

-- 变量
variables = {
	{ config_id = 1, name = "133212265_var", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 265002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_265001" },
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
function condition_EVENT_VARIABLE_CHANGE_265001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"133212265_var"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "133212265_var", 133212265) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_265001(context, evt)
	-- 将configid为 265002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 265002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end