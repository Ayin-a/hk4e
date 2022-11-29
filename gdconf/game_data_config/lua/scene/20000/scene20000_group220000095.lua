-- 基础信息
local base_info = {
	group_id = 220000095
}

-- DEFS_MISCS
function Avatar_Eula_Plot_Fail(context)
        ScriptLib.SetGroupVariableValue(context, "youla", 1)
        ScriptLib.PrintContextLog(context, "youla fail")
        return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 95001, monster_id = 20010801, pos = { x = 130.575, y = 0.540, z = 479.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 95002, monster_id = 20010801, pos = { x = 132.826, y = 0.540, z = 475.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 95003, monster_id = 20010901, pos = { x = 122.300, y = 0.540, z = 478.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 95004, monster_id = 20011001, pos = { x = 120.860, y = 0.540, z = 478.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 95005, monster_id = 20011001, pos = { x = 122.376, y = 0.540, z = 480.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 95006, monster_id = 20010901, pos = { x = 126.296, y = 0.540, z = 484.127 }, rot = { x = 0.000, y = 186.835, z = 0.000 }, level = 1 },
	{ config_id = 95007, monster_id = 20011101, pos = { x = 128.346, y = 0.540, z = 483.977 }, rot = { x = 0.000, y = 201.423, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 95008, gadget_id = 70350081, pos = { x = 126.499, y = 0.540, z = 476.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 95009, gadget_id = 70360001, pos = { x = 126.584, y = 2.209, z = 476.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1095010, name = "GADGET_CREATE_95010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_95010", action = "action_EVENT_GADGET_CREATE_95010" },
	{ config_id = 1095011, name = "SELECT_OPTION_95011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_95011", action = "action_EVENT_SELECT_OPTION_95011" },
	{ config_id = 1095012, name = "ANY_MONSTER_DIE_95012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95012", action = "action_EVENT_ANY_MONSTER_DIE_95012" },
	{ config_id = 1095013, name = "VARIABLE_CHANGE_95013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_95013", action = "action_EVENT_VARIABLE_CHANGE_95013", tag = "666" },
	{ config_id = 1095014, name = "ANY_MONSTER_DIE_95014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95014", action = "action_EVENT_ANY_MONSTER_DIE_95014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "youla", value = 0, no_refresh = false }
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
		gadgets = { 95008, 95009 },
		regions = { },
		triggers = { "GADGET_CREATE_95010", "SELECT_OPTION_95011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 95001, 95002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_95012", "VARIABLE_CHANGE_95013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 95003, 95004, 95005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_95014" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 95006, 95007 },
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
function condition_EVENT_GADGET_CREATE_95010(context, evt)
	if 95009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_95010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220000095, 95009, {2902}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "youla" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "youla", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_95011(context, evt)
	-- 判断是gadgetid 95009 option_id 2902
	if 95009 ~= evt.param1 then
		return false	
	end
	
	if 2902 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_95011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220000095, 2)
	
	-- 删除指定group： 220000095 ；指定config：94002；物件身上指定option：2902；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220000095, 95009, 2902) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 开启编号为888，挑战内容为2的区域挑战
	ScriptLib.CreateFatherChallenge(context, 10121, 2008, 180, {success = 1, fail =1})
	ScriptLib.AttachChildChallenge(context, 10121, 10, 2,{180, 220000095, 7},{}, {success=1,fail=1})
	ScriptLib.AttachChildChallenge(context, 10121, 11, 224,{180, 3, 666, 1},{}, {success=0, fail=1})
	ScriptLib.AttachChildChallenge(context, 10121, 12, 225,{180, 3, 666, 1},{}, {success=0, fail=1})
	ScriptLib.StartFatherChallenge(context, 10121)
	
	-- 将本组内变量名为 "youla" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "youla", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_95012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220000095, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_95013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"youla"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "youla", 220000095) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_95013(context, evt)
	-- 终止识别id为11的挑战，并判定失败
		ScriptLib.StopChallenge(context, 11, 0)
	
	-- 终止识别id为12的挑战，并判定失败
		ScriptLib.StopChallenge(context, 12, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_95014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95014(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220000095, 4)
	
	return 0
end