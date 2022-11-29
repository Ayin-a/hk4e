-- 基础信息
local base_info = {
	group_id = 133004088
}

-- Trigger变量
local defs = {
	gadget_id_1 = 342
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
	{ config_id = 341, gadget_id = 70211101, pos = { x = 2258.063, y = 270.231, z = -261.976 }, rot = { x = 0.000, y = 357.196, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 342, gadget_id = 70900039, pos = { x = 2257.903, y = 270.276, z = -259.628 }, rot = { x = 0.000, y = 178.702, z = 0.000 }, level = 15, state = GadgetState.GearStop, persistent = true, area_id = 3 },
	{ config_id = 88004, gadget_id = 70220013, pos = { x = 2265.833, y = 270.167, z = -258.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000118, name = "GADGET_STATE_CHANGE_118", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118", action = "action_EVENT_GADGET_STATE_CHANGE_118", tlog_tag = "奔狼岭_88_谜题破解_结算" },
	{ config_id = 1088001, name = "GROUP_REFRESH_88001", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_88001" },
	{ config_id = 1088002, name = "VARIABLE_CHANGE_88002", event = EventType.EVENT_VARIABLE_CHANGE, source = "unlock_1", condition = "condition_EVENT_VARIABLE_CHANGE_88002", action = "action_EVENT_VARIABLE_CHANGE_88002" }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlock_1", value = 0, no_refresh = true }
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
	rand_suite = true
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
		gadgets = { 342 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_118", "GROUP_REFRESH_88001", "VARIABLE_CHANGE_88002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118(context, evt)
	if 342 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6007, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 50)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_88001(context, evt)
	-- 变量"unlock_1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "unlock_1", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_88002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock_1"为4
	if ScriptLib.GetGroupVariableValue(context, "unlock_1") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_88002(context, evt)
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
		--local pos = {x=2257, y=270, z=-259}
		
	    --if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, --duration = 5, is_force = true, is_broadcast = false }) then
			--return -1
		--end
	return 0
end