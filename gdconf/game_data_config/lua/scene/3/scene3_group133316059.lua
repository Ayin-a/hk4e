-- 基础信息
local base_info = {
	group_id = 133316059
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
	{ config_id = 59001, gadget_id = 70350433, pos = { x = 915.725, y = 145.621, z = 6390.941 }, rot = { x = 0.000, y = 328.277, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 59002, gadget_id = 70330404, pos = { x = 912.833, y = 142.596, z = 6391.897 }, rot = { x = 0.011, y = 272.607, z = 359.986 }, level = 1, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1059003, name = "GADGET_STATE_CHANGE_59003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59003", action = "action_EVENT_GADGET_STATE_CHANGE_59003" }
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
		gadgets = { 59001, 59002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_59003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 设置指定group中指定gadget的state
function TLA_set_gadget_state_by_groupid_configid(context, evt, config_id, group_id, state)
	-- 改变指定group组group_id中， configid为config_id的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, config_id, state) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59003(context, evt)
	if 59002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59003(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,59001, GadgetState.GearStart)
	
	TLA_set_gadget_state_by_groupid_configid(context, evt, 91001, 133316091, GadgetState.Default)
	
	return 0
end