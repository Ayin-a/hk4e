-- 基础信息
local base_info = {
	group_id = 247201012
}

-- DEFS_MISCS
local defs = {
    gadget_1 = 12001,
    group_1 = 247201012,
    group_core = 247201001,
    challenge_father = 999,
    challenge1 = 120,
    MonsterCount = 11,
    challenge_kill = 233,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12006, monster_id = 25210403, pos = { x = 135.769, y = 194.727, z = 365.124 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 11, disableWander = true, affix = { 1007 } },
	{ config_id = 12007, monster_id = 25010301, pos = { x = 135.770, y = 194.727, z = 363.157 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 11, disableWander = true, affix = { 1007 } },
	{ config_id = 12008, monster_id = 25010601, pos = { x = 135.769, y = 194.727, z = 367.017 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 11, disableWander = true, affix = { 1007 } },
	{ config_id = 12010, monster_id = 25210301, pos = { x = 135.769, y = 194.727, z = 368.923 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 11, disableWander = true, affix = { 1007 } },
	{ config_id = 12011, monster_id = 25210101, pos = { x = 135.770, y = 194.727, z = 361.258 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 11, disableWander = true, affix = { 1007 } },
	{ config_id = 12012, monster_id = 25210501, pos = { x = 133.989, y = 194.592, z = 365.124 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 11, disableWander = true, affix = { 1007 } },
	{ config_id = 12013, monster_id = 25010201, pos = { x = 137.726, y = 194.770, z = 359.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, disableWander = true, affix = { 1007 } },
	{ config_id = 12014, monster_id = 25010301, pos = { x = 137.726, y = 194.770, z = 370.788 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 11, disableWander = true, affix = { 1007 } },
	{ config_id = 12015, monster_id = 25210103, pos = { x = 139.678, y = 194.770, z = 359.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, disableWander = true, affix = { 1007 } },
	{ config_id = 12016, monster_id = 25060101, pos = { x = 139.678, y = 194.770, z = 370.788 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 11, disableWander = true, affix = { 1007 } },
	{ config_id = 12017, monster_id = 25410201, pos = { x = 135.686, y = 194.727, z = 365.124 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 11, disableWander = true, affix = { 1007 }, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12001, gadget_id = 70360010, pos = { x = 141.340, y = 194.656, z = 365.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 12009, gadget_id = 70950009, pos = { x = 141.340, y = 194.656, z = 365.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 12002, shape = RegionShape.CUBIC, size = { x = 10.000, y = 25.000, z = 35.000 }, pos = { x = 170.064, y = 202.269, z = 365.008 } }
}

-- 触发器
triggers = {
	{ config_id = 1012002, name = "ENTER_REGION_12002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12002", action = "action_EVENT_ENTER_REGION_12002" },
	{ config_id = 1012003, name = "SELECT_OPTION_12003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12003", action = "action_EVENT_SELECT_OPTION_12003", trigger_count = 0 },
	{ config_id = 1012004, name = "VARIABLE_CHANGE_12004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_12004", action = "action_EVENT_VARIABLE_CHANGE_12004", trigger_count = 0 },
	{ config_id = 1012005, name = "ANY_MONSTER_DIE_12005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_12005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "success", value = 0, no_refresh = false }
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
		gadgets = { 12001 },
		regions = { 12002 },
		triggers = { "ENTER_REGION_12002", "SELECT_OPTION_12003", "VARIABLE_CHANGE_12004", "ANY_MONSTER_DIE_12005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 12009 },
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
function condition_EVENT_ENTER_REGION_12002(context, evt)
	if evt.param1 ~= 12002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12002(context, evt)
	
	-- 将configid为 12001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	    return -1
	end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12003(context, evt)
	-- 判断是gadgetid 12001 option_id 7
	if 12001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12003(context, evt)
	--向编号999的父挑战挂接子挑战
	
	ScriptLib.ExecuteGroupLua(context,defs.group_core,"SetKillMonsterTarget" ,{defs.group_1, defs.MonsterCount})
	ScriptLib.ExecuteGroupLua(context,defs.group_core,"StartSubChallengeKillMonster" ,{defs.challenge1, defs.challenge_kill})
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为11，场上怪物最少5只，最多5只
	ScriptLib.AutoMonsterTide(context, 1, defs.group_1, {12006,12007,12008,12010,12011,12012,12013,12014,12015,12016,12017}, 11, 5, 5)
	ScriptLib.PrintContextLog(context, "怪物潮开启!!!!!!!!")
	
	-- 添加suite2的新内容，空气墙
	    ScriptLib.AddExtraGroupSuite(context, 247201012, 2)
	
	-- 删除指定group： 247201012 ；指定config：12001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_1, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	  return -1
	end
	
	-- 将configid为 12001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	    return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_12004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "success", 247201001) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_12004(context, evt)
	-- 针对指定group内变量名为 "success" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "success", 1, defs.group_core) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12005(context, evt)
	--发送怪物死亡通知
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AddMistTrialChildChallengeScore", {1})
	
	return 0
end

require "MonsterQuickDeath"