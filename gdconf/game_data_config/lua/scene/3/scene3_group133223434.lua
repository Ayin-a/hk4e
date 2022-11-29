-- 基础信息
local base_info = {
	group_id = 133223434
}

-- DEFS_MISCS
defs = {
        group_id = 133223434,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {}, --groupid和需要切到的SuiteID，一一对应
        notifyQuest = true, --修改Group里一个变量
        hasChild = false, --表示是否切当前Group的suite，true表示切自己的
        selfSuiteId = 2, --需要切的自己的suite
        hasMultiStatues = false, --是否有多个雷鸟雕像
        statuesMap = 
        {
                [10001] = 2, --雷鸟雕像和需要切出来的Suite的对应表
        },
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 434003, monster_id = 20011101, pos = { x = -6381.176, y = 200.000, z = -2910.710 }, rot = { x = 0.000, y = 40.539, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 },
	{ config_id = 434007, monster_id = 20011101, pos = { x = -6381.788, y = 201.162, z = -2900.085 }, rot = { x = 0.000, y = 102.481, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 },
	{ config_id = 434008, monster_id = 20011101, pos = { x = -6372.152, y = 200.286, z = -2902.882 }, rot = { x = 0.000, y = 269.983, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 434001, gadget_id = 70290160, pos = { x = -6378.327, y = 200.667, z = -2903.831 }, rot = { x = 358.776, y = 173.524, z = 356.907 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1434009, name = "ANY_MONSTER_DIE_434009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_434009", action = "action_EVENT_ANY_MONSTER_DIE_434009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 2, name = "Notified", value = 0, no_refresh = true },
	{ config_id = 3, name = "Finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 434002, gadget_id = 70330064, pos = { x = -6375.151, y = 200.323, z = -2904.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, interact_id = 35, area_id = 18 },
		{ config_id = 434004, gadget_id = 70500000, pos = { x = -6378.064, y = 203.839, z = -2918.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
		{ config_id = 434005, gadget_id = 70900380, pos = { x = -6380.130, y = 206.291, z = -2906.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
	},
	regions = {
		{ config_id = 434006, shape = RegionShape.SPHERE, radius = 20, pos = { x = -6376.936, y = 200.000, z = -2919.808 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1434006, name = "ENTER_REGION_434006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_434006", action = "action_EVENT_ENTER_REGION_434006" }
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
		gadgets = { 434001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 434003, 434007, 434008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_434009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_434009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_434009(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 434001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 434001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/TsurumiBirdFather"