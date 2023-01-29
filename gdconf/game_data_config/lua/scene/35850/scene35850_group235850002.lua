-- 基础信息
local base_info = {
	group_id = 235850002
}

-- DEFS_MISCS
local defs = {
    --起始操作台
    starter = 2001,
    --起始操作台选项
    option_id = 94,
    --波次之间延时 秒
    delay = 3,
    --挑战总时限 秒
    time_limit = 300,

    --怪物潮信息
    --monsters填入怪物configID，
    --当场上本列表的怪数量小于min时触发补怪，补至max。max勿超过mosnters数量
    --spec_event:随着本怪物潮的出现而发生的关卡事件。为LD约定好的枚举。
    tide_cfg = {

        [1] = { monsters = {2012,2013,2014,2015}, min = 4, max = 4},
    },
    --怪物潮随机表
    --随机固定顺序怪物潮组合 每次进地城随机取key。
    --key对应value代表依序出现的MonsterTide，小花括号内配置复数个表示同时刷出。
    rand_table = {
        [1] = 
        {
            {1},
        },

    },
    --谁的地城 1-万叶 2-辛焱 3-菲谢尔 4-莫娜
    type = 3,

    --莫娜、辛焱需配这里-随机suite池
    rand_suites = {},

    --万叶、菲谢尔需配这里-生成buff随机点位configIDs
    point_list = {2010},
    --万叶、菲谢尔需配这里-buff物件池
    buff_pool = {2002},
    --万叶、菲谢尔需配这里-buff物件每次刷几个
    buff_count = 1,
    --万叶、菲谢尔需配这里-限定buff物件池
    buff_pool_spec = {},
    --是否教学关
    is_tutorial = 1,
    challenge_id = 2010056,
    crow_id = {2017,2020,2021,2022,2023},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[2012] = { config_id = 2012, monster_id = 21020101, pos = { x = -27.954, y = 84.843, z = 22.572 }, rot = { x = 0.000, y = 103.763, z = 0.000 }, level = 1 },
	[2013] = { config_id = 2013, monster_id = 21020201, pos = { x = -26.510, y = 84.843, z = 18.996 }, rot = { x = 0.000, y = 76.400, z = 0.000 }, level = 1 },
	[2014] = { config_id = 2014, monster_id = 21010201, pos = { x = -21.704, y = 84.843, z = 16.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2015] = { config_id = 2015, monster_id = 21010201, pos = { x = -24.578, y = 84.843, z = 28.422 }, rot = { x = 0.000, y = 133.751, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[2001] = { config_id = 2001, gadget_id = 70360010, pos = { x = -20.516, y = 84.580, z = 22.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 24, worktop_config = { init_options = { 94 } } },
	[2002] = { config_id = 2002, gadget_id = 70310324, pos = { x = -12.621, y = 84.843, z = 22.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2003] = { config_id = 2003, gadget_id = 70950010, pos = { x = -5.890, y = 84.827, z = 1.285 }, rot = { x = 0.000, y = 269.903, z = 0.000 }, level = 1 },
	[2004] = { config_id = 2004, gadget_id = 70950010, pos = { x = -5.847, y = 84.905, z = 15.808 }, rot = { x = 0.000, y = 270.687, z = 0.000 }, level = 1 },
	[2005] = { config_id = 2005, gadget_id = 70950010, pos = { x = -5.674, y = 84.711, z = 30.229 }, rot = { x = 0.000, y = 270.687, z = 0.000 }, level = 1 },
	[2006] = { config_id = 2006, gadget_id = 70950010, pos = { x = -5.554, y = 84.627, z = 40.243 }, rot = { x = 0.000, y = 270.687, z = 0.000 }, level = 1 },
	[2007] = { config_id = 2007, gadget_id = 70950010, pos = { x = -23.289, y = 84.845, z = 46.514 }, rot = { x = 0.000, y = 179.803, z = 0.000 }, level = 1 },
	[2008] = { config_id = 2008, gadget_id = 70950010, pos = { x = -23.098, y = 84.772, z = -14.176 }, rot = { x = 0.000, y = 359.867, z = 0.000 }, level = 1 },
	[2009] = { config_id = 2009, gadget_id = 70950010, pos = { x = -38.692, y = 84.991, z = 22.141 }, rot = { x = 0.000, y = 90.255, z = 0.000 }, level = 1 },
	[2010] = { config_id = 2010, gadget_id = 70350085, pos = { x = -12.734, y = 84.843, z = 22.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2017] = { config_id = 2017, gadget_id = 44000431, pos = { x = -28.757, y = 88.847, z = 19.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2020] = { config_id = 2020, gadget_id = 44000431, pos = { x = -28.757, y = 88.847, z = 19.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2021] = { config_id = 2021, gadget_id = 44000431, pos = { x = -28.757, y = 88.847, z = 19.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2022] = { config_id = 2022, gadget_id = 44000431, pos = { x = -28.757, y = 88.847, z = 19.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2023] = { config_id = 2023, gadget_id = 44000431, pos = { x = -28.757, y = 88.847, z = 19.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[2018] = { config_id = 2018, shape = RegionShape.SPHERE, radius = 5, pos = { x = -21.055, y = 84.843, z = 22.473 } }
}

-- 触发器
triggers = {
	{ config_id = 1002011, name = "SELECT_OPTION_2011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2011", action = "action_EVENT_SELECT_OPTION_2011", trigger_count = 0 },
	{ config_id = 1002016, name = "ANY_MONSTER_DIE_2016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2016", action = "action_EVENT_ANY_MONSTER_DIE_2016", trigger_count = 0 },
	{ config_id = 1002018, name = "ENTER_REGION_2018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2018", action = "action_EVENT_ENTER_REGION_2018" },
	{ config_id = 1002019, name = "CHALLENGE_SUCCESS_2019", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2019", trigger_count = 0 }
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
		gadgets = { 2001, 2003, 2004, 2005, 2006, 2007, 2008 },
		regions = { 2018 },
		triggers = { "SELECT_OPTION_2011", "ANY_MONSTER_DIE_2016", "ENTER_REGION_2018", "CHALLENGE_SUCCESS_2019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_SELECT_OPTION_2011(context, evt)
	-- 判断是gadgetid 2001 option_id 94
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 94 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235850002, 2)
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 235850002 ；指定config：2001；物件身上指定option：94；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 235850002, 2001, 94) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2016(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 235850002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2016(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 235850001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2018(context, evt)
	if evt.param1 ~= 2018 then return false end
	
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
	        return false
	end
	
	if 0~=ScriptLib.GetExhibitionAccumulableData(context,context.uid,11403109) then
	              return false
	end
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2018(context, evt)
	ScriptLib.AddExhibitionAccumulableData(context, context.uid,"Activity_SummerTimeV2_Fischl_Guide1", 1)
	
	ScriptLib.ShowClientTutorial(context,866,{})
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2019(context, evt)
	if 2010056 == evt.param1 then
		ScriptLib.SetGroupVariableValueByGroup(context, "start1", 1, 235850001)
	end
	
	return 0
end

require "V2_8/DLActivityDungeon"