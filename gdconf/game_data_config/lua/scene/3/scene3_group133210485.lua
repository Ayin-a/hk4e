-- 基础信息
local base_info = {
	group_id = 133210485
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
	{ config_id = 485001, gadget_id = 70290096, pos = { x = -3848.516, y = 255.737, z = -511.101 }, rot = { x = 355.849, y = 37.902, z = 352.292 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 485002, gadget_id = 70290096, pos = { x = -3842.384, y = 255.713, z = -509.467 }, rot = { x = 357.525, y = 282.945, z = 6.742 }, level = 30, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 全部成功后仙灵消失（下次）
	{ config_id = 1485003, name = "VARIABLE_CHANGE_485003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_485003", action = "action_EVENT_VARIABLE_CHANGE_485003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "AllSuccess", value = 0, no_refresh = true }
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
		gadgets = { 485001, 485002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_485003" },
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
function condition_EVENT_VARIABLE_CHANGE_485003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"AllSuccess"为1
	if ScriptLib.GetGroupVariableValue(context, "AllSuccess") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_485003(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210485, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end