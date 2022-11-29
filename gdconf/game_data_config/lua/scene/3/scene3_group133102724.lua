-- 基础信息
local base_info = {
	group_id = 133102724
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 724001, monster_id = 21010201, pos = { x = 1378.165, y = 205.096, z = 529.954 }, rot = { x = 0.000, y = 133.761, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 724002, monster_id = 21010201, pos = { x = 1381.535, y = 205.158, z = 532.355 }, rot = { x = 0.000, y = 152.217, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 724003, monster_id = 21010201, pos = { x = 1376.987, y = 204.609, z = 535.682 }, rot = { x = 0.000, y = 142.717, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 724004, monster_id = 21030301, pos = { x = 1341.283, y = 200.145, z = 550.077 }, rot = { x = 0.000, y = 89.659, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 724005, monster_id = 21011001, pos = { x = 1339.516, y = 205.181, z = 555.630 }, rot = { x = 0.000, y = 105.414, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 5 },
	{ config_id = 724006, monster_id = 21010901, pos = { x = 1350.445, y = 203.052, z = 561.733 }, rot = { x = 0.000, y = 207.557, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 5 },
	{ config_id = 724007, monster_id = 21020101, pos = { x = 1349.622, y = 202.818, z = 652.830 }, rot = { x = 0.000, y = 203.975, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 724008, monster_id = 21030301, pos = { x = 1324.841, y = 200.458, z = 600.812 }, rot = { x = 0.000, y = 90.599, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 724009, monster_id = 21010301, pos = { x = 1344.234, y = 201.807, z = 647.189 }, rot = { x = 0.000, y = 168.655, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 724010, monster_id = 21010301, pos = { x = 1346.794, y = 201.363, z = 642.637 }, rot = { x = 0.000, y = 219.229, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 724011, monster_id = 21010901, pos = { x = 1357.370, y = 204.472, z = 703.352 }, rot = { x = 0.000, y = 179.453, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 724012, monster_id = 21010901, pos = { x = 1383.801, y = 204.223, z = 712.171 }, rot = { x = 0.000, y = 212.828, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 724013, monster_id = 21010901, pos = { x = 1383.308, y = 203.916, z = 736.191 }, rot = { x = 0.000, y = 192.994, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 724014, monster_id = 26060101, pos = { x = 1328.792, y = 200.589, z = 596.949 }, rot = { x = 0.000, y = 72.310, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 724091, monster_id = 26060201, pos = { x = 1328.925, y = 200.788, z = 604.144 }, rot = { x = 0.000, y = 103.848, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 724092, monster_id = 26060201, pos = { x = 1333.225, y = 200.330, z = 601.028 }, rot = { x = 0.000, y = 80.718, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 724015, gadget_id = 70710116, pos = { x = 1401.464, y = 209.428, z = 512.243 }, rot = { x = 0.000, y = 308.602, z = 0.000 }, level = 1, route_id = 310200237, start_route = false, persistent = true, area_id = 5 },
	{ config_id = 724016, gadget_id = 70300084, pos = { x = 1399.937, y = 208.976, z = 509.163 }, rot = { x = 348.761, y = 111.651, z = 359.110 }, level = 1, area_id = 5 },
	{ config_id = 724017, gadget_id = 70300090, pos = { x = 1338.898, y = 199.704, z = 555.415 }, rot = { x = 0.000, y = 289.312, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 724018, gadget_id = 70300090, pos = { x = 1357.346, y = 198.997, z = 703.873 }, rot = { x = 0.000, y = 359.250, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 724020, gadget_id = 70300090, pos = { x = 1383.904, y = 198.539, z = 712.578 }, rot = { x = 0.000, y = 237.312, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 724021, gadget_id = 70300090, pos = { x = 1383.632, y = 198.466, z = 736.463 }, rot = { x = 0.000, y = 2.001, z = 0.000 }, level = 1, area_id = 5 },
	-- 第一检查点
	{ config_id = 724023, gadget_id = 70710126, pos = { x = 1371.145, y = 204.028, z = 540.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	-- 第二检查点
	{ config_id = 724026, gadget_id = 70710126, pos = { x = 1345.913, y = 200.319, z = 553.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 724032, gadget_id = 70220005, pos = { x = 1346.348, y = 202.786, z = 652.539 }, rot = { x = 0.000, y = 12.475, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 724037, gadget_id = 70300084, pos = { x = 1403.899, y = 209.513, z = 514.647 }, rot = { x = 6.994, y = 325.178, z = 5.273 }, level = 1, area_id = 5 },
	-- 第三检查点
	{ config_id = 724062, gadget_id = 70710126, pos = { x = 1337.105, y = 201.074, z = 586.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	-- 第四检查点
	{ config_id = 724063, gadget_id = 70710126, pos = { x = 1337.871, y = 200.028, z = 633.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	-- 第五检查点
	{ config_id = 724064, gadget_id = 70710126, pos = { x = 1361.549, y = 202.509, z = 660.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	-- 第六检查点
	{ config_id = 724065, gadget_id = 70710126, pos = { x = 1359.625, y = 200.134, z = 684.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	-- 第七检查点
	{ config_id = 724066, gadget_id = 70710126, pos = { x = 1365.339, y = 200.043, z = 706.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	-- 第八检查点
	{ config_id = 724067, gadget_id = 70710126, pos = { x = 1403.363, y = 200.000, z = 739.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	-- 第一检查点NoteUI
	{ config_id = 724068, gadget_id = 70350085, pos = { x = 1420.300, y = 200.300, z = 384.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	-- 第二检查点NoteUI
	{ config_id = 724069, gadget_id = 70350085, pos = { x = 1371.400, y = 200.000, z = 404.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	-- 第三检查点NoteUI
	{ config_id = 724070, gadget_id = 70350085, pos = { x = 1329.300, y = 200.300, z = 428.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	-- 第四检查点NoteUI
	{ config_id = 724071, gadget_id = 70350085, pos = { x = 1308.300, y = 201.000, z = 478.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	-- 第五检查点NoteUI
	{ config_id = 724072, gadget_id = 70350085, pos = { x = 1344.000, y = 200.200, z = 555.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	-- 第六检查点NoteUI
	{ config_id = 724073, gadget_id = 70350085, pos = { x = 1333.800, y = 200.000, z = 626.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	-- 第七检查点NoteUI
	{ config_id = 724074, gadget_id = 70350085, pos = { x = 1327.900, y = 200.500, z = 678.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	-- 第八检查点NoteUI
	{ config_id = 724075, gadget_id = 70350085, pos = { x = 1346.100, y = 200.000, z = 716.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 724077, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1401.464, y = 209.428, z = 512.243 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1724019, name = "PLATFORM_REACH_POINT_724019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_724019", action = "action_EVENT_PLATFORM_REACH_POINT_724019", trigger_count = 0 },
	{ config_id = 1724033, name = "PLATFORM_REACH_POINT_724033", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_724033", action = "action_EVENT_PLATFORM_REACH_POINT_724033", trigger_count = 0 },
	{ config_id = 1724034, name = "PLATFORM_REACH_POINT_724034", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_724034", action = "action_EVENT_PLATFORM_REACH_POINT_724034", trigger_count = 0 },
	{ config_id = 1724035, name = "PLATFORM_REACH_POINT_724035", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_724035", action = "action_EVENT_PLATFORM_REACH_POINT_724035", trigger_count = 0 },
	{ config_id = 1724077, name = "ENTER_REGION_724077", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_724077", action = "action_EVENT_ENTER_REGION_724077" },
	{ config_id = 1724078, name = "CHALLENGE_SUCCESS_724078", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_724078", trigger_count = 0 },
	{ config_id = 1724079, name = "PLATFORM_REACH_POINT_724079", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_724079", action = "action_EVENT_PLATFORM_REACH_POINT_724079", trigger_count = 0, tag = "888" },
	{ config_id = 1724080, name = "CHALLENGE_FAIL_724080", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_724080", trigger_count = 0 },
	{ config_id = 1724081, name = "ANY_GADGET_DIE_724081", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_724081", action = "action_EVENT_ANY_GADGET_DIE_724081", tag = "999" },
	{ config_id = 1724082, name = "PLATFORM_REACH_POINT_724082", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_724082", action = "action_EVENT_PLATFORM_REACH_POINT_724082", trigger_count = 0, tag = "888" },
	{ config_id = 1724083, name = "PLATFORM_REACH_POINT_724083", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_724083", action = "action_EVENT_PLATFORM_REACH_POINT_724083", trigger_count = 0 },
	{ config_id = 1724085, name = "PLATFORM_REACH_POINT_724085", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_724085", action = "action_EVENT_PLATFORM_REACH_POINT_724085", trigger_count = 0, tag = "888" },
	{ config_id = 1724086, name = "PLATFORM_REACH_POINT_724086", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_724086", action = "action_EVENT_PLATFORM_REACH_POINT_724086", trigger_count = 0, tag = "888" },
	{ config_id = 1724087, name = "PLATFORM_REACH_POINT_724087", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_724087", action = "action_EVENT_PLATFORM_REACH_POINT_724087", trigger_count = 0, tag = "888" },
	{ config_id = 1724088, name = "PLATFORM_REACH_POINT_724088", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_724088", action = "action_EVENT_PLATFORM_REACH_POINT_724088", trigger_count = 0, tag = "888" },
	{ config_id = 1724089, name = "PLATFORM_REACH_POINT_724089", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_724089", action = "action_EVENT_PLATFORM_REACH_POINT_724089", trigger_count = 0, tag = "888" },
	{ config_id = 1724090, name = "PLATFORM_REACH_POINT_724090", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_724090", action = "action_EVENT_PLATFORM_REACH_POINT_724090", trigger_count = 0, tag = "888" }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 724015, 724016, 724037 },
		regions = { 724077 },
		triggers = { "PLATFORM_REACH_POINT_724033", "PLATFORM_REACH_POINT_724034", "PLATFORM_REACH_POINT_724035", "ENTER_REGION_724077", "CHALLENGE_SUCCESS_724078", "PLATFORM_REACH_POINT_724079", "CHALLENGE_FAIL_724080", "ANY_GADGET_DIE_724081", "PLATFORM_REACH_POINT_724082", "PLATFORM_REACH_POINT_724083", "PLATFORM_REACH_POINT_724085", "PLATFORM_REACH_POINT_724086", "PLATFORM_REACH_POINT_724087", "PLATFORM_REACH_POINT_724088", "PLATFORM_REACH_POINT_724089", "PLATFORM_REACH_POINT_724090" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 724017, 724018, 724020, 724021, 724023, 724026, 724032, 724062, 724063, 724064, 724065, 724066, 724067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 事件完成空Suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = Monsters1,
		monsters = { 724001, 724002, 724003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Monsters2,
		monsters = { 724004, 724005, 724006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = Monsters3,
		monsters = { 724008, 724014, 724091, 724092 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = Monsters4,
		monsters = { 724007, 724009, 724010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = Monsters5,
		monsters = { 724011, 724012, 724013 },
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
function condition_EVENT_PLATFORM_REACH_POINT_724019(context, evt)
	-- 判断是gadgetid 为 724015的移动平台，是否到达了310200237 的路线中的 36 点
	
	if 724015 ~= evt.param1 then
	  return false
	end
	
	if 310200237 ~= evt.param2 then
	  return false
	end
	
	if 36 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_724019(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_724033(context, evt)
	-- 判断是gadgetid 为 724015的移动平台，是否到达了310200237 的路线中的 10 点
	
	if 724015 ~= evt.param1 then
	  return false
	end
	
	if 310200237 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_724033(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102724, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_724034(context, evt)
	-- 判断是gadgetid 为 724015的移动平台，是否到达了310200237 的路线中的 17 点
	
	if 724015 ~= evt.param1 then
	  return false
	end
	
	if 310200237 ~= evt.param2 then
	  return false
	end
	
	if 17 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_724034(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102724, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_724035(context, evt)
	-- 判断是gadgetid 为 724015的移动平台，是否到达了310200237 的路线中的 25 点
	
	if 724015 ~= evt.param1 then
	  return false
	end
	
	if 310200237 ~= evt.param2 then
	  return false
	end
	
	if 25 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_724035(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102724, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_724077(context, evt)
	if evt.param1 ~= 724077 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_724077(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为203的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 666, 203, {26, 888, 8, 2,999,1}) then
		return -1
	end
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102724, 2)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102724, 4)
	
	-- 将configid为 0 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 724015, GadgetState.GearStart) then
	  return -1
	end 
	
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 724015) then
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_724078(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 8)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102724, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_724079(context, evt)
	-- 判断是gadgetid 为 724015的移动平台，是否到达了310200237 的路线中的 34 点
	
	if 724015 ~= evt.param1 then
	  return false
	end
	
	if 310200237 ~= evt.param2 then
	  return false
	end
	
	if 34 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_724079(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 724067 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_724080(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102724, EntityType.GADGET, 724015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 8)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102724, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_724081(context, evt)
	if 724015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_724081(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_724082(context, evt)
	-- 判断是gadgetid 为 724015的移动平台，是否到达了310200237 的路线中的 8 点
	
	if 724015 ~= evt.param1 then
	  return false
	end
	
	if 310200237 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_724082(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 724026 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_724083(context, evt)
	-- 判断是gadgetid 为 724015的移动平台，是否到达了310200237 的路线中的 5 点
	
	if 724015 ~= evt.param1 then
	  return false
	end
	
	if 310200237 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_724083(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102724, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102724, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_724085(context, evt)
	-- 判断是gadgetid 为 724015的移动平台，是否到达了310200237 的路线中的 3 点
	
	if 724015 ~= evt.param1 then
	  return false
	end
	
	if 310200237 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_724085(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 724023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_724086(context, evt)
	-- 判断是gadgetid 为 724015的移动平台，是否到达了310200237 的路线中的 12 点
	
	if 724015 ~= evt.param1 then
	  return false
	end
	
	if 310200237 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_724086(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 724062 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_724087(context, evt)
	-- 判断是gadgetid 为 724015的移动平台，是否到达了310200237 的路线中的 17 点
	
	if 724015 ~= evt.param1 then
	  return false
	end
	
	if 310200237 ~= evt.param2 then
	  return false
	end
	
	if 17 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_724087(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 724063 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_724088(context, evt)
	-- 判断是gadgetid 为 724015的移动平台，是否到达了310200237 的路线中的 21 点
	
	if 724015 ~= evt.param1 then
	  return false
	end
	
	if 310200237 ~= evt.param2 then
	  return false
	end
	
	if 21 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_724088(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 724064 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_724089(context, evt)
	-- 判断是gadgetid 为 724015的移动平台，是否到达了310200237 的路线中的 28 点
	
	if 724015 ~= evt.param1 then
	  return false
	end
	
	if 310200237 ~= evt.param2 then
	  return false
	end
	
	if 28 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_724089(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 724065 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_724090(context, evt)
	-- 判断是gadgetid 为 724015的移动平台，是否到达了310200237 的路线中的 30 点
	
	if 724015 ~= evt.param1 then
	  return false
	end
	
	if 310200237 ~= evt.param2 then
	  return false
	end
	
	if 30 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_724090(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 724066 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end