-- 基础信息
local base_info = {
	group_id = 111101021
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
	{ config_id = 21001, gadget_id = 70211112, pos = { x = 2509.937, y = 213.427, z = -1325.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 21002, gadget_id = 70380002, pos = { x = 2511.785, y = 215.710, z = -1328.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, route_id = 110100009, persistent = true },
	{ config_id = 21003, gadget_id = 70380002, pos = { x = 2509.698, y = 215.693, z = -1328.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, route_id = 110100010, persistent = true },
	{ config_id = 21004, gadget_id = 70380002, pos = { x = 2507.452, y = 215.593, z = -1328.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, route_id = 110100011, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021005, name = "ANY_GADGET_DIE_21005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_21005", action = "action_EVENT_ANY_GADGET_DIE_21005" }
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
		gadgets = { 21001, 21002, 21003, 21004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_21005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_21005(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 111101021}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_21005(context, evt)
	-- 将configid为 21001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21001, GadgetState.Default) then
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