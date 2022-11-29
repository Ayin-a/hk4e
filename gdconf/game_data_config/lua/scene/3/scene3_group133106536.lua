-- 基础信息
local base_info = {
	group_id = 133106536
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
	{ config_id = 536001, gadget_id = 70211102, pos = { x = -798.393, y = 179.562, z = 1966.177 }, rot = { x = 0.000, y = 54.678, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 536002, gadget_id = 70380002, pos = { x = -796.000, y = 179.387, z = 1972.813 }, rot = { x = 0.000, y = 337.774, z = 0.000 }, level = 2, isOneoff = true, route_id = 310600148, persistent = true, area_id = 19 },
	{ config_id = 536003, gadget_id = 70380002, pos = { x = -792.890, y = 182.554, z = 1951.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, isOneoff = true, route_id = 310600149, persistent = true, area_id = 19 },
	{ config_id = 536004, gadget_id = 70380002, pos = { x = -792.283, y = 182.043, z = 1958.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, isOneoff = true, route_id = 310600150, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1536005, name = "ANY_GADGET_DIE_536005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_536005", action = "action_EVENT_ANY_GADGET_DIE_536005" },
	{ config_id = 1536006, name = "GADGET_STATE_CHANGE_536006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_536006", action = "action_EVENT_GADGET_STATE_CHANGE_536006", trigger_count = 0 }
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
		gadgets = { 536001, 536002, 536003, 536004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_536005", "GADGET_STATE_CHANGE_536006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_536005(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133106536}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_536005(context, evt)
	-- 将configid为 536001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 536001, GadgetState.Default) then
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
function condition_EVENT_GADGET_STATE_CHANGE_536006(context, evt)
	if 536001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_536006(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end