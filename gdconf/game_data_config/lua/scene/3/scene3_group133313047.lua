-- 基础信息
local base_info = {
	group_id = 133313047
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47001, monster_id = 24040201, pos = { x = -1114.602, y = -37.128, z = 5426.214 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1004, area_id = 32 },
	{ config_id = 47004, monster_id = 24040201, pos = { x = -1122.793, y = -37.146, z = 5420.550 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1004, area_id = 32 },
	{ config_id = 47027, monster_id = 24040301, pos = { x = -1118.383, y = -9.864, z = 5403.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "元能构装体", pose_id = 1, area_id = 32 },
	{ config_id = 47029, monster_id = 24040301, pos = { x = -1100.208, y = -10.036, z = 5415.869 }, rot = { x = 0.000, y = 290.533, z = 0.000 }, level = 1, drop_tag = "元能构装体", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 47005, gadget_id = 70330393, pos = { x = -1113.049, y = -7.242, z = 5415.124 }, rot = { x = 0.000, y = 235.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47006, gadget_id = 70330392, pos = { x = -1107.782, y = -4.784, z = 5407.853 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47007, gadget_id = 70330392, pos = { x = -1112.367, y = -11.184, z = 5407.462 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47008, gadget_id = 70330393, pos = { x = -1120.297, y = -20.370, z = 5426.395 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47009, gadget_id = 70330392, pos = { x = -1118.383, y = -11.184, z = 5403.303 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47010, gadget_id = 70330393, pos = { x = -1106.739, y = -26.216, z = 5424.660 }, rot = { x = 0.000, y = 55.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47011, gadget_id = 70330392, pos = { x = -1100.208, y = -11.184, z = 5415.869 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47012, gadget_id = 70330392, pos = { x = -1104.655, y = -11.184, z = 5412.794 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47013, gadget_id = 70330392, pos = { x = -1111.805, y = -23.500, z = 5431.987 }, rot = { x = 0.000, y = 55.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47014, gadget_id = 70330392, pos = { x = -1127.936, y = -17.493, z = 5420.963 }, rot = { x = 0.000, y = 55.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47015, gadget_id = 70330393, pos = { x = -1122.931, y = -14.026, z = 5411.390 }, rot = { x = 0.000, y = 235.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47016, gadget_id = 70330392, pos = { x = -1104.370, y = -11.184, z = 5421.889 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47017, gadget_id = 70330392, pos = { x = -1115.796, y = -11.184, z = 5399.562 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 47018, gadget_id = 70220103, pos = { x = -1120.028, y = -26.916, z = 5407.101 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47019, gadget_id = 70220103, pos = { x = -1102.698, y = -26.916, z = 5419.083 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47020, gadget_id = 70500000, pos = { x = -1107.782, y = -2.464, z = 5407.853 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 32 },
	{ config_id = 47021, gadget_id = 70330392, pos = { x = -1109.050, y = -11.184, z = 5404.226 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 47022, gadget_id = 70330392, pos = { x = -1109.841, y = -11.184, z = 5429.800 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47023, gadget_id = 70330392, pos = { x = -1117.866, y = -11.184, z = 5424.251 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 47024, gadget_id = 70330392, pos = { x = -1110.170, y = -11.184, z = 5403.453 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 47025, gadget_id = 70330392, pos = { x = -1100.931, y = -11.184, z = 5409.841 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 47026, gadget_id = 70330392, pos = { x = -1096.305, y = -11.184, z = 5413.039 }, rot = { x = 0.000, y = 325.339, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 47031, gadget_id = 70330393, pos = { x = -1121.951, y = -14.026, z = 5412.067 }, rot = { x = 0.000, y = 235.339, z = 0.000 }, level = 1, persistent = true, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 47002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1118.383, y = -11.184, z = 5403.303 }, area_id = 32 },
	{ config_id = 47028, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1100.208, y = -10.036, z = 5415.869 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1047002, name = "ENTER_REGION_47002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_47002", action = "action_EVENT_ENTER_REGION_47002" },
	{ config_id = 1047003, name = "ANY_MONSTER_DIE_47003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47003", action = "action_EVENT_ANY_MONSTER_DIE_47003" },
	{ config_id = 1047028, name = "ENTER_REGION_47028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_47028", action = "action_EVENT_ENTER_REGION_47028" },
	{ config_id = 1047030, name = "GROUP_LOAD_47030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_47030", action = "action_EVENT_GROUP_LOAD_47030", trigger_count = 0 }
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
		monsters = { 47001, 47004 },
		gadgets = { 47006, 47020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_47003", "GROUP_LOAD_47030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 台阶一,
		monsters = { },
		gadgets = { 47005, 47007, 47008, 47009, 47010, 47011, 47012, 47013, 47014, 47015, 47016, 47017, 47018, 47019, 47021, 47022, 47023, 47024, 47025, 47026, 47031 },
		regions = { 47002, 47028 },
		triggers = { "ENTER_REGION_47002", "ENTER_REGION_47028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 创建指定group的指定suite内所有内容
function TLA_add_groupsuite(context, evt, group_id, suite_id)
	-- 添加suitesuite_id的新内容
	    ScriptLib.AddExtraGroupSuite(context, group_id, suite_id)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_47002(context, evt)
	if evt.param1 ~= 47002 then return false end
	
	-- 判断是区域47002
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 47002 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_47002(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 47027, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_47003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_47003(context, evt)
	TLA_add_groupsuite(context, evt, 133313047, 2)
	
	ScriptLib.AddQuestProgress(context, "7330513")
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_47028(context, evt)
	if evt.param1 ~= 47028 then return false end
	
	-- 判断是区域47028
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 47028 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_47028(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 47029, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_47030(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_47030(context, evt)
	TLA_add_groupsuite(context, evt, 133313047, 2)
	
	ScriptLib.AddQuestProgress(context, "7330513")
	
	return 0
end