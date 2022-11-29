-- 基础信息
local base_info = {
	group_id = 133310085
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 85006, monster_id = 26090101, pos = { x = -2445.471, y = 261.170, z = 4123.863 }, rot = { x = 0.000, y = 303.596, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 85001, gadget_id = 70211101, pos = { x = -2445.341, y = 261.429, z = 4122.570 }, rot = { x = 9.860, y = 5.845, z = 8.045 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 85002, gadget_id = 70330340, pos = { x = -2445.258, y = 260.808, z = 4122.687 }, rot = { x = 2.601, y = 351.914, z = 0.695 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 85005, gadget_id = 70330435, pos = { x = -2466.736, y = 253.194, z = 4159.634 }, rot = { x = 0.296, y = 27.711, z = 5.198 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1085003, name = "ANY_GADGET_DIE_85003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_85003", action = "action_EVENT_ANY_GADGET_DIE_85003", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1085004, name = "GADGET_STATE_CHANGE_85004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_85004", action = "", trigger_count = 0 },
		{ config_id = 1085007, name = "ANY_GADGET_DIE_85007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_85007", action = "action_EVENT_ANY_GADGET_DIE_85007", trigger_count = 0 }
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
		gadgets = { 85001, 85002, 85005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_85003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_85003(context, evt)
	if 85002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_85003(context, evt)
	-- 将configid为 85001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 85006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2012, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end