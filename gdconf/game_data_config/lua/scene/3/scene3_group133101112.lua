-- 基础信息
local base_info = {
	group_id = 133101112
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
	{ config_id = 112001, gadget_id = 70211112, pos = { x = 1455.772, y = 243.504, z = 1279.827 }, rot = { x = 4.285, y = 112.946, z = 347.547 }, level = 16, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 112002, gadget_id = 70380002, pos = { x = 1456.238, y = 254.329, z = 1289.097 }, rot = { x = 0.000, y = 85.776, z = 0.000 }, level = 19, isOneoff = true, route_id = 310100076, persistent = true, area_id = 5 },
	{ config_id = 112003, gadget_id = 70380002, pos = { x = 1456.354, y = 245.944, z = 1278.336 }, rot = { x = 0.000, y = 102.888, z = 0.000 }, level = 19, isOneoff = true, route_id = 310100077, persistent = true, area_id = 5 },
	{ config_id = 112004, gadget_id = 70380002, pos = { x = 1455.659, y = 249.389, z = 1285.910 }, rot = { x = 0.000, y = 122.705, z = 0.000 }, level = 19, isOneoff = true, route_id = 310100078, persistent = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1112005, name = "ANY_GADGET_DIE_112005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_112005", action = "action_EVENT_ANY_GADGET_DIE_112005" },
	{ config_id = 1112006, name = "GADGET_STATE_CHANGE_112006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_112006", action = "action_EVENT_GADGET_STATE_CHANGE_112006", trigger_count = 0 },
	{ config_id = 1112007, name = "GADGET_CREATE_112007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_112007", action = "action_EVENT_GADGET_CREATE_112007", trigger_count = 0 }
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
		gadgets = { 112001, 112002, 112003, 112004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_112005", "GADGET_STATE_CHANGE_112006", "GADGET_CREATE_112007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_112005(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133101112}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_112005(context, evt)
	-- 将configid为 112001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_112006(context, evt)
	if 112001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_112006(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_112007(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133101112}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_112007(context, evt)
	-- 将configid为 112001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end