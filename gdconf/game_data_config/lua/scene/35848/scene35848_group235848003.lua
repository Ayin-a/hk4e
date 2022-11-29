-- 基础信息
local base_info = {
	group_id = 235848003
}

-- DEFS_MISCS
local defs = {
    --起始操作台
    starter =3003,
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

        [1] = { monsters = {3001,3004}, min = 2, max = 2},
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
	[3001] = { config_id = 3001, monster_id = 25100101, pos = { x = 132.521, y = 85.400, z = 692.348 }, rot = { x = 0.000, y = 248.643, z = 0.000 }, level = 1, pose_id = 1 },
	[3004] = { config_id = 3004, monster_id = 25100201, pos = { x = 133.945, y = 85.400, z = 687.427 }, rot = { x = 0.000, y = 264.429, z = 0.000 }, level = 1, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[3002] = { config_id = 3002, gadget_id = 70360010, pos = { x = 122.940, y = 85.333, z = 684.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[3003] = { config_id = 3003, gadget_id = 70360001, pos = { x = 122.940, y = 85.333, z = 684.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 94 } } },
	[3005] = { config_id = 3005, gadget_id = 70360001, pos = { x = 124.075, y = 85.400, z = 682.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[3010] = { config_id = 3010, gadget_id = 70900201, pos = { x = 122.940, y = 86.126, z = 684.958 }, rot = { x = 0.000, y = 161.540, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003006, name = "GADGET_CREATE_3006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3006", action = "action_EVENT_GADGET_CREATE_3006", trigger_count = 0 },
	{ config_id = 1003007, name = "GADGET_CREATE_3007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3007", action = "action_EVENT_GADGET_CREATE_3007", trigger_count = 0 },
	{ config_id = 1003011, name = "SELECT_OPTION_3011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3011", action = "action_EVENT_SELECT_OPTION_3011", trigger_count = 0 },
	{ config_id = 1003012, name = "ANY_MONSTER_DIE_3012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3012", action = "action_EVENT_ANY_MONSTER_DIE_3012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "suite", value = 0, no_refresh = true }
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
		gadgets = { 3005 },
		regions = { },
		triggers = { "GADGET_CREATE_3007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 3002, 3003 },
		regions = { },
		triggers = { "GADGET_CREATE_3006", "SELECT_OPTION_3011", "ANY_MONSTER_DIE_3012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_3006(context, evt)
	if 3002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3006(context, evt)
	-- 将本组内变量名为 "suite" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "suite", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3007(context, evt)
	if 3005 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite"为1
	if ScriptLib.GetGroupVariableValue(context, "suite") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235848003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3011(context, evt)
	-- 判断是gadgetid 3003 option_id 94
	if 3003 ~= evt.param1 then
		return false	
	end
	
	if 94 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3011(context, evt)
	-- 删除指定group： 235848003 ；指定config：3003；物件身上指定option：94；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 235848003, 3003, 94) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 3002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 235848003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3012(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 235848003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235848006, 3)
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 235848005, monsters = {}, gadgets = {5005} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235848005, 5)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235848006, 4)
	
	return 0
end

require "V2_8/DLActivityDungeon"