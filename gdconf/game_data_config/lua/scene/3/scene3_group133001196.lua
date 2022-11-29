-- 基础信息
local base_info = {
	group_id = 133001196
}

-- Trigger变量
local defs = {
	challenge_id = 2010062,
	enter_region = 196015,
	leave_region = 196019,
	trigger_time = 3
}

-- DEFS_MISCS
local Phase ={
        [1] = {4,5,7},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[196004] = { config_id = 196004, monster_id = 24010301, pos = { x = 2662.597, y = 262.981, z = -364.564 }, rot = { x = 0.000, y = 236.750, z = 0.000 }, level = 1, drop_tag = "遗迹重机", disableWander = true, affix = { 5193, 5217, 9009 }, isOneoff = true, pose_id = 101, title_id = 10133, special_name_id = 10188, area_id = 4, guest_ban_drop = 63 },
	[196005] = { config_id = 196005, monster_id = 24020301, pos = { x = 2646.592, y = 260.028, z = -365.002 }, rot = { x = 0.000, y = 157.465, z = 0.000 }, level = 1, drop_tag = "拟生机关", disableWander = true, affix = { 5193, 5217, 9009 }, isOneoff = true, pose_id = 100, area_id = 4, guest_ban_drop = 63 },
	[196006] = { config_id = 196006, monster_id = 24020201, pos = { x = 2656.793, y = 262.569, z = -380.363 }, rot = { x = 0.000, y = 36.327, z = 0.000 }, level = 1, drop_tag = "拟生机关", disableWander = true, affix = { 5193, 5217, 9009 }, isOneoff = true, pose_id = 100, area_id = 4, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[196008] = { config_id = 196008, gadget_id = 70290196, pos = { x = 2656.304, y = 263.000, z = -358.611 }, rot = { x = 359.732, y = 316.527, z = 0.312 }, level = 1, isOneoff = true, persistent = true, area_id = 4 },
	[196009] = { config_id = 196009, gadget_id = 70800251, pos = { x = 2659.577, y = 262.883, z = -375.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	[196010] = { config_id = 196010, gadget_id = 70290196, pos = { x = 2656.304, y = 263.000, z = -358.611 }, rot = { x = 359.732, y = 316.527, z = 0.312 }, level = 1, isOneoff = true, persistent = true, area_id = 4 },
	[196013] = { config_id = 196013, gadget_id = 70800251, pos = { x = 2651.654, y = 261.926, z = -363.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	[196014] = { config_id = 196014, gadget_id = 70800251, pos = { x = 2642.820, y = 260.851, z = -378.425 }, rot = { x = 350.032, y = 151.761, z = 11.949 }, level = 1, area_id = 4 }
}

-- 区域
regions = {
	[196012] = { config_id = 196012, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 2650.099, y = 260.680, z = -369.764 }, height = 70.000, area_id = 4 },
	[196015] = { config_id = 196015, shape = RegionShape.CYLINDER, radius = 40, pos = { x = 2650.099, y = 260.680, z = -369.764 }, height = 40.000, area_id = 4 },
	[196019] = { config_id = 196019, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 2650.099, y = 260.680, z = -369.764 }, height = 70.000, area_id = 4, team_ability_group_list = { "Activity_VintageChallenge_Stage_2" } }
}

-- 触发器
triggers = {
	{ config_id = 1196011, name = "ANY_MONSTER_DIE_196011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_196011", trigger_count = 0 },
	{ config_id = 1196016, name = "MONSTER_BATTLE_196016", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_196016" },
	{ config_id = 1196018, name = "ANY_MONSTER_DIE_196018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_196018", action = "action_EVENT_ANY_MONSTER_DIE_196018", trigger_count = 0 },
	{ config_id = 1196023, name = "TIME_AXIS_PASS_196023", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_196023" }
}

-- 变量
variables = {
	{ config_id = 5, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 196001, monster_id = 24010101, pos = { x = 2652.216, y = 262.254, z = -359.215 }, rot = { x = 0.000, y = 146.929, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", disableWander = true, affix = { 5193, 5217, 9009 }, isOneoff = true, pose_id = 100, area_id = 4 },
		{ config_id = 196002, monster_id = 24010101, pos = { x = 2664.846, y = 263.304, z = -378.456 }, rot = { x = 0.000, y = 331.517, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", disableWander = true, affix = { 5193, 5217, 9009 }, isOneoff = true, pose_id = 100, area_id = 4 },
		{ config_id = 196003, monster_id = 24010101, pos = { x = 2667.503, y = 263.142, z = -372.979 }, rot = { x = 0.000, y = 229.367, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", disableWander = true, affix = { 5193, 5217, 9009 }, isOneoff = true, pose_id = 101, area_id = 4 },
		{ config_id = 196007, monster_id = 24010101, pos = { x = 2655.163, y = 262.745, z = -352.369 }, rot = { x = 0.000, y = 219.703, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", disableWander = true, affix = { 5193, 5217, 9009 }, isOneoff = true, pose_id = 101, area_id = 4 }
	},
	regions = {
		{ config_id = 196017, shape = RegionShape.SPHERE, radius = 100, pos = { x = 2654.825, y = 262.908, z = -358.349 }, area_id = 4 }
	},
	triggers = {
		{ config_id = 1196017, name = "ENTER_REGION_196017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_196017", action = "action_EVENT_ENTER_REGION_196017" },
		{ config_id = 1196020, name = "ANY_MONSTER_DIE_196020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_196020", action = "action_EVENT_ANY_MONSTER_DIE_196020" }
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
		gadgets = { 196008 },
		regions = { 196012, 196015, 196019 },
		triggers = { "ANY_MONSTER_DIE_196011", "ANY_MONSTER_DIE_196018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 196010 },
		regions = { },
		triggers = { "MONSTER_BATTLE_196016", "TIME_AXIS_PASS_196023" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 196004, 196005, 196006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 196009, 196013, 196014 },
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

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_196011(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133001196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_196016(context, evt)
	-- 创建标识为"T1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_196018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_196018(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001196, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001196, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_196023(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_1/CampChallenge"