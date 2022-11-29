-- 基础信息
local base_info = {
	group_id = 235846035
}

-- DEFS_MISCS
local defs = {

challenge_id = 2010054,
    --是否教学关
    is_tutorial = 1,

    --起始操作台
    starter = 35020,
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

        [1] = { monsters = {35016}, min = 1, max = 1},
        [2] = { monsters = {35017}, min = 1, max = 1},
        [3] = { monsters = {35001,35003,35009}, min = 3, max = 3},

    },
    --怪物潮随机表
    --随机固定顺序怪物潮组合 每次进地城随机取key。
    --key对应value代表依序出现的MonsterTide，小花括号内配置复数个表示同时刷出。
    rand_table = {
        [1] = 
        {
            {1},
            {2},
            {3}
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
	[35001] = { config_id = 35001, monster_id = 21011201, pos = { x = 2422.949, y = 532.750, z = -1787.678 }, rot = { x = 0.000, y = 317.653, z = 0.000 }, level = 1 },
	[35003] = { config_id = 35003, monster_id = 21010402, pos = { x = 2424.612, y = 533.019, z = -1783.986 }, rot = { x = 0.000, y = 241.581, z = 0.000 }, level = 13, drop_id = 1000100 },
	[35009] = { config_id = 35009, monster_id = 21010402, pos = { x = 2424.008, y = 533.028, z = -1793.631 }, rot = { x = 0.000, y = 290.225, z = 0.000 }, level = 13, drop_id = 1000100 },
	[35016] = { config_id = 35016, monster_id = 20011401, pos = { x = 2423.347, y = 533.220, z = -1785.154 }, rot = { x = 0.000, y = 270.522, z = 0.000 }, level = 1 },
	[35017] = { config_id = 35017, monster_id = 21011201, pos = { x = 2423.429, y = 533.177, z = -1791.370 }, rot = { x = 0.000, y = 306.308, z = 0.000 }, level = 13, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[35010] = { config_id = 35010, gadget_id = 70310322, pos = { x = 2379.884, y = 540.147, z = -1761.266 }, rot = { x = 0.000, y = 343.975, z = 0.000 }, level = 1 },
	[35011] = { config_id = 35011, gadget_id = 70220118, pos = { x = 2379.884, y = 540.147, z = -1761.266 }, rot = { x = 0.000, y = 343.975, z = 0.000 }, level = 1 },
	-- 植物B
	[35012] = { config_id = 35012, gadget_id = 70220112, pos = { x = 2380.002, y = 540.233, z = -1757.205 }, rot = { x = 2.577, y = 234.901, z = 357.605 }, level = 1, interact_id = 64 },
	[35020] = { config_id = 35020, gadget_id = 70360010, pos = { x = 2425.368, y = 532.880, z = -1787.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 24 } } },
	-- 空气墙
	[35021] = { config_id = 35021, gadget_id = 70710399, pos = { x = 2426.350, y = 532.880, z = -1787.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- P2黄点
	[35023] = { config_id = 35023, gadget_id = 70900201, pos = { x = 2425.368, y = 532.880, z = -1787.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[35024] = { config_id = 35024, gadget_id = 70310322, pos = { x = 2422.364, y = 533.026, z = -1792.272 }, rot = { x = 0.000, y = 343.975, z = 0.000 }, level = 1 },
	-- 植物A
	[35035] = { config_id = 35035, gadget_id = 70220112, pos = { x = 2417.641, y = 533.140, z = -1787.537 }, rot = { x = 3.512, y = 274.568, z = 359.800 }, level = 1, interact_id = 64 },
	[35036] = { config_id = 35036, gadget_id = 70310322, pos = { x = 2424.521, y = 533.078, z = -1781.043 }, rot = { x = 0.000, y = 54.994, z = 0.000 }, level = 1 },
	[35045] = { config_id = 35045, gadget_id = 70220118, pos = { x = 2424.462, y = 533.078, z = -1781.490 }, rot = { x = 0.000, y = 54.994, z = 0.000 }, level = 1 },
	[35046] = { config_id = 35046, gadget_id = 70220118, pos = { x = 2421.803, y = 533.075, z = -1792.051 }, rot = { x = 0.000, y = 332.020, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 图文教学1
	[35018] = { config_id = 35018, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2382.329, y = 539.542, z = -1763.567 } }
}

-- 触发器
triggers = {
	-- B
	{ config_id = 1035002, name = "GADGET_STATE_CHANGE_35002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_35002", action = "action_EVENT_GADGET_STATE_CHANGE_35002", trigger_count = 0 },
	-- B-创时间轴-WindTimeB
	{ config_id = 1035005, name = "GADGET_STATE_CHANGE_35005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_35005", action = "action_EVENT_GADGET_STATE_CHANGE_35005", trigger_count = 0 },
	-- B
	{ config_id = 1035006, name = "TIME_AXIS_PASS_35006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_35006", action = "action_EVENT_TIME_AXIS_PASS_35006", trigger_count = 0 },
	-- 图文教学1
	{ config_id = 1035018, name = "ENTER_REGION_35018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_35018", action = "action_EVENT_ENTER_REGION_35018" },
	{ config_id = 1035025, name = "SELECT_OPTION_35025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_35025", action = "action_EVENT_SELECT_OPTION_35025", trigger_count = 0 },
	-- A
	{ config_id = 1035050, name = "GADGET_STATE_CHANGE_35050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_35050", action = "action_EVENT_GADGET_STATE_CHANGE_35050", trigger_count = 0 },
	-- A-创时间轴-WindTimeA
	{ config_id = 1035052, name = "GADGET_STATE_CHANGE_35052", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_35052", action = "action_EVENT_GADGET_STATE_CHANGE_35052", trigger_count = 0 },
	-- 成功时改变下一个group音符植物状态并且移动黄点
	{ config_id = 1035053, name = "CHALLENGE_SUCCESS_35053", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2010054", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_35053", trigger_count = 0 },
	-- A
	{ config_id = 1035054, name = "TIME_AXIS_PASS_35054", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_35054", action = "action_EVENT_TIME_AXIS_PASS_35054", trigger_count = 0 },
	{ config_id = 1035055, name = "CHALLENGE_FAIL_35055", event = EventType.EVENT_CHALLENGE_FAIL, source = "2010054", condition = "", action = "action_EVENT_CHALLENGE_FAIL_35055", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasTriggeredTarget", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 35004, monster_id = 21020501, pos = { x = 2418.399, y = 533.092, z = -1774.492 }, rot = { x = 0.000, y = 183.204, z = 0.000 }, level = 13, drop_id = 1000100 },
		{ config_id = 35007, monster_id = 21020301, pos = { x = 2419.733, y = 533.073, z = -1797.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_id = 1000100 },
		{ config_id = 35008, monster_id = 21020401, pos = { x = 2416.188, y = 533.213, z = -1800.670 }, rot = { x = 0.000, y = 353.531, z = 0.000 }, level = 13, drop_id = 1000100 },
		{ config_id = 35013, monster_id = 21020301, pos = { x = 2413.888, y = 533.068, z = -1802.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_id = 1000100 },
		{ config_id = 35014, monster_id = 21030201, pos = { x = 2420.593, y = 533.072, z = -1800.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_id = 1000100 },
		{ config_id = 35015, monster_id = 21030201, pos = { x = 2412.679, y = 533.065, z = -1803.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_id = 1000100 },
		{ config_id = 35019, monster_id = 21010402, pos = { x = 2420.593, y = 533.072, z = -1800.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_id = 1000100 }
	},
	gadgets = {
		{ config_id = 35038, gadget_id = 70310321, pos = { x = 2435.097, y = 534.201, z = -1777.282 }, rot = { x = 45.102, y = 273.955, z = 0.000 }, level = 1 },
		{ config_id = 35039, gadget_id = 70220111, pos = { x = 2434.710, y = 533.073, z = -1779.998 }, rot = { x = 0.000, y = 269.963, z = 0.000 }, level = 1, interact_id = 64 },
		{ config_id = 35040, gadget_id = 70220111, pos = { x = 2398.747, y = 533.072, z = -1794.014 }, rot = { x = 0.000, y = 87.133, z = 0.000 }, level = 1, interact_id = 64 },
		{ config_id = 35041, gadget_id = 70310321, pos = { x = 2399.749, y = 534.557, z = -1795.536 }, rot = { x = 40.458, y = 91.642, z = 0.000 }, level = 1 },
		{ config_id = 35042, gadget_id = 70220112, pos = { x = 2417.219, y = 533.161, z = -1787.262 }, rot = { x = 0.000, y = 269.067, z = 0.000 }, level = 1, interact_id = 64 },
		{ config_id = 35043, gadget_id = 70310322, pos = { x = 2410.477, y = 533.076, z = -1780.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 35044, gadget_id = 70310322, pos = { x = 2424.583, y = 533.072, z = -1794.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 35047, gadget_id = 70220118, pos = { x = 2410.477, y = 533.076, z = -1780.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 35048, gadget_id = 70220118, pos = { x = 2424.583, y = 533.072, z = -1794.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	},
	triggers = {
		{ config_id = 1035022, name = "GADGET_STATE_CHANGE_35022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_35022", action = "action_EVENT_GADGET_STATE_CHANGE_35022" },
		{ config_id = 1035051, name = "GADGET_STATE_CHANGE_35051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_35051", action = "action_EVENT_GADGET_STATE_CHANGE_35051", trigger_count = 0 },
		{ config_id = 1035056, name = "GADGET_STATE_CHANGE_35056", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_35056", action = "action_EVENT_GADGET_STATE_CHANGE_35056", trigger_count = 0 },
		{ config_id = 1035057, name = "TIME_AXIS_PASS_35057", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_35057", action = "action_EVENT_TIME_AXIS_PASS_35057", trigger_count = 0 }
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
		gadgets = { 35020, 35023 },
		regions = { 35018 },
		triggers = { "ENTER_REGION_35018", "SELECT_OPTION_35025", "CHALLENGE_SUCCESS_35053", "CHALLENGE_FAIL_35055" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 35021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = wave1,
		monsters = { 35016 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = wave2,
		monsters = { 35017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = wave3,
		monsters = { 35001, 35003, 35009 },
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
		gadgets = { 35010, 35012, 35024, 35035, 35036 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_35002", "GADGET_STATE_CHANGE_35005", "TIME_AXIS_PASS_35006", "GADGET_STATE_CHANGE_35050", "GADGET_STATE_CHANGE_35052", "TIME_AXIS_PASS_35054" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = WindTimeA风场,
		monsters = { },
		gadgets = { 35045, 35046 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = WindTimeB风场,
		monsters = { },
		gadgets = { 35011 },
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
function condition_EVENT_GADGET_STATE_CHANGE_35002(context, evt)
	if 35012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_35002(context, evt)
	-- 将configid为 35010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_35005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 235846035, 35010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_35005(context, evt)
	-- 创建标识为"WindTimeB"，时间节点为{14}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeB", {14}, false)
	
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846035, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_35006(context, evt)
	if "WindTimeB" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_35006(context, evt)
	-- 将configid为 35010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235846035, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_35018(context, evt)
	if evt.param1 ~= 35018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
	        return false
	end
	
	if 0~=ScriptLib.GetExhibitionAccumulableData(context,context.uid,11404109) then
	              return false
	end
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_35018(context, evt)
	ScriptLib.AddExhibitionAccumulableData(context, context.uid,"Activity_SummerTimeV2_Xinyan_Guide1", 1)
	
	ScriptLib.ShowClientTutorial(context,864,{})
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_35025(context, evt)
	-- 判断是gadgetid 35020 option_id 24
	if 35020 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_35025(context, evt)
	-- 将configid为 35020 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35020, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 235846035, EntityType.GADGET, 35023 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 235846035 ；指定config：35020；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 235846035, 35020, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846035, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_35050(context, evt)
	if 35035 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_35050(context, evt)
	-- 将configid为 35024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 35036 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35036, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_35052(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 235846035, 35024) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_35052(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{14}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {14}, false)
	
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846035, 10)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_35053(context, evt)
	-- 将本组内变量名为 "OptionAdd" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "OptionAdd", 1, 235846036) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组235846037中， configid为37005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235846037, 37005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846037, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 235846035, 2)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235846035, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_35054(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_35054(context, evt)
	-- 将configid为 35024 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35024, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 35036 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35036, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235846035, 10)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_35055(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235846035, 10)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235846035, 2)
	
	return 0
end

require "V2_8/DLActivityDungeon"