-- 基础信息
local base_info = {
	group_id = 133315044
}

-- Trigger变量
local defs = {
	gadget_CoreID = 44005,
	monster_BossID = 44002,
	gadget_Point_1 = 44006,
	gadget_Point_2 = 44007,
	gadget_Point_3 = 44008
}

-- DEFS_MISCS
local RequireSuite = {} --死域玩法的初始suit。若不填或不注入，默认走init_config.suite

local DeathField ={
	CoreID = defs.gadget_CoreID,
	BossID = defs.monster_BossID,
	BossSuite = 2,
	EndSuite = 3,
	PointList = {defs.gadget_Point_1,defs.gadget_Point_2,defs.gadget_Point_3},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[44001] = { config_id = 44001, monster_id = 26120201, pos = { x = 523.221, y = 97.000, z = 2497.374 }, rot = { x = 0.000, y = 346.593, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6116, 6117, 1006 }, pose_id = 102, title_id = 10130, special_name_id = 10182, area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[44002] = { config_id = 44002, monster_id = 26120301, pos = { x = 530.290, y = 97.485, z = 2505.859 }, rot = { x = 0.000, y = 229.069, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6116, 6117, 1006 }, pose_id = 102, title_id = 10130, special_name_id = 10183, area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[44003] = { config_id = 44003, monster_id = 26120101, pos = { x = 518.729, y = 97.631, z = 2507.938 }, rot = { x = 0.000, y = 132.107, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6116, 6117, 1006 }, pose_id = 102, title_id = 10130, special_name_id = 10184, area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[44018] = { config_id = 44018, monster_id = 26090501, pos = { x = 520.602, y = 97.653, z = 2493.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1006, 6117 }, pose_id = 101, area_id = 20 },
	[44019] = { config_id = 44019, monster_id = 26090501, pos = { x = 525.458, y = 97.315, z = 2493.513 }, rot = { x = 0.000, y = 290.979, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1006, 6117 }, pose_id = 101, area_id = 20 },
	[44023] = { config_id = 44023, monster_id = 26090101, pos = { x = 533.973, y = 97.328, z = 2504.506 }, rot = { x = 0.000, y = 192.015, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1006, 6117 }, pose_id = 101, area_id = 20 },
	[44024] = { config_id = 44024, monster_id = 26090101, pos = { x = 532.260, y = 97.000, z = 2508.833 }, rot = { x = 0.000, y = 58.943, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1006, 6117 }, pose_id = 101, area_id = 20 },
	[44025] = { config_id = 44025, monster_id = 26090201, pos = { x = 517.580, y = 97.704, z = 2512.714 }, rot = { x = 0.000, y = 192.015, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1006, 6117 }, pose_id = 101, area_id = 20 },
	[44026] = { config_id = 44026, monster_id = 26090201, pos = { x = 513.357, y = 97.699, z = 2507.685 }, rot = { x = 0.000, y = 58.943, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1006, 6117 }, pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[44004] = { config_id = 44004, gadget_id = 70211121, pos = { x = 520.700, y = 97.707, z = 2491.726 }, rot = { x = 358.401, y = 7.614, z = 5.190 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	[44005] = { config_id = 44005, gadget_id = 70310193, pos = { x = 532.174, y = 97.592, z = 2496.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 20 },
	-- 死域节点一
	[44006] = { config_id = 44006, gadget_id = 70310195, pos = { x = 529.970, y = 136.960, z = 2378.780 }, rot = { x = 0.000, y = 290.903, z = 0.000 }, level = 33, area_id = 20 },
	-- 死域节点三
	[44007] = { config_id = 44007, gadget_id = 70310195, pos = { x = 463.152, y = 137.053, z = 2485.125 }, rot = { x = 0.000, y = 77.275, z = 0.000 }, level = 33, area_id = 20 },
	-- 死域节点二
	[44008] = { config_id = 44008, gadget_id = 70310195, pos = { x = 582.851, y = 137.945, z = 2562.789 }, rot = { x = 0.000, y = 290.903, z = 0.000 }, level = 33, area_id = 20 },
	[44009] = { config_id = 44009, gadget_id = 70310192, pos = { x = 525.956, y = 149.512, z = 2383.934 }, rot = { x = 0.000, y = 309.483, z = 0.000 }, level = 33, area_id = 20 },
	[44010] = { config_id = 44010, gadget_id = 70310192, pos = { x = 473.402, y = 145.722, z = 2504.311 }, rot = { x = 0.000, y = 215.891, z = 0.000 }, level = 33, area_id = 20 },
	[44011] = { config_id = 44011, gadget_id = 70310192, pos = { x = 580.895, y = 154.068, z = 2562.732 }, rot = { x = 0.000, y = 337.068, z = 0.000 }, level = 33, area_id = 20 },
	[44012] = { config_id = 44012, gadget_id = 70310191, pos = { x = 537.788, y = 126.793, z = 2403.719 }, rot = { x = 0.000, y = 16.555, z = 0.000 }, level = 33, area_id = 20 },
	[44013] = { config_id = 44013, gadget_id = 70310197, pos = { x = 583.921, y = 140.090, z = 2579.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 20 },
	[44014] = { config_id = 44014, gadget_id = 70310197, pos = { x = 502.094, y = 124.911, z = 2546.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 20 },
	[44015] = { config_id = 44015, gadget_id = 70310197, pos = { x = 575.036, y = 142.604, z = 2454.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 20 },
	[44016] = { config_id = 44016, gadget_id = 70310197, pos = { x = 594.248, y = 144.808, z = 2481.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 20 },
	[44020] = { config_id = 44020, gadget_id = 70310196, pos = { x = 532.969, y = 100.601, z = 2496.706 }, rot = { x = 355.025, y = 166.129, z = 349.937 }, level = 33, area_id = 20 },
	[44021] = { config_id = 44021, gadget_id = 70310196, pos = { x = 532.969, y = 100.601, z = 2496.706 }, rot = { x = 348.316, y = 258.251, z = 0.908 }, level = 33, area_id = 20 },
	[44022] = { config_id = 44022, gadget_id = 70310196, pos = { x = 532.969, y = 100.601, z = 2496.706 }, rot = { x = 3.042, y = 35.382, z = 350.318 }, level = 33, area_id = 20 },
	-- 节点一死
	[44029] = { config_id = 44029, gadget_id = 70360001, pos = { x = 456.060, y = 148.708, z = 2390.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 节点二死
	[44030] = { config_id = 44030, gadget_id = 70360001, pos = { x = 456.060, y = 148.708, z = 2390.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 节点三死
	[44031] = { config_id = 44031, gadget_id = 70360001, pos = { x = 456.060, y = 148.708, z = 2390.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 死域核心爆了
	[44032] = { config_id = 44032, gadget_id = 70360001, pos = { x = 456.060, y = 148.708, z = 2390.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[44034] = { config_id = 44034, gadget_id = 70310191, pos = { x = 467.471, y = 136.553, z = 2493.585 }, rot = { x = 0.000, y = 57.925, z = 0.000 }, level = 27, area_id = 20 },
	[44035] = { config_id = 44035, gadget_id = 70310191, pos = { x = 539.699, y = 126.978, z = 2567.971 }, rot = { x = 0.000, y = 57.925, z = 0.000 }, level = 1, area_id = 20 },
	[44037] = { config_id = 44037, gadget_id = 70310192, pos = { x = 584.873, y = 159.496, z = 2469.689 }, rot = { x = 0.000, y = 204.809, z = 0.000 }, level = 1, area_id = 20 },
	[44038] = { config_id = 44038, gadget_id = 70310192, pos = { x = 602.825, y = 148.711, z = 2507.519 }, rot = { x = 328.187, y = 216.763, z = 3.580 }, level = 1, area_id = 20 },
	[44039] = { config_id = 44039, gadget_id = 70310192, pos = { x = 583.022, y = 154.424, z = 2560.519 }, rot = { x = 0.000, y = 50.846, z = 0.000 }, level = 1, area_id = 20 },
	[44040] = { config_id = 44040, gadget_id = 70310192, pos = { x = 533.671, y = 138.569, z = 2590.040 }, rot = { x = 353.306, y = 178.267, z = 0.001 }, level = 27, area_id = 20 },
	[44041] = { config_id = 44041, gadget_id = 70310192, pos = { x = 526.825, y = 149.574, z = 2575.451 }, rot = { x = 6.071, y = 193.600, z = 0.000 }, level = 27, area_id = 20 },
	[44042] = { config_id = 44042, gadget_id = 70310192, pos = { x = 468.951, y = 154.363, z = 2517.607 }, rot = { x = 0.000, y = 20.601, z = 0.000 }, level = 27, area_id = 20 },
	[44043] = { config_id = 44043, gadget_id = 70310192, pos = { x = 467.143, y = 148.292, z = 2494.089 }, rot = { x = 0.000, y = 141.487, z = 0.000 }, level = 27, area_id = 20 },
	[44050] = { config_id = 44050, gadget_id = 70360001, pos = { x = 527.691, y = 97.000, z = 2465.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- boss战用
	[44052] = { config_id = 44052, gadget_id = 70310191, pos = { x = 517.450, y = 97.570, z = 2494.029 }, rot = { x = 0.000, y = 11.080, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- boss战用
	[44054] = { config_id = 44054, gadget_id = 70310191, pos = { x = 534.888, y = 97.053, z = 2508.269 }, rot = { x = 0.000, y = 69.142, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- boss战用
	[44055] = { config_id = 44055, gadget_id = 70310191, pos = { x = 512.867, y = 98.541, z = 2519.291 }, rot = { x = 0.000, y = 58.771, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[44061] = { config_id = 44061, gadget_id = 70310192, pos = { x = 563.526, y = 152.271, z = 2425.102 }, rot = { x = 345.125, y = 26.340, z = 357.870 }, level = 1, area_id = 20 },
	[44062] = { config_id = 44062, gadget_id = 70310192, pos = { x = 589.873, y = 158.773, z = 2466.719 }, rot = { x = 0.000, y = 356.523, z = 0.000 }, level = 1, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 冰
	{ config_id = 1044017, name = "SPECIFIC_MONSTER_HP_CHANGE_44017", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "44001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_44017", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_44017", trigger_count = 0 },
	-- 核心消失刷宝箱
	{ config_id = 1044027, name = "ANY_GADGET_DIE_44027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_44027", action = "action_EVENT_ANY_GADGET_DIE_44027", trigger_count = 0 },
	-- 节点一死对应特效消失
	{ config_id = 1044028, name = "GADGET_STATE_CHANGE_44028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_44028", action = "action_EVENT_GADGET_STATE_CHANGE_44028", trigger_count = 0 },
	-- 水
	{ config_id = 1044033, name = "SPECIFIC_MONSTER_HP_CHANGE_44033", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "44002", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_44033", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_44033", trigger_count = 0 },
	-- 节点二死对应特效消失
	{ config_id = 1044047, name = "GADGET_STATE_CHANGE_44047", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_44047", action = "action_EVENT_GADGET_STATE_CHANGE_44047", trigger_count = 0 },
	-- 节点三死对应特效消失
	{ config_id = 1044048, name = "GADGET_STATE_CHANGE_44048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_44048", action = "action_EVENT_GADGET_STATE_CHANGE_44048", trigger_count = 0 },
	-- 怪死，任务跳转
	{ config_id = 1044049, name = "ANY_MONSTER_DIE_44049", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44049", action = "action_EVENT_ANY_MONSTER_DIE_44049", trigger_count = 0 },
	-- 草
	{ config_id = 1044051, name = "SPECIFIC_MONSTER_HP_CHANGE_44051", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "44003", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_44051", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_44051", trigger_count = 0 },
	{ config_id = 1044053, name = "QUEST_START_44053", event = EventType.EVENT_QUEST_START, source = "7306631", condition = "", action = "action_EVENT_QUEST_START_44053" },
	-- 入战 锁生命圆质
	{ config_id = 1044056, name = "MONSTER_BATTLE_44056", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_44056", action = "action_EVENT_MONSTER_BATTLE_44056", trigger_count = 0 },
	-- 亮1锁3
	{ config_id = 1044057, name = "TIME_AXIS_PASS_44057", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_44057", action = "action_EVENT_TIME_AXIS_PASS_44057", trigger_count = 0 },
	-- 亮2锁1
	{ config_id = 1044058, name = "TIME_AXIS_PASS_44058", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_44058", action = "action_EVENT_TIME_AXIS_PASS_44058", trigger_count = 0 },
	-- 亮3锁2
	{ config_id = 1044059, name = "TIME_AXIS_PASS_44059", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_44059", action = "action_EVENT_TIME_AXIS_PASS_44059", trigger_count = 0 },
	-- 入战 时间轴
	{ config_id = 1044060, name = "MONSTER_BATTLE_44060", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_44060", action = "action_EVENT_MONSTER_BATTLE_44060", trigger_count = 0 },
	-- 创保底操作台
	{ config_id = 1044063, name = "GROUP_LOAD_44063", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_44063", trigger_count = 0 },
	-- 把操作台设为201
	{ config_id = 1044065, name = "GADGET_CREATE_44065", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_44065", action = "action_EVENT_GADGET_CREATE_44065", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 44036, gadget_id = 70310192, pos = { x = 558.654, y = 142.925, z = 2423.077 }, rot = { x = 0.000, y = 325.805, z = 0.000 }, level = 1, area_id = 20 },
		{ config_id = 44044, gadget_id = 70310197, pos = { x = 595.329, y = 145.948, z = 2480.789 }, rot = { x = 0.000, y = 174.936, z = 0.000 }, level = 1, area_id = 20 },
		{ config_id = 44045, gadget_id = 70310197, pos = { x = 522.266, y = 132.550, z = 2390.832 }, rot = { x = 0.000, y = 205.107, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 44046, gadget_id = 70310197, pos = { x = 451.149, y = 137.041, z = 2475.247 }, rot = { x = 0.000, y = 205.107, z = 0.000 }, level = 27, area_id = 20 }
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
		gadgets = { 44005, 44006, 44007, 44008, 44009, 44010, 44011, 44012, 44013, 44014, 44015, 44016, 44020, 44021, 44022, 44029, 44030, 44031, 44032, 44034, 44035, 44037, 44038, 44039, 44040, 44041, 44042, 44043, 44052, 44054, 44055, 44061, 44062 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_44027", "GADGET_STATE_CHANGE_44028", "GADGET_STATE_CHANGE_44047", "GADGET_STATE_CHANGE_44048" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 44001, 44002, 44003 },
		gadgets = { 44050 },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_44017", "SPECIFIC_MONSTER_HP_CHANGE_44033", "ANY_MONSTER_DIE_44049", "SPECIFIC_MONSTER_HP_CHANGE_44051", "MONSTER_BATTLE_44056", "TIME_AXIS_PASS_44057", "TIME_AXIS_PASS_44058", "TIME_AXIS_PASS_44059", "MONSTER_BATTLE_44060" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 44004, 44012, 44034, 44035, 44052, 44054, 44055 },
		regions = { },
		triggers = { "QUEST_START_44053", "GROUP_LOAD_44063", "GADGET_CREATE_44065" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 44004 },
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
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_44017(context, evt)
	--[[判断指定configid的怪物的血量小于%60时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 60 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_44017(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 44018, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 44019, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_44027(context, evt)
	if 44005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_44027(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315044, 4)
	
	-- 将configid为 44032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133315196, monsters = {}, gadgets = {196002,196003,196004,196005,196006,196007,196008} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_44028(context, evt)
	if 44006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_44028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 44020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 调用提示id为 730662512 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730662512) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "go1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "go1", 1, 133315217) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 44029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_44033(context, evt)
	--[[判断指定configid的怪物的血量小于%60时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 60 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_44033(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 44023, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 44024, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_44047(context, evt)
	if 44008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_44047(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 44022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 调用提示id为 730662513 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730662513) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "go2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "go2", 1, 133315217) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 44030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44030, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_44048(context, evt)
	if 44007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_44048(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 44021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 调用提示id为 730662514 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730662514) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "go3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "go3", 1, 133315217) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 44031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44049(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44049(context, evt)
	-- 将configid为 44050 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44050, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 44052 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44052, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 44054 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44054, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 44055 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44055, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_44051(context, evt)
	--[[判断指定configid的怪物的血量小于%60时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 60 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_44051(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 44025, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 44026, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_44053(context, evt)
	-- 调用提示id为 730662518 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730662518) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_44056(context, evt)
	if 44001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_44056(context, evt)
	-- 将configid为 44052 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44052, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 44054 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44054, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 44055 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44055, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_44057(context, evt)
	if "fight" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_44057(context, evt)
	-- 将configid为 44052 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44052, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 44054 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44054, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 44055 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44055, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_44058(context, evt)
	if "fight" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_44058(context, evt)
	-- 将configid为 44054 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44054, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 44052 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44052, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 44055 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44055, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_44059(context, evt)
	if "fight" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_44059(context, evt)
	-- 将configid为 44055 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44055, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 44054 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44054, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 44052 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44052, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_44060(context, evt)
	if 44003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_44060(context, evt)
	-- 创建标识为"fight"，时间节点为{2,32,62,90}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "fight", {2,32,62,90}, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_44063(context, evt)
	-- 创建id为44032的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 44032 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_44065(context, evt)
	if 44032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_44065(context, evt)
	-- 将configid为 44032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"