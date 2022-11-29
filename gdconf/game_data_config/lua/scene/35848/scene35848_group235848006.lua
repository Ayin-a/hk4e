-- 基础信息
local base_info = {
	group_id = 235848006
}

-- DEFS_MISCS
local defs = {
    --起始操作台
    starter =6002,
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

        [1] = { monsters = {6004}, min = 1, max = 1},
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
    point_list = {6005,6006,6007},
    --万叶、菲谢尔需配这里-buff物件池
    buff_pool = {6008,6009,6010},
    --万叶、菲谢尔需配这里-buff物件每次刷几个
    buff_count = 3,
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
	[6004] = { config_id = 6004, monster_id = 24010101, pos = { x = 107.059, y = 85.400, z = 763.045 }, rot = { x = 0.000, y = 108.352, z = 0.000 }, level = 1, affix = { 1007 }, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[6001] = { config_id = 6001, gadget_id = 70360010, pos = { x = 114.965, y = 85.333, z = 757.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[6002] = { config_id = 6002, gadget_id = 70360001, pos = { x = 114.965, y = 85.333, z = 757.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 94 } } },
	[6005] = { config_id = 6005, gadget_id = 70350085, pos = { x = 110.514, y = 85.938, z = 761.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[6006] = { config_id = 6006, gadget_id = 70350085, pos = { x = 114.148, y = 86.027, z = 749.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[6007] = { config_id = 6007, gadget_id = 70350085, pos = { x = 122.681, y = 86.045, z = 761.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[6008] = { config_id = 6008, gadget_id = 70310318, pos = { x = 97.416, y = 87.568, z = 762.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[6009] = { config_id = 6009, gadget_id = 70310319, pos = { x = 99.120, y = 86.849, z = 766.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[6010] = { config_id = 6010, gadget_id = 70310320, pos = { x = 103.022, y = 86.969, z = 773.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[6012] = { config_id = 6012, gadget_id = 70900201, pos = { x = 114.965, y = 86.126, z = 757.812 }, rot = { x = 0.000, y = 161.540, z = 0.000 }, level = 1 },
	[6014] = { config_id = 6014, gadget_id = 70360001, pos = { x = 115.584, y = 85.400, z = 756.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[6013] = { config_id = 6013, shape = RegionShape.SPHERE, radius = 10, pos = { x = 114.660, y = 85.400, z = 758.086 } }
}

-- 触发器
triggers = {
	{ config_id = 1006003, name = "SELECT_OPTION_6003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6003", action = "action_EVENT_SELECT_OPTION_6003", trigger_count = 0 },
	{ config_id = 1006011, name = "ANY_MONSTER_DIE_6011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6011", action = "action_EVENT_ANY_MONSTER_DIE_6011", trigger_count = 0 },
	{ config_id = 1006013, name = "ENTER_REGION_6013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6013", action = "action_EVENT_ENTER_REGION_6013", trigger_count = 0 },
	{ config_id = 1006015, name = "GADGET_CREATE_6015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_6015", action = "action_EVENT_GADGET_CREATE_6015", trigger_count = 0 },
	{ config_id = 1006016, name = "GADGET_CREATE_6016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_6016", action = "action_EVENT_GADGET_CREATE_6016", trigger_count = 0 }
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
		gadgets = { 6014 },
		regions = { },
		triggers = { "GADGET_CREATE_6016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6005, 6006, 6007, 6008, 6009, 6010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 6012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 6001, 6002 },
		regions = { 6013 },
		triggers = { "SELECT_OPTION_6003", "ANY_MONSTER_DIE_6011", "ENTER_REGION_6013", "GADGET_CREATE_6015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_6003(context, evt)
	-- 判断是gadgetid 6002 option_id 94
	if 6002 ~= evt.param1 then
		return false	
	end
	
	if 94 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6003(context, evt)
	-- 删除指定group： 235848006 ；指定config：6002；物件身上指定option：94；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 235848006, 6002, 94) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 6001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 235848006, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6011(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 235848006) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6011(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235848005, 4)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235848001, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235848001, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6013(context, evt)
	if evt.param1 ~= 6013 then return false end
		-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	if 0~=ScriptLib.GetExhibitionAccumulableData(context,context.uid,11401109) then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6013(context, evt)
	ScriptLib.AddExhibitionAccumulableData(context, context.uid,"Activity_SummerTimeV2_Kazuha_Guide2", 1)
		
		ScriptLib.ShowClientTutorial(context,863,{})
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_6015(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_6015(context, evt)
	-- 将本组内变量名为 "suite" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "suite", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_6016(context, evt)
	if 6014 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"suite"为1
	if ScriptLib.GetGroupVariableValue(context, "suite") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_6016(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235848006, 4)
	
	return 0
end

require "V2_8/DLActivityDungeon"