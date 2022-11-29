-- 基础信息
local base_info = {
	group_id = 133308201
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
	{ config_id = 201001, gadget_id = 70211101, pos = { x = -1658.823, y = 284.930, z = 3961.057 }, rot = { x = 13.013, y = 357.441, z = 14.802 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 201002, gadget_id = 70330340, pos = { x = -1659.167, y = 285.008, z = 3960.255 }, rot = { x = 14.448, y = 356.187, z = 5.144 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 26 },
	{ config_id = 201005, gadget_id = 70330435, pos = { x = -1679.468, y = 280.133, z = 3972.183 }, rot = { x = 345.193, y = 118.677, z = 357.912 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1201003, name = "ANY_GADGET_DIE_201003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_201003", action = "action_EVENT_ANY_GADGET_DIE_201003", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1201004, name = "GADGET_STATE_CHANGE_201004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_201004", action = "action_EVENT_GADGET_STATE_CHANGE_201004", trigger_count = 0 }
	}
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
		gadgets = { 201001, 201002, 201005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_201003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_201003(context, evt)
	if 201002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_201003(context, evt)
	-- 将configid为 201001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 201001, GadgetState.Default) then
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