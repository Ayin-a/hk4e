-- 基础信息
local base_info = {
	group_id = 235846036
}

-- DEFS_MISCS
local defs = {
challenge_id = 2010054,
    --是否教学关
    is_tutorial = 1,
    --起始操作台
    starter = 36020,
    --起始操作台选项
    option_id = 24,
    --波次之间延时 秒
    delay = 3,
    --挑战总时限 秒
    time_limit = 120,

    --怪物潮信息
    --monsters填入怪物configID，
    --当场上本列表的怪数量小于min时触发补怪，补至max。max勿超过mosnters数量
    --spec_event:随着本怪物潮的出现而发生的关卡事件。为LD约定好的枚举。
    tide_cfg = {

        [1] = { monsters = {36001}, min = 1, max = 1},
        [2] = { monsters = {36002,36012,36011}, min = 3, max = 3},


    },
    --怪物潮随机表
    --随机固定顺序怪物潮组合 每次进地城随机取key。
    --key对应value代表依序出现的MonsterTide，小花括号内配置复数个表示同时刷出。
    rand_table = {
        [1] = 
        {
            {1},
            {2}
        },
    },
    --谁的地城 1-万叶 2-辛焱 3-菲谢尔 4-莫娜
    type =2 ,

    --莫娜、辛焱需配这里-随机suite池
    rand_suites = {9},

}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[36001] = { config_id = 36001, monster_id = 20011501, pos = { x = 2523.851, y = 552.793, z = -1717.573 }, rot = { x = 0.000, y = 267.275, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	[36002] = { config_id = 36002, monster_id = 21011201, pos = { x = 2523.917, y = 552.783, z = -1722.524 }, rot = { x = 0.000, y = 300.365, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	[36011] = { config_id = 36011, monster_id = 20011501, pos = { x = 2523.531, y = 552.781, z = -1719.498 }, rot = { x = 0.000, y = 273.798, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	[36012] = { config_id = 36012, monster_id = 21011201, pos = { x = 2523.929, y = 552.783, z = -1716.500 }, rot = { x = 0.000, y = 257.238, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- P4黄点
	[36005] = { config_id = 36005, gadget_id = 70900201, pos = { x = 2522.491, y = 552.785, z = -1718.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[36010] = { config_id = 36010, gadget_id = 70710399, pos = { x = 2522.390, y = 552.785, z = -1718.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[36020] = { config_id = 36020, gadget_id = 70360010, pos = { x = 2522.525, y = 552.597, z = -1718.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 24 } } },
	[36031] = { config_id = 36031, gadget_id = 70310321, pos = { x = 2514.772, y = 552.313, z = -1713.457 }, rot = { x = 5.731, y = 110.220, z = 354.610 }, level = 1 },
	[36032] = { config_id = 36032, gadget_id = 70220111, pos = { x = 2514.208, y = 552.231, z = -1715.901 }, rot = { x = 356.706, y = 108.423, z = 355.159 }, level = 1, interact_id = 64 }
}

-- 区域
regions = {
	[36003] = { config_id = 36003, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2522.223, y = 552.788, z = -1714.687 } }
}

-- 触发器
triggers = {
	{ config_id = 1036003, name = "ENTER_REGION_36003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36003", action = "action_EVENT_ENTER_REGION_36003" },
	{ config_id = 1036017, name = "VARIABLE_CHANGE_36017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36017", action = "action_EVENT_VARIABLE_CHANGE_36017", trigger_count = 0 },
	{ config_id = 1036018, name = "GROUP_LOAD_36018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_36018", action = "action_EVENT_GROUP_LOAD_36018", trigger_count = 0 },
	{ config_id = 1036021, name = "GROUP_REFRESH_36021", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_36021", action = "action_EVENT_GROUP_REFRESH_36021", trigger_count = 0 },
	{ config_id = 1036049, name = "SELECT_OPTION_36049", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36049", action = "action_EVENT_SELECT_OPTION_36049", trigger_count = 0 },
	-- 第一次成功就把黄点切换
	{ config_id = 1036053, name = "CHALLENGE_SUCCESS_36053", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2010054", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_36053", trigger_count = 0 },
	-- 移除suite10
	{ config_id = 1036055, name = "CHALLENGE_FAIL_36055", event = EventType.EVENT_CHALLENGE_FAIL, source = "2010054", condition = "", action = "action_EVENT_CHALLENGE_FAIL_36055", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "OptionAdd", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 36004, monster_id = 21020501, pos = { x = 2525.030, y = 552.719, z = -1703.052 }, rot = { x = 0.000, y = 183.204, z = 0.000 }, level = 13, drop_id = 1000100 },
		{ config_id = 36006, monster_id = 20011401, pos = { x = 2523.221, y = 552.789, z = -1717.653 }, rot = { x = 0.000, y = 229.350, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
		{ config_id = 36007, monster_id = 21020301, pos = { x = 2526.364, y = 552.700, z = -1726.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_id = 1000100 },
		{ config_id = 36008, monster_id = 21020501, pos = { x = 2522.819, y = 552.840, z = -1729.230 }, rot = { x = 0.000, y = 353.531, z = 0.000 }, level = 13, drop_id = 1000100 },
		{ config_id = 36009, monster_id = 21011201, pos = { x = 2523.079, y = 552.789, z = -1715.497 }, rot = { x = 0.000, y = 236.810, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
		{ config_id = 36013, monster_id = 21020301, pos = { x = 2520.519, y = 552.696, z = -1730.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_id = 1000100 },
		{ config_id = 36014, monster_id = 21030201, pos = { x = 2527.224, y = 552.700, z = -1728.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_id = 1000100 },
		{ config_id = 36015, monster_id = 20011502, pos = { x = 2519.310, y = 552.693, z = -1732.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_id = 1000100 },
		{ config_id = 36016, monster_id = 21011201, pos = { x = 2524.711, y = 552.789, z = -1720.578 }, rot = { x = 0.000, y = 286.323, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
		{ config_id = 36019, monster_id = 21010402, pos = { x = 2527.224, y = 552.700, z = -1728.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_id = 1000100 }
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
		gadgets = { },
		regions = { 36003 },
		triggers = { "ENTER_REGION_36003", "VARIABLE_CHANGE_36017", "GROUP_LOAD_36018", "GROUP_REFRESH_36021", "SELECT_OPTION_36049", "CHALLENGE_SUCCESS_36053", "CHALLENGE_FAIL_36055" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 36005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = wave1,
		monsters = { 36001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = wave2,
		monsters = { 36002, 36011, 36012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = wave3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = wave4,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = wave5,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = wave6,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 传音花Layout1,
		monsters = { },
		gadgets = { 36031, 36032 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 战斗区域空气墙,
		monsters = { },
		gadgets = { 36010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 元素操作台,
		monsters = { },
		gadgets = { 36020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
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
function condition_EVENT_ENTER_REGION_36003(context, evt)
	if evt.param1 ~= 36003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
	        return false
	end
	
	if 0~=ScriptLib.GetExhibitionAccumulableData(context,context.uid,11404110) then
	              return false
	end
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36003(context, evt)
	ScriptLib.AddExhibitionAccumulableData(context, context.uid,"Activity_SummerTimeV2_Xinyan_Guide2", 1)
	
	ScriptLib.ShowClientTutorial(context,865,{})
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"OptionAdd"为1
	if ScriptLib.GetGroupVariableValue(context, "OptionAdd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36017(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846036, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_36018(context, evt)
	-- 判断变量"OptionAdd"为1
	if ScriptLib.GetGroupVariableValue(context, "OptionAdd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_36018(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846036, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_36021(context, evt)
	-- 判断变量"OptionAdd"为1
	if ScriptLib.GetGroupVariableValue(context, "OptionAdd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_36021(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846036, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36049(context, evt)
	-- 判断是gadgetid 36020 option_id 24
	if 36020 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36049(context, evt)
	-- 将configid为 36020 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36020, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846036, 10)
	
	-- 删除指定group： 235846036 ；指定config：36020；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 235846036, 36020, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 235846036, EntityType.GADGET, 36005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_36053(context, evt)
	-- 将本组内变量名为 "OptionAdd" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "OptionAdd", 1, 235846019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组235846038中， configid为38004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235846038, 38004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846038, 3)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 235846036, 10)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_36055(context, evt)
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 235846036, 10)
	
	return 0
end

require "V2_8/DLActivityDungeon"