-- 基础信息
local base_info = {
	group_id = 240060001
}

-- DEFS_MISCS
local defs = {
        worktop_id = 1003,  --操作台gadget的id
        gallery_id = 29032,  --对应gallery的id
        battle_region_id = 1012, --td region的id
        recovergadget_id = 1009,   --恢复gadget的id
        cleaner_id = 1010,  --local gadget（能量球）清理gadget的id
        monster_num = 1,  --刷怪总数量
        is_first_group = true   --是否是第一个group     
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[1001] = { config_id = 1001, monster_id = 20040602, pos = { x = 0.178, y = 0.073, z = -0.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5232 } },
	[1006] = { config_id = 1006, monster_id = 20040602, pos = { x = 0.178, y = 0.073, z = -0.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5233 } },
	[1007] = { config_id = 1007, monster_id = 20040602, pos = { x = 0.178, y = 0.073, z = -0.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5234 } },
	[1008] = { config_id = 1008, monster_id = 20040602, pos = { x = 0.178, y = 0.073, z = -0.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5214, 5235, 5236 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[1002] = { config_id = 1002, gadget_id = 70900205, pos = { x = 2.072, y = -0.535, z = -1.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1003] = { config_id = 1003, gadget_id = 70360367, pos = { x = 0.190, y = 0.082, z = 8.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 175 } } },
	[1004] = { config_id = 1004, gadget_id = 70950042, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1009] = { config_id = 1009, gadget_id = 44000006, pos = { x = 0.079, y = 0.086, z = 17.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1010] = { config_id = 1010, gadget_id = 44000456, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[1012] = { config_id = 1012, shape = RegionShape.SPHERE, radius = 35, pos = { x = 0.000, y = 0.078, z = 0.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1001005, name = "SELECT_OPTION_1005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1005", action = "action_EVENT_SELECT_OPTION_1005", trigger_count = 0 },
	{ config_id = 1001011, name = "ANY_MONSTER_DIE_1011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1011", action = "action_EVENT_ANY_MONSTER_DIE_1011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GALLERY_STATE", value = 0, no_refresh = false }
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
		gadgets = { 1002, 1003, 1004, 1009, 1010 },
		regions = { 1012 },
		triggers = { "SELECT_OPTION_1005", "ANY_MONSTER_DIE_1011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 1007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 1008 },
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
function condition_EVENT_SELECT_OPTION_1005(context, evt)
	-- 判断是gadgetid 1003 option_id 175
	if 1003 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1005(context, evt)
	-- 删除指定group： 240060001 ；指定config：1003；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240060001, 1003, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "GALLERY_STATE" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GALLERY_STATE", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	if ScriptLib.GetEffigyChallengeV2DungeonDifficulty(context) == 1 then         
	        ScriptLib.AddExtraGroupSuite(context, 240060001, 2)
	elseif ScriptLib.GetEffigyChallengeV2DungeonDifficulty(context) == 2 then
	        ScriptLib.AddExtraGroupSuite(context, 240060001, 3)
	elseif ScriptLib.GetEffigyChallengeV2DungeonDifficulty(context) == 3 then
	        ScriptLib.AddExtraGroupSuite(context, 240060001, 4)
	elseif ScriptLib.GetEffigyChallengeV2DungeonDifficulty(context) == 4 then
	        ScriptLib.AddExtraGroupSuite(context, 240060001, 5)
	else
	        ScriptLib.AddExtraGroupSuite(context, 240060001, 5)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1011(context, evt)
	-- 将本组内变量名为 "GALLERY_STATE" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GALLERY_STATE", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_2/HypostasisChallenge"