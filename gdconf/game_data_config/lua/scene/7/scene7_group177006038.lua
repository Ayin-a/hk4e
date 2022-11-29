-- 基础信息
local base_info = {
	group_id = 177006038
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 38001, monster_id = 20060401, pos = { x = 218.872, y = 173.506, z = -411.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1006 }, pose_id = 101, area_id = 210 },
	{ config_id = 38010, monster_id = 20060401, pos = { x = 221.675, y = 173.967, z = -418.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1006 }, pose_id = 101, area_id = 210 },
	{ config_id = 38011, monster_id = 20060601, pos = { x = 225.879, y = 173.293, z = -410.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1006 }, pose_id = 101, area_id = 210 },
	{ config_id = 38014, monster_id = 20060501, pos = { x = 218.662, y = 173.525, z = -411.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1006 }, pose_id = 101, area_id = 210 },
	{ config_id = 38015, monster_id = 20060501, pos = { x = 221.465, y = 173.966, z = -418.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1006 }, pose_id = 101, area_id = 210 },
	{ config_id = 38016, monster_id = 20060601, pos = { x = 228.680, y = 173.849, z = -417.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1006 }, pose_id = 101, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 38002, gadget_id = 70330139, pos = { x = 222.599, y = 173.593, z = -414.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearAction2, persistent = true, area_id = 210 },
	{ config_id = 38003, gadget_id = 70211161, pos = { x = 207.955, y = 174.292, z = -421.068 }, rot = { x = 0.000, y = 238.360, z = 0.000 }, level = 26, drop_tag = "渊下宫活动中级稻妻", isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1038005, name = "GROUP_LOAD_38005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_38005", action = "action_EVENT_GROUP_LOAD_38005", trigger_count = 0 },
	{ config_id = 1038006, name = "CHALLENGE_SUCCESS_38006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_38006", trigger_count = 0 },
	{ config_id = 1038007, name = "CHALLENGE_FAIL_38007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_38007", trigger_count = 0 },
	{ config_id = 1038008, name = "GADGET_STATE_CHANGE_38008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38008", action = "action_EVENT_GADGET_STATE_CHANGE_38008", trigger_count = 0 },
	{ config_id = 1038009, name = "SELECT_OPTION_38009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_38009", action = "action_EVENT_SELECT_OPTION_38009", trigger_count = 0 },
	{ config_id = 1038012, name = "ANY_MONSTER_DIE_38012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38012", action = "action_EVENT_ANY_MONSTER_DIE_38012" },
	{ config_id = 1038018, name = "GADGET_CREATE_38018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_38018", action = "action_EVENT_GADGET_CREATE_38018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 38004, gadget_id = 70360001, pos = { x = 222.590, y = 173.660, z = -414.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 }
	},
	triggers = {
		{ config_id = 1038013, name = "VARIABLE_CHANGE_38013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_38013", action = "action_EVENT_VARIABLE_CHANGE_38013", trigger_count = 0 },
		{ config_id = 1038017, name = "GADGET_CREATE_38017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_38017", action = "action_EVENT_GADGET_CREATE_38017" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 38002 },
		regions = { },
		triggers = { "GROUP_LOAD_38005", "CHALLENGE_SUCCESS_38006", "CHALLENGE_FAIL_38007", "GADGET_STATE_CHANGE_38008", "SELECT_OPTION_38009", "GADGET_CREATE_38018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 38001, 38010, 38011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_38012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 38014, 38015, 38016 },
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
function condition_EVENT_GROUP_LOAD_38005(context, evt)
	-- 判断变量"isFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_38005(context, evt)
	-- 将configid为 38002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177006038, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177006038, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_38006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 38002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为38003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 38003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_38007(context, evt)
	-- 将configid为 38002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177006038, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177006038, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_38008(context, evt)
	if 38002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_38009(context, evt)
	-- 判断是gadgetid 38002 option_id 177
	if 38002 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_38009(context, evt)
	-- 创建编号为180（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 120, 177006038, 6, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177006038, 2)
	
	-- 删除指定group： 177006038 ；指定config：38002；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 177006038, 38002, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 38002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177006038, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_38018(context, evt)
	if 38002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_38018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end