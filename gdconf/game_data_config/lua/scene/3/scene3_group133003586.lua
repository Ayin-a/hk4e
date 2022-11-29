-- 基础信息
local base_info = {
	group_id = 133003586
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
	{ config_id = 586001, gadget_id = 70211101, pos = { x = 2327.615, y = 275.548, z = -1633.104 }, rot = { x = 0.000, y = 73.255, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 586002, gadget_id = 70220024, pos = { x = 2326.430, y = 275.548, z = -1632.209 }, rot = { x = 0.000, y = 64.848, z = 0.000 }, level = 10, isOneoff = true, persistent = true, oneoff_reset_version = 2, area_id = 1 },
	{ config_id = 586005, gadget_id = 70220005, pos = { x = 2323.555, y = 275.454, z = -1638.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1586003, name = "ANY_GADGET_DIE_586003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_586003", action = "action_EVENT_ANY_GADGET_DIE_586003" },
	{ config_id = 1586004, name = "GADGET_STATE_CHANGE_586004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_586004", action = "action_EVENT_GADGET_STATE_CHANGE_586004", trigger_count = 0 }
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
		gadgets = { 586001, 586002, 586005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_586003", "GADGET_STATE_CHANGE_586004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_586003(context, evt)
	if 586002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_586003(context, evt)
	-- 将configid为 586001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 586001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2012, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_586004(context, evt)
	if 586001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_586004(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end