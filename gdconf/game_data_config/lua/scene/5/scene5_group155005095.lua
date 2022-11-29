-- 基础信息
local base_info = {
	group_id = 155005095
}

-- Trigger变量
local defs = {
	wall_1 = 95018,
	wall_2 = 95019,
	wall_3 = 95020,
	monster_1 = 95003,
	monster_2 = 95005,
	battle_regionID = 95023,
	optimize_regionID = 95026,
	vision_type1 = 50050006,
	vision_type2 = 50050022
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 95003, monster_id = 26050801, pos = { x = 287.240, y = 223.000, z = 243.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, title_id = 10067, special_name_id = 10099, area_id = 200 },
	{ config_id = 95005, monster_id = 26050701, pos = { x = 251.740, y = 223.000, z = 243.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, title_id = 10067, special_name_id = 10099, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 95006, gadget_id = 70350356, pos = { x = 251.740, y = 223.000, z = 243.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 1, area_id = 200 },
	{ config_id = 95007, gadget_id = 70350356, pos = { x = 287.240, y = 223.000, z = 243.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 2, area_id = 200 },
	{ config_id = 95008, gadget_id = 70350356, pos = { x = 262.790, y = 225.400, z = 232.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 3, area_id = 200 },
	{ config_id = 95009, gadget_id = 70350356, pos = { x = 276.190, y = 225.400, z = 232.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 4, area_id = 200 },
	{ config_id = 95010, gadget_id = 70350356, pos = { x = 262.790, y = 225.400, z = 192.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 5, area_id = 200 },
	{ config_id = 95011, gadget_id = 70350356, pos = { x = 276.190, y = 225.400, z = 192.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 6, area_id = 200 },
	{ config_id = 95012, gadget_id = 70350356, pos = { x = 254.990, y = 225.400, z = 212.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 7, area_id = 200 },
	{ config_id = 95013, gadget_id = 70350356, pos = { x = 283.990, y = 225.400, z = 212.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 8, area_id = 200 },
	{ config_id = 95014, gadget_id = 70350356, pos = { x = 257.257, y = 225.400, z = 224.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 9, area_id = 200 },
	{ config_id = 95015, gadget_id = 70350356, pos = { x = 281.773, y = 225.400, z = 224.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 10, area_id = 200 },
	{ config_id = 95016, gadget_id = 70350356, pos = { x = 269.490, y = 225.400, z = 195.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 11, area_id = 200 },
	{ config_id = 95017, gadget_id = 70350356, pos = { x = 269.490, y = 225.400, z = 212.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 12, area_id = 200 },
	{ config_id = 95018, gadget_id = 70290245, pos = { x = 242.391, y = 223.596, z = 232.743 }, rot = { x = 0.000, y = 306.496, z = 0.000 }, level = 36, mark_flag = 13, area_id = 200 },
	{ config_id = 95019, gadget_id = 70290246, pos = { x = 297.849, y = 223.204, z = 230.655 }, rot = { x = 0.000, y = 54.284, z = 0.000 }, level = 36, mark_flag = 14, area_id = 200 },
	{ config_id = 95020, gadget_id = 70290247, pos = { x = 270.388, y = 223.077, z = 178.727 }, rot = { x = 0.000, y = 177.754, z = 0.000 }, level = 36, mark_flag = 15, area_id = 200 },
	{ config_id = 95021, gadget_id = 70210106, pos = { x = 261.149, y = 225.444, z = 218.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "深海龙蜥组合", persistent = true, boss_chest = {monster_config_id=95003, resin=40, life_time=600, take_num=100}, area_id = 200 },
	{ config_id = 95022, gadget_id = 70210106, pos = { x = 247.214, y = 225.394, z = 207.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "深海龙蜥组合", persistent = true, boss_chest = {monster_config_id=95005, resin=40, life_time=600, take_num=100}, area_id = 200 }
}

-- 区域
regions = {
	-- 入战圈
	{ config_id = 95023, shape = RegionShape.SPHERE, radius = 40, pos = { x = 269.134, y = 225.956, z = 212.594 }, area_id = 200, vision_type_list = { 50050006 } },
	-- （这个逻辑有bug，废弃）水底region，防止玩家穿到水底白嫖boss
	{ config_id = 95025, shape = RegionShape.CUBIC, size = { x = 150.000, y = 5.000, z = 150.000 }, pos = { x = 275.203, y = 215.230, z = 210.216 }, area_id = 200 },
	-- visiontype优化圈，进入圈内会剔除visiontype = 1
	{ config_id = 95026, shape = RegionShape.SPHERE, radius = 90, pos = { x = 269.443, y = 227.663, z = 213.237 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1095001, name = "GROUP_LOAD_95001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_95001", action = "action_EVENT_GROUP_LOAD_95001", trigger_count = 0 },
	{ config_id = 1095002, name = "QUEST_FINISH_95002", event = EventType.EVENT_QUEST_FINISH, source = "7217749", condition = "", action = "action_EVENT_QUEST_FINISH_95002", trigger_count = 0 },
	{ config_id = 1095004, name = "ANY_MONSTER_DIE_95004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95004", action = "action_EVENT_ANY_MONSTER_DIE_95004", trigger_count = 0 },
	-- （这个逻辑有bug，废弃）水底region，防止玩家穿到水底白嫖boss
	{ config_id = 1095025, name = "ENTER_REGION_95025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_95025", action = "action_EVENT_ENTER_REGION_95025", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
	{ config_id = 1, name = "questFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 95024, shape = RegionShape.SPHERE, radius = 50, pos = { x = 277.886, y = 228.583, z = 203.156 }, area_id = 200 }
	}
}

-- 视野组
sight_groups = {
	{ 95003, 95005, 95006, 95007, 95008, 95009, 95010, 95011, 95012, 95013, 95014, 95015, 95016, 95017, 95018, 95019, 95020 }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 95018, 95019, 95020 },
		regions = { 95026 },
		triggers = { "GROUP_LOAD_95001", "QUEST_FINISH_95002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 95003, 95005 },
		gadgets = { 95006, 95007, 95008, 95009, 95010, 95011, 95012, 95013, 95014, 95015, 95016, 95017, 95018, 95019, 95020 },
		regions = { 95023, 95025, 95026 },
		triggers = { "ANY_MONSTER_DIE_95004", "ENTER_REGION_95025" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 95022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 该suite用于视野优化和authority切换,
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
function condition_EVENT_GROUP_LOAD_95001(context, evt)
	-- 判断变量"questFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "questFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_95001(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155005095, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_95002(context, evt)
	-- 将本组内变量名为 "questFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155005095, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_95004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95004(context, evt)
	-- 创建id为95021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_95025(context, evt)
	if evt.param1 ~= 95025 then return false end
	
	-- 判断是区域95025
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 95025 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_95025(context, evt)
	
	    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 玩家踩到水底trigger，走重置流程")
	--SLC_Reset_Battle(context)
	return 0
end

require "V2_4/DeepSeaDrakeBoss"