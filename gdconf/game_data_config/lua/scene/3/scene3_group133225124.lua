-- 基础信息
local base_info = {
	group_id = 133225124
}

-- DEFS_MISCS
defs = {
        group_id = 133225124,        --当前Group的ID
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
	{ config_id = 124005, monster_id = 22040201, pos = { x = -6196.181, y = 200.000, z = -2794.589 }, rot = { x = 0.000, y = 19.686, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 124006, monster_id = 22040201, pos = { x = -6199.287, y = 200.000, z = -2786.983 }, rot = { x = 0.000, y = 113.590, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 124007, monster_id = 22040201, pos = { x = -6194.569, y = 200.215, z = -2781.571 }, rot = { x = 0.000, y = 182.954, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 124001, gadget_id = 70290160, pos = { x = -6186.983, y = 202.385, z = -2775.283 }, rot = { x = 0.000, y = 193.565, z = 352.542 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 124004, gadget_id = 70310153, pos = { x = -6192.836, y = 200.135, z = -2788.142 }, rot = { x = 0.000, y = 17.530, z = 8.102 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 124009, gadget_id = 70211111, pos = { x = -6193.118, y = 200.165, z = -2786.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1124002, name = "GADGET_STATE_CHANGE_124002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_124002", action = "action_EVENT_GADGET_STATE_CHANGE_124002" },
	{ config_id = 1124003, name = "VARIABLE_CHANGE_124003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_124003", action = "action_EVENT_VARIABLE_CHANGE_124003", trigger_count = 0 },
	{ config_id = 1124008, name = "ANY_MONSTER_DIE_124008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_124008", action = "action_EVENT_ANY_MONSTER_DIE_124008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 2, name = "Notified", value = 0, no_refresh = false },
	{ config_id = 3, name = "BirdActive", value = 0, no_refresh = true }
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
		gadgets = { 124001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_124003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 124004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_124002" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 124005, 124006, 124007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_124008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_124002(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133225124, 124004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_124002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225124, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_124003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"BirdActive"为1
	if ScriptLib.GetGroupVariableValue(context, "BirdActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_124003(context, evt)
	-- 将configid为 124001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_124008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_124008(context, evt)
	-- 创建id为124009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 124009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133225273) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_2/TsurumiBirdFather"