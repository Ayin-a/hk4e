-- 基础信息
local base_info = {
	group_id = 240058004
}

-- DEFS_MISCS
local defs = {
        worktop_id = 4007,  --操作台gadget的id
        gallery_id = 29030,  --对应gallery的id
        recovergadget_id = 4009,   --恢复gadget的id
        battle_region_id = 4013, --td region的id
        cleaner_id = 4005,  --local gadget（能量球）清理gadget的id
        trans_p1 = 4002,  --P1玩家传送点
        trans_p2 = 4003,  --P2玩家传送点
        trans_p3 = 4004,  --P3玩家传送点
        trans_p4 = 4012,  --P4玩家传送点  
        monster_num = 1,  --刷怪总数量
        is_first_group = false,   --是否是第一个group        
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[4001] = { config_id = 4001, monster_id = 20040702, pos = { x = 0.181, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[4005] = { config_id = 4005, gadget_id = 44000456, pos = { x = -2.758, y = 0.231, z = 3.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4006] = { config_id = 4006, gadget_id = 70900205, pos = { x = -0.686, y = -0.304, z = 2.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4007] = { config_id = 4007, gadget_id = 70360367, pos = { x = 0.158, y = 0.000, z = 8.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 175 } } },
	[4008] = { config_id = 4008, gadget_id = 70950042, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4009] = { config_id = 4009, gadget_id = 44000006, pos = { x = 0.163, y = 0.089, z = 20.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[4013] = { config_id = 4013, shape = RegionShape.SPHERE, radius = 35, pos = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1004010, name = "ANY_MONSTER_LIVE_4010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4010", action = "action_EVENT_ANY_MONSTER_LIVE_4010" },
	{ config_id = 1004011, name = "SELECT_OPTION_4011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4011", action = "action_EVENT_SELECT_OPTION_4011" },
	{ config_id = 1004015, name = "ANY_MONSTER_DIE_4015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4015", action = "action_EVENT_ANY_MONSTER_DIE_4015", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 4002, pos = { x = 0.191, y = 0.000, z = 17.427 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 4003, pos = { x = 0.191, y = 0.000, z = 23.304 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 4004, pos = { x = 3.104, y = 0.000, z = 20.332 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 4012, pos = { x = -2.720, y = 0.000, z = 20.332 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
}

-- 变量
variables = {
	{ config_id = 1, name = "GALLERY_STATE", value = 0, no_refresh = false },
	{ config_id = 2, name = "monster_wave", value = 0, no_refresh = false }
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
		gadgets = { 4006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4005, 4006, 4007, 4008, 4009 },
		regions = { 4013 },
		triggers = { "SELECT_OPTION_4011", "ANY_MONSTER_DIE_4015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4001 },
		gadgets = { 4006 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_4010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4010(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4010(context, evt)
	-- 将本组内变量名为 "GALLERY_STATE" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GALLERY_STATE", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4011(context, evt)
	-- 判断是gadgetid 4007 option_id 175
	if 4007 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4011(context, evt)
	-- 将configid为 4007 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4007, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240058004 ；指定config：4007；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240058004, 4007, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240058004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4015(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4015(context, evt)
	-- 将本组内变量名为 "GALLERY_STATE" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GALLERY_STATE", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_2/HypostasisChallenge"