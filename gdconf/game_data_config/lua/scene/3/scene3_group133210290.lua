-- 基础信息
local base_info = {
	group_id = 133210290
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133210290,
	gadget_1 = 290001,
	gadget_2 = 290002,
	gadget_3 = 290003,
	gadget_4 = 0,
	gadget_5 = 0
}

-- DEFS_MISCS


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
	[290001] = { config_id = 290001, gadget_id = 70330075, pos = { x = -3767.921, y = 204.230, z = -1242.872 }, rot = { x = 5.114, y = 135.945, z = 6.164 }, level = 30, state = GadgetState.Action01, area_id = 17 },
	[290002] = { config_id = 290002, gadget_id = 70330075, pos = { x = -3765.963, y = 202.565, z = -1233.281 }, rot = { x = 8.635, y = 77.982, z = 0.603 }, level = 30, state = GadgetState.Action02, area_id = 17 },
	[290003] = { config_id = 290003, gadget_id = 70330075, pos = { x = -3774.300, y = 200.061, z = -1228.997 }, rot = { x = 1.335, y = 9.258, z = 2.936 }, level = 30, state = GadgetState.Action03, area_id = 17 },
	[290006] = { config_id = 290006, gadget_id = 70211101, pos = { x = -3769.888, y = 200.822, z = -1233.355 }, rot = { x = 2.483, y = 272.593, z = 354.206 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1290007, name = "VARIABLE_CHANGE_290007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_290007", action = "action_EVENT_VARIABLE_CHANGE_290007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetState", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1290004, name = "GADGET_STATE_CHANGE_290004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "290001", condition = "condition_EVENT_GADGET_STATE_CHANGE_290004", action = "action_EVENT_GADGET_STATE_CHANGE_290004", trigger_count = 0 }
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
		gadgets = { 290001, 290002, 290003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 290006 },
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
function condition_EVENT_VARIABLE_CHANGE_290007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	if 9010 == ScriptLib.GetGadgetStateByConfigId(context, 133210290, 290001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_290007(context, evt)
	-- 将configid为 290001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 290001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 290002 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 290002, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 290003 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 290003, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "successed" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "successed", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210290, 2)
	
	return 0
end

require "BlackBoxPlay/LightResonanceStone"