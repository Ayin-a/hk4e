-- 基础信息
local base_info = {
	group_id = 133223107
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
	{ config_id = 107001, gadget_id = 70310091, pos = { x = -6024.256, y = 164.284, z = -2832.408 }, rot = { x = 342.264, y = 87.240, z = 0.000 }, level = 33, persistent = true, interact_id = 47, area_id = 18 },
	{ config_id = 107002, gadget_id = 70310092, pos = { x = -6009.916, y = 164.157, z = -2841.108 }, rot = { x = 340.841, y = 336.646, z = 0.000 }, level = 33, persistent = true, interact_id = 47, area_id = 18 },
	{ config_id = 107003, gadget_id = 70310093, pos = { x = -6003.665, y = 164.254, z = -2835.172 }, rot = { x = 350.178, y = 294.900, z = 0.000 }, level = 33, persistent = true, interact_id = 47, area_id = 18 },
	{ config_id = 107004, gadget_id = 70310094, pos = { x = -5997.934, y = 164.029, z = -2822.616 }, rot = { x = 0.000, y = 78.612, z = 0.000 }, level = 33, persistent = true, interact_id = 47, area_id = 18 },
	{ config_id = 107005, gadget_id = 70310095, pos = { x = -6023.346, y = 164.261, z = -2813.077 }, rot = { x = 0.000, y = 314.537, z = 0.000 }, level = 33, persistent = true, interact_id = 47, area_id = 18 },
	{ config_id = 107006, gadget_id = 70310096, pos = { x = -6026.524, y = 163.929, z = -2823.921 }, rot = { x = 0.000, y = 288.329, z = 11.937 }, level = 33, persistent = true, interact_id = 47, area_id = 18 },
	{ config_id = 107007, gadget_id = 70310097, pos = { x = -6012.624, y = 164.859, z = -2808.963 }, rot = { x = 348.072, y = 6.884, z = 341.916 }, level = 33, persistent = true, interact_id = 47, area_id = 18 },
	{ config_id = 107008, gadget_id = 70211131, pos = { x = -6011.559, y = 163.543, z = -2824.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 107010, gadget_id = 70211131, pos = { x = -6011.612, y = 162.888, z = -2826.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1107009, name = "GADGET_STATE_CHANGE_107009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_107009", action = "action_EVENT_GADGET_STATE_CHANGE_107009", trigger_count = 0 },
	{ config_id = 1107011, name = "GADGET_CREATE_107011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_107011", action = "action_EVENT_GADGET_CREATE_107011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "progress", value = 0, no_refresh = true }
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
		gadgets = { 107001, 107002, 107003, 107004, 107005, 107006, 107007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_107009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 107008, 107010 },
		regions = { },
		triggers = { "GADGET_CREATE_107011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_107009(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "progress") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_107009(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"progress",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"progress",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "progress") == #suites[1].gadgets then
		-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223107, 2)
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_107011(context, evt)
	if 107008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_107011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6067, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end