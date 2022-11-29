-- 基础信息
local base_info = {
	group_id = 133003085
}

-- Trigger变量
local defs = {
	challenge_id = 2010060,
	enter_region = 85026,
	leave_region = 85027,
	trigger_time = 4
}

-- DEFS_MISCS
local Phase ={
        [1] = {4,7},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[85001] = { config_id = 85001, monster_id = 21020501, pos = { x = 1557.964, y = 252.090, z = -1648.442 }, rot = { x = 0.000, y = 35.456, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王", disableWander = true, affix = { 5191, 5216, 9009 }, isElite = true, isOneoff = true, title_id = 10132, special_name_id = 10187, area_id = 2, guest_ban_drop = 63 },
	[85003] = { config_id = 85003, monster_id = 21010402, pos = { x = 1573.530, y = 252.089, z = -1632.328 }, rot = { x = 0.000, y = 229.827, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5192, 5216, 9009 }, isOneoff = true, pose_id = 402, area_id = 2, guest_ban_drop = 63 },
	[85009] = { config_id = 85009, monster_id = 21010402, pos = { x = 1575.972, y = 252.089, z = -1649.384 }, rot = { x = 0.000, y = 290.132, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5192, 5216, 9009 }, isOneoff = true, pose_id = 402, area_id = 2, guest_ban_drop = 63 },
	[85011] = { config_id = 85011, monster_id = 21010402, pos = { x = 1554.436, y = 252.293, z = -1632.177 }, rot = { x = 0.000, y = 144.019, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5192, 5216, 9009 }, isOneoff = true, pose_id = 402, area_id = 2, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[85015] = { config_id = 85015, gadget_id = 70290196, pos = { x = 1561.092, y = 252.082, z = -1640.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[85017] = { config_id = 85017, gadget_id = 70310001, pos = { x = 1570.085, y = 252.091, z = -1651.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 2 },
	[85018] = { config_id = 85018, gadget_id = 70310001, pos = { x = 1575.045, y = 252.091, z = -1640.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 2 },
	[85019] = { config_id = 85019, gadget_id = 70310001, pos = { x = 1560.522, y = 252.090, z = -1631.617 }, rot = { x = 4.149, y = 9.372, z = 6.036 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 2 },
	[85020] = { config_id = 85020, gadget_id = 70310001, pos = { x = 1553.355, y = 252.091, z = -1640.699 }, rot = { x = 4.149, y = 9.372, z = 6.036 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 2 },
	[85023] = { config_id = 85023, gadget_id = 70800251, pos = { x = 1571.134, y = 252.658, z = -1642.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[85024] = { config_id = 85024, gadget_id = 70800251, pos = { x = 1561.424, y = 252.658, z = -1634.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[85025] = { config_id = 85025, gadget_id = 70800251, pos = { x = 1560.791, y = 252.656, z = -1646.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	[85026] = { config_id = 85026, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1564.401, y = 252.080, z = -1640.539 }, area_id = 2 },
	[85027] = { config_id = 85027, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 1564.363, y = 252.080, z = -1640.529 }, height = 70.000, area_id = 2, team_ability_group_list = { "Activity_VintageChallenge_Stage_1" } },
	[85029] = { config_id = 85029, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1564.401, y = 252.080, z = -1640.539 }, area_id = 2 },
	[85031] = { config_id = 85031, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 1564.363, y = 252.080, z = -1640.529 }, height = 70.000, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1085021, name = "ANY_MONSTER_DIE_85021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_85021", trigger_count = 0 },
	{ config_id = 1085028, name = "ANY_MONSTER_DIE_85028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_85028", action = "action_EVENT_ANY_MONSTER_DIE_85028" },
	{ config_id = 1085030, name = "MONSTER_BATTLE_85030", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_85030" },
	{ config_id = 1085031, name = "ENTER_REGION_85031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_85031", action = "action_EVENT_ENTER_REGION_85031" },
	{ config_id = 1085032, name = "TIME_AXIS_PASS_85032", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_85032" }
}

-- 变量
variables = {
	{ config_id = 5, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 85002, monster_id = 21010301, pos = { x = 1559.262, y = 252.176, z = -1651.827 }, rot = { x = 0.000, y = 35.248, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5216 }, isOneoff = true, area_id = 2 },
		{ config_id = 85004, monster_id = 21020401, pos = { x = 1569.636, y = 252.088, z = -1634.622 }, rot = { x = 0.000, y = 214.025, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王", disableWander = true, isOneoff = true, area_id = 2 },
		{ config_id = 85005, monster_id = 21010301, pos = { x = 1559.148, y = 252.085, z = -1646.520 }, rot = { x = 0.000, y = 44.972, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5216 }, isOneoff = true, area_id = 2 },
		{ config_id = 85006, monster_id = 21030603, pos = { x = 1570.106, y = 252.086, z = -1639.846 }, rot = { x = 0.000, y = 264.381, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 5192, 5216 }, isOneoff = true, area_id = 2 },
		{ config_id = 85007, monster_id = 21010201, pos = { x = 1568.293, y = 252.085, z = -1631.762 }, rot = { x = 0.000, y = 216.562, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, isOneoff = true, area_id = 2 },
		{ config_id = 85008, monster_id = 21010402, pos = { x = 1577.482, y = 252.091, z = -1643.009 }, rot = { x = 0.000, y = 306.734, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, isOneoff = true, area_id = 2 },
		{ config_id = 85010, monster_id = 21010301, pos = { x = 1554.344, y = 252.215, z = -1647.228 }, rot = { x = 0.000, y = 46.521, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5216 }, isOneoff = true, area_id = 2 },
		{ config_id = 85012, monster_id = 21010201, pos = { x = 1572.782, y = 252.085, z = -1635.751 }, rot = { x = 0.000, y = 254.986, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, isOneoff = true, area_id = 2 },
		{ config_id = 85013, monster_id = 21010402, pos = { x = 1564.648, y = 252.091, z = -1628.572 }, rot = { x = 0.000, y = 193.629, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, isOneoff = true, area_id = 2 },
		{ config_id = 85014, monster_id = 21010402, pos = { x = 1549.897, y = 252.091, z = -1640.649 }, rot = { x = 0.000, y = 67.235, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, isOneoff = true, area_id = 2 }
	},
	regions = {
		{ config_id = 85022, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1564.363, y = 252.076, z = -1640.529 }, area_id = 2 }
	},
	triggers = {
		{ config_id = 1085022, name = "ENTER_REGION_85022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_85022", action = "action_EVENT_ENTER_REGION_85022" }
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
		gadgets = { 85015 },
		regions = { 85026, 85027, 85029, 85031 },
		triggers = { "ANY_MONSTER_DIE_85021", "ANY_MONSTER_DIE_85028", "ENTER_REGION_85031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 85017, 85018, 85019, 85020 },
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
		monsters = { 85001, 85003, 85009, 85011 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_85030", "TIME_AXIS_PASS_85032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
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
		gadgets = { 85023, 85024, 85025 },
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
function action_EVENT_ANY_MONSTER_DIE_85021(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133003085) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_85028(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_85028(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003085, 7)
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133003085, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003085, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_85030(context, evt)
	-- 创建标识为"T1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_85031(context, evt)
	if evt.param1 ~= 85031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_85031(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003085, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_85032(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_1/CampChallenge"