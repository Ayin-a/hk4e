-- 基础信息
local base_info = {
	group_id = 133101090
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
	{ config_id = 90001, gadget_id = 70360007, pos = { x = 1607.177, y = 201.262, z = 1143.185 }, rot = { x = 353.387, y = 177.533, z = 357.777 }, level = 19, area_id = 5 },
	{ config_id = 90002, gadget_id = 70211111, pos = { x = 1663.877, y = 230.128, z = 1348.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 90007, gadget_id = 70690006, pos = { x = 1622.319, y = 193.542, z = 1152.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 90008, gadget_id = 70690006, pos = { x = 1655.885, y = 199.247, z = 1206.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 90009, gadget_id = 70690001, pos = { x = 1628.229, y = 220.110, z = 1164.848 }, rot = { x = 9.687, y = 38.088, z = 2.117 }, level = 1, area_id = 5 },
	{ config_id = 90010, gadget_id = 70690001, pos = { x = 1635.383, y = 218.130, z = 1173.976 }, rot = { x = 9.687, y = 38.088, z = 2.117 }, level = 1, area_id = 5 },
	{ config_id = 90011, gadget_id = 70690001, pos = { x = 1643.941, y = 215.762, z = 1184.896 }, rot = { x = 9.687, y = 38.088, z = 2.117 }, level = 1, area_id = 5 },
	{ config_id = 90012, gadget_id = 70690006, pos = { x = 1679.620, y = 193.787, z = 1233.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 90013, gadget_id = 70690001, pos = { x = 1663.302, y = 219.248, z = 1214.633 }, rot = { x = 9.529, y = 41.858, z = 2.747 }, level = 1, area_id = 5 },
	{ config_id = 90014, gadget_id = 70690001, pos = { x = 1670.191, y = 216.387, z = 1222.243 }, rot = { x = 20.680, y = 42.426, z = 2.895 }, level = 1, area_id = 5 },
	{ config_id = 90015, gadget_id = 70690001, pos = { x = 1681.230, y = 217.736, z = 1234.670 }, rot = { x = 322.501, y = 39.322, z = 3.415 }, level = 1, area_id = 5 },
	{ config_id = 90016, gadget_id = 70690001, pos = { x = 1685.605, y = 223.033, z = 1240.010 }, rot = { x = 322.501, y = 39.322, z = 3.415 }, level = 1, area_id = 5 },
	{ config_id = 90017, gadget_id = 70690001, pos = { x = 1689.678, y = 228.505, z = 1245.972 }, rot = { x = 323.337, y = 29.822, z = 9.151 }, level = 1, area_id = 5 },
	{ config_id = 90018, gadget_id = 70690001, pos = { x = 1692.497, y = 232.596, z = 1250.655 }, rot = { x = 324.082, y = 24.892, z = 12.071 }, level = 1, area_id = 5 },
	{ config_id = 90019, gadget_id = 70690006, pos = { x = 1693.005, y = 214.693, z = 1266.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 90020, gadget_id = 70690001, pos = { x = 1694.384, y = 238.703, z = 1277.119 }, rot = { x = 0.000, y = 357.781, z = 355.377 }, level = 1, area_id = 5 },
	{ config_id = 90021, gadget_id = 70690001, pos = { x = 1694.157, y = 238.992, z = 1286.641 }, rot = { x = 0.000, y = 357.781, z = 355.377 }, level = 1, area_id = 5 },
	{ config_id = 90022, gadget_id = 70690001, pos = { x = 1692.097, y = 239.122, z = 1298.204 }, rot = { x = 359.214, y = 348.012, z = 355.444 }, level = 1, area_id = 5 },
	{ config_id = 90023, gadget_id = 70690001, pos = { x = 1688.056, y = 239.415, z = 1308.937 }, rot = { x = 358.406, y = 337.650, z = 355.660 }, level = 1, area_id = 5 },
	{ config_id = 90024, gadget_id = 70690001, pos = { x = 1683.102, y = 239.784, z = 1318.957 }, rot = { x = 357.846, y = 330.053, z = 355.909 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1090003, name = "GADGET_STATE_CHANGE_90003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90003", action = "action_EVENT_GADGET_STATE_CHANGE_90003" },
	{ config_id = 1090004, name = "GADGET_STATE_CHANGE_90004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90004", action = "action_EVENT_GADGET_STATE_CHANGE_90004", trigger_count = 0 },
	{ config_id = 1090005, name = "GADGET_STATE_CHANGE_90005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90005", action = "action_EVENT_GADGET_STATE_CHANGE_90005", trigger_count = 0 },
	{ config_id = 1090006, name = "GADGET_CREATE_90006", event = EventType.EVENT_GADGET_CREATE, source = "111", condition = "condition_EVENT_GADGET_CREATE_90006", action = "action_EVENT_GADGET_CREATE_90006", trigger_count = 0 }
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
	end_suite = 3,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 90001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_90003", "GADGET_STATE_CHANGE_90004", "GADGET_STATE_CHANGE_90005", "GADGET_CREATE_90006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 90002, 90007, 90008, 90009, 90010, 90011, 90012, 90013, 90014, 90015, 90016, 90017, 90018, 90019, 90020, 90021, 90022, 90023, 90024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_90003(context, evt)
	if 90002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90004(context, evt)
	if 90001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101090, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90005(context, evt)
	if 90001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90005(context, evt)
	-- 将configid为 90002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101090, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_90006(context, evt)
	if 90001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_90006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101090, 2)
	
	return 0
end