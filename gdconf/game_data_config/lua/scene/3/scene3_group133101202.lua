-- 基础信息
local base_info = {
	group_id = 133101202
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 202008, monster_id = 20010401, pos = { x = 1292.177, y = 297.945, z = 1381.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 202009, monster_id = 20010301, pos = { x = 1285.059, y = 298.027, z = 1384.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 202010, monster_id = 20010301, pos = { x = 1288.590, y = 297.702, z = 1381.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 202018, monster_id = 20010403, pos = { x = 1239.228, y = 309.783, z = 1426.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 202019, monster_id = 20010401, pos = { x = 1235.167, y = 309.882, z = 1423.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 202020, monster_id = 20010401, pos = { x = 1239.799, y = 309.539, z = 1430.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 202027, monster_id = 20010401, pos = { x = 1258.098, y = 308.178, z = 1414.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 202028, monster_id = 20010301, pos = { x = 1258.287, y = 307.804, z = 1410.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 202029, monster_id = 20010301, pos = { x = 1260.828, y = 308.404, z = 1414.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 6 }
}

-- NPC
npcs = {
	{ config_id = 202034, npc_id = 20132, pos = { x = 1295.183, y = 287.616, z = 1336.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 6 }
}

-- 装置
gadgets = {
	{ config_id = 202001, gadget_id = 70360092, pos = { x = 1295.324, y = 286.845, z = 1336.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 202002, gadget_id = 70710090, pos = { x = 1300.172, y = 289.811, z = 1342.757 }, rot = { x = 0.000, y = 33.351, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 202003, gadget_id = 70710090, pos = { x = 1307.926, y = 291.579, z = 1353.526 }, rot = { x = 0.000, y = 334.952, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 202004, gadget_id = 70710090, pos = { x = 1303.972, y = 296.188, z = 1364.317 }, rot = { x = 0.000, y = 329.997, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 202005, gadget_id = 70710090, pos = { x = 1296.355, y = 297.438, z = 1374.813 }, rot = { x = 0.000, y = 313.181, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 202007, gadget_id = 70710090, pos = { x = 1287.681, y = 298.831, z = 1383.607 }, rot = { x = 0.000, y = 327.445, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 202011, gadget_id = 70710090, pos = { x = 1281.170, y = 303.770, z = 1397.630 }, rot = { x = 0.000, y = 318.818, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 202012, gadget_id = 70710090, pos = { x = 1264.193, y = 309.037, z = 1411.258 }, rot = { x = 0.000, y = 289.937, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 202013, gadget_id = 70710090, pos = { x = 1243.586, y = 310.968, z = 1427.527 }, rot = { x = 0.000, y = 299.166, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 202014, gadget_id = 70710090, pos = { x = 1236.332, y = 314.503, z = 1434.689 }, rot = { x = 0.000, y = 297.246, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 202033, gadget_id = 70211011, pos = { x = 1234.927, y = 309.938, z = 1428.905 }, rot = { x = 0.000, y = 125.798, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 202006, shape = RegionShape.SPHERE, radius = 8.2, pos = { x = 1288.699, y = 297.543, z = 1381.685 }, area_id = 6 },
	{ config_id = 202030, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1264.423, y = 307.353, z = 1410.802 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1202006, name = "ENTER_REGION_202006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_202006", action = "action_EVENT_ENTER_REGION_202006", trigger_count = 0 },
	{ config_id = 1202015, name = "ANY_MONSTER_DIE_202015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_202015", action = "action_EVENT_ANY_MONSTER_DIE_202015" },
	{ config_id = 1202016, name = "ANY_MONSTER_DIE_202016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_202016", action = "action_EVENT_ANY_MONSTER_DIE_202016", trigger_count = 0 },
	{ config_id = 1202017, name = "ANY_MONSTER_DIE_202017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_202017", action = "action_EVENT_ANY_MONSTER_DIE_202017" },
	{ config_id = 1202025, name = "GADGET_CREATE_202025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_202025", action = "action_EVENT_GADGET_CREATE_202025", trigger_count = 0 },
	{ config_id = 1202026, name = "SELECT_OPTION_202026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_202026", action = "action_EVENT_SELECT_OPTION_202026" },
	{ config_id = 1202030, name = "ENTER_REGION_202030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_202030", action = "action_EVENT_ENTER_REGION_202030", trigger_count = 0 }
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
	suite = 8,
	end_suite = 7,
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
		gadgets = { 202001 },
		regions = { },
		triggers = { "GADGET_CREATE_202025", "SELECT_OPTION_202026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 202001, 202002, 202003, 202004, 202005, 202007 },
		regions = { 202006 },
		triggers = { "ENTER_REGION_202006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 202008, 202009, 202010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_202016" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 202011, 202012, 202013, 202014 },
		regions = { 202030 },
		triggers = { "ENTER_REGION_202030" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 202018, 202019, 202020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_202017" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 202027, 202028, 202029 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_202015" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 202033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 202001 },
		regions = { },
		triggers = { },
		npcs = { 202034 },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_202006(context, evt)
	if evt.param1 ~= 202006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"group_index01"为0
	if ScriptLib.GetGroupVariableValue(context, "group_index01") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_202006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133101202, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将本组内变量名为 "group_index01" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "group_index01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_202015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_202015(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133101202, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_202016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_202016(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133101202, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_202017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_202017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7101318_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133101202, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_202025(context, evt)
	if 202001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_202025(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133101202, 202001, {10}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_202026(context, evt)
	if 202001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_202026(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101202, 2)
	
	-- 将configid为 202001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 202001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_202030(context, evt)
	if evt.param1 ~= 202030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_202030(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133101202, 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end