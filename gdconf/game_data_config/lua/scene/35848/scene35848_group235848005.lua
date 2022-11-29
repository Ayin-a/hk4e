-- 基础信息
local base_info = {
	group_id = 235848005
}

-- DEFS_MISCS
local defs = {
    --起始操作台
    starter = 5002,
    --起始操作台选项
    option_id = 94,
    --波次之间延时 秒
    delay = 3,
    --挑战总时限 秒
    time_limit = 60,
    --挑战ID 
    challenge_id =2010053,

    --怪物潮信息
    --monsters填入怪物configID，
    --当场上本列表的怪数量小于min时触发补怪，补至max。max勿超过mosnters数量
    --spec_event:随着本怪物潮的出现而发生的关卡事件。为LD约定好的枚举。
    tide_cfg = {

        [1] = { monsters = {5006,5016,5017}, min = 3, max = 3},
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
    type = 1,

    --莫娜、辛焱需配这里-随机suite池
    rand_suites = {},

    --万叶、菲谢尔需配这里-生成buff随机点位configIDs
    point_list = {},
    --万叶、菲谢尔需配这里-buff物件池
    buff_pool = {},
    --万叶、菲谢尔需配这里-buff物件每次刷几个
    buff_count = 0,
    --万叶、菲谢尔需配这里-限定buff物件池
    buff_pool_spec = {},
    --是否教学关
    is_tutorial = 1,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[5006] = { config_id = 5006, monster_id = 25080401, pos = { x = 27.729, y = 84.004, z = 660.371 }, rot = { x = 0.000, y = 28.176, z = 0.000 }, level = 1, pose_id = 1 },
	[5016] = { config_id = 5016, monster_id = 25080401, pos = { x = 30.631, y = 85.744, z = 677.549 }, rot = { x = 0.000, y = 184.475, z = 0.000 }, level = 1, pose_id = 1 },
	[5017] = { config_id = 5017, monster_id = 25080401, pos = { x = 42.482, y = 85.366, z = 669.717 }, rot = { x = 0.000, y = 233.706, z = 0.000 }, level = 1, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[5001] = { config_id = 5001, gadget_id = 70360010, pos = { x = 31.583, y = 84.238, z = 669.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[5002] = { config_id = 5002, gadget_id = 70360001, pos = { x = 31.571, y = 84.867, z = 669.304 }, rot = { x = 0.000, y = 37.616, z = 0.000 }, level = 1, worktop_config = { init_options = { 94 } } },
	[5004] = { config_id = 5004, gadget_id = 70310297, pos = { x = 116.150, y = 93.352, z = 700.720 }, rot = { x = 319.836, y = 56.101, z = 328.138 }, level = 1 },
	[5005] = { config_id = 5005, gadget_id = 70310297, pos = { x = 92.700, y = 75.700, z = 733.190 }, rot = { x = 343.360, y = 282.736, z = 283.730 }, level = 1 },
	[5008] = { config_id = 5008, gadget_id = 70690027, pos = { x = 99.651, y = 85.400, z = 776.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[5009] = { config_id = 5009, gadget_id = 70950011, pos = { x = 34.548, y = 85.062, z = 676.828 }, rot = { x = -0.004, y = 32.532, z = 354.557 }, level = 1 },
	[5010] = { config_id = 5010, gadget_id = 70950011, pos = { x = 45.515, y = 83.823, z = 669.833 }, rot = { x = -0.004, y = 32.532, z = 354.557 }, level = 1 },
	[5011] = { config_id = 5011, gadget_id = 70950011, pos = { x = 25.856, y = 86.044, z = 682.372 }, rot = { x = -0.004, y = 32.532, z = 354.557 }, level = 1 },
	[5013] = { config_id = 5013, gadget_id = 70310296, pos = { x = 107.610, y = 68.913, z = 700.179 }, rot = { x = 0.270, y = 30.516, z = 1.388 }, level = 1 },
	[5014] = { config_id = 5014, gadget_id = 70310296, pos = { x = 102.422, y = 68.531, z = 743.746 }, rot = { x = 0.879, y = 283.192, z = 0.836 }, level = 1 },
	[5019] = { config_id = 5019, gadget_id = 70690011, pos = { x = 75.670, y = 80.758, z = 855.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[5020] = { config_id = 5020, gadget_id = 70900201, pos = { x = 31.583, y = 85.557, z = 669.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[5021] = { config_id = 5021, gadget_id = 70360001, pos = { x = 37.189, y = 84.455, z = 667.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[5022] = { config_id = 5022, gadget_id = 70690001, pos = { x = 99.312, y = 90.177, z = 787.961 }, rot = { x = 340.345, y = 332.581, z = 0.000 }, level = 1 },
	[5023] = { config_id = 5023, gadget_id = 70690001, pos = { x = 94.976, y = 93.540, z = 796.321 }, rot = { x = 340.345, y = 332.581, z = 0.000 }, level = 1 },
	[5024] = { config_id = 5024, gadget_id = 70690001, pos = { x = 90.639, y = 96.904, z = 804.680 }, rot = { x = 340.345, y = 332.581, z = 0.000 }, level = 1 },
	[5025] = { config_id = 5025, gadget_id = 70690001, pos = { x = 86.302, y = 100.267, z = 813.040 }, rot = { x = 340.345, y = 332.581, z = 0.000 }, level = 1 },
	[5026] = { config_id = 5026, gadget_id = 70690001, pos = { x = 81.966, y = 103.631, z = 821.399 }, rot = { x = 340.345, y = 332.581, z = 0.000 }, level = 1 },
	[5027] = { config_id = 5027, gadget_id = 70690001, pos = { x = 77.629, y = 106.994, z = 829.759 }, rot = { x = 346.135, y = 338.840, z = 0.000 }, level = 1 },
	[5028] = { config_id = 5028, gadget_id = 70690001, pos = { x = 74.263, y = 109.296, z = 838.455 }, rot = { x = 8.441, y = 0.459, z = 0.000 }, level = 1 },
	[5029] = { config_id = 5029, gadget_id = 70690001, pos = { x = 74.342, y = 107.828, z = 848.346 }, rot = { x = 8.441, y = 0.459, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[5007] = { config_id = 5007, shape = RegionShape.SPHERE, radius = 12, pos = { x = 30.299, y = 84.876, z = 668.901 } }
}

-- 触发器
triggers = {
	{ config_id = 1005003, name = "SELECT_OPTION_5003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5003", action = "action_EVENT_SELECT_OPTION_5003", trigger_count = 0 },
	{ config_id = 1005007, name = "ENTER_REGION_5007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5007", action = "action_EVENT_ENTER_REGION_5007", trigger_count = 0 },
	{ config_id = 1005015, name = "ANY_MONSTER_DIE_5015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5015", action = "action_EVENT_ANY_MONSTER_DIE_5015" }
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
		gadgets = { 5001, 5002, 5004, 5005, 5020 },
		regions = { 5007 },
		triggers = { "SELECT_OPTION_5003", "ENTER_REGION_5007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 5021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 5008, 5019, 5022, 5023, 5024, 5025, 5026, 5027, 5028, 5029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 5014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 5009, 5010, 5011 },
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
function condition_EVENT_SELECT_OPTION_5003(context, evt)
	-- 判断是gadgetid 5002 option_id 94
	if 5002 ~= evt.param1 then
		return false	
	end
	
	if 94 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5003(context, evt)
	-- 删除指定group： 235848005 ；指定config：5002；物件身上指定option：94；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 235848005, 5002, 94) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 5001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235848005, 2)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235848005, 6)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5007(context, evt)
	if evt.param1 ~= 5007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if 0~=ScriptLib.GetExhibitionAccumulableData(context,context.uid,11401108) then
	              return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5007(context, evt)
	ScriptLib.AddExhibitionAccumulableData(context, context.uid,"Activity_SummerTimeV2_Kazuha_Guide1", 1)
	
	ScriptLib.ShowClientTutorial(context,862,{})
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为5013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235848003, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235848003, 3)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 235848005, 6)
	
	return 0
end

require "V2_8/DLActivityDungeon"