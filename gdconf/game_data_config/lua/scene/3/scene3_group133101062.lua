-- 基础信息
local base_info = {
	group_id = 133101062
}

-- Trigger变量
local defs = {
	challenge_1_duration = 40,
	challenge_2_duration = 55,
	challenge_3_duration = 45,
	group_id = 133101062,
	father_quest = 21016,
	region = 62013,
	gadget_chest_1 = 62004,
	gadget_chest_2 = 62005,
	gadget_chest_3 = 62006,
	challenge_id_no_record = 184,
	challenge_id_have_record = 168
}

-- DEFS_MISCS
defs.quest_1_id = defs.father_quest.."02"

defs.quest_2_id = defs.father_quest.."04"

defs.quest_3_id = defs.father_quest.."06"

defs.quest_4_id = defs.father_quest.."08"

defs.quest_1_success = defs.group_id.."0101"

defs.quest_1_fail = defs.group_id.."0102"

defs.quest_2_success = defs.group_id.."0201"

defs.quest_2_fail = defs.group_id.."0202"

defs.quest_3_success = defs.group_id.."0301"

defs.quest_3_fail = defs.group_id.."0302"

defs.quest_4_success = defs.group_id.."0401"

defs.quest_4_fail = defs.group_id.."0402"

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
	{ config_id = 62007, npc_id = 20036, pos = { x = 1443.270, y = 243.779, z = 1286.391 }, rot = { x = 0.000, y = 268.284, z = 0.000 }, area_id = 5 }
}

-- 装置
gadgets = {
	{ config_id = 62001, gadget_id = 70690001, pos = { x = 1396.728, y = 229.256, z = 1195.651 }, rot = { x = 0.000, y = 174.864, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62002, gadget_id = 70690001, pos = { x = 1398.396, y = 225.847, z = 1171.859 }, rot = { x = 0.000, y = 199.858, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62003, gadget_id = 70690001, pos = { x = 1388.182, y = 224.675, z = 1147.116 }, rot = { x = 0.000, y = 156.838, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62004, gadget_id = 70211101, pos = { x = 1445.191, y = 243.788, z = 1287.937 }, rot = { x = 358.578, y = 239.616, z = 13.452 }, level = 16, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 62005, gadget_id = 70211111, pos = { x = 1445.773, y = 243.369, z = 1286.205 }, rot = { x = 351.528, y = 271.955, z = 10.581 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 62006, gadget_id = 70211121, pos = { x = 1445.269, y = 243.054, z = 1284.208 }, rot = { x = 346.911, y = 308.834, z = 3.438 }, level = 16, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 62015, gadget_id = 70690001, pos = { x = 1393.918, y = 221.973, z = 1125.110 }, rot = { x = 0.000, y = 204.195, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62016, gadget_id = 70690006, pos = { x = 1385.501, y = 195.790, z = 1069.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62017, gadget_id = 70690001, pos = { x = 1382.899, y = 220.289, z = 1100.627 }, rot = { x = 8.584, y = 171.926, z = 354.730 }, level = 1, area_id = 5 },
	{ config_id = 62018, gadget_id = 70690001, pos = { x = 1385.603, y = 218.700, z = 1055.898 }, rot = { x = 9.150, y = 183.437, z = 355.794 }, level = 1, area_id = 5 },
	{ config_id = 62019, gadget_id = 70690001, pos = { x = 1384.421, y = 214.951, z = 1032.652 }, rot = { x = 9.150, y = 182.903, z = 355.794 }, level = 1, area_id = 5 },
	{ config_id = 62020, gadget_id = 70690001, pos = { x = 1383.884, y = 212.650, z = 1011.265 }, rot = { x = 9.150, y = 178.823, z = 355.794 }, level = 1, area_id = 5 },
	{ config_id = 62021, gadget_id = 70690001, pos = { x = 1383.696, y = 210.455, z = 989.229 }, rot = { x = 9.645, y = 186.925, z = 357.119 }, level = 1, area_id = 5 },
	{ config_id = 62022, gadget_id = 70690001, pos = { x = 1479.394, y = 226.694, z = 1210.726 }, rot = { x = 0.000, y = 148.457, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62023, gadget_id = 70690006, pos = { x = 1521.463, y = 185.745, z = 1143.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62024, gadget_id = 70690001, pos = { x = 1530.031, y = 208.258, z = 1129.499 }, rot = { x = 0.000, y = 157.921, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62025, gadget_id = 70690001, pos = { x = 1535.313, y = 207.846, z = 1111.460 }, rot = { x = 0.000, y = 175.333, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62027, gadget_id = 70690001, pos = { x = 1459.642, y = 229.190, z = 1241.528 }, rot = { x = 0.000, y = 147.827, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62028, gadget_id = 70690001, pos = { x = 1476.816, y = 222.007, z = 1196.744 }, rot = { x = 0.000, y = 168.321, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62029, gadget_id = 70690001, pos = { x = 1478.709, y = 220.770, z = 1184.634 }, rot = { x = 0.000, y = 179.428, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62030, gadget_id = 70690001, pos = { x = 1468.175, y = 209.074, z = 1137.632 }, rot = { x = 0.000, y = 204.544, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62031, gadget_id = 70690001, pos = { x = 1464.502, y = 209.074, z = 1129.121 }, rot = { x = 0.000, y = 201.723, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62032, gadget_id = 70690001, pos = { x = 1461.190, y = 209.074, z = 1119.970 }, rot = { x = 0.000, y = 198.774, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62033, gadget_id = 70690001, pos = { x = 1456.605, y = 206.354, z = 1079.985 }, rot = { x = 0.000, y = 190.204, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62034, gadget_id = 70690001, pos = { x = 1455.050, y = 206.223, z = 1071.351 }, rot = { x = 0.000, y = 184.325, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62035, gadget_id = 70690001, pos = { x = 1453.414, y = 205.699, z = 1062.288 }, rot = { x = 0.000, y = 191.819, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62036, gadget_id = 70360025, pos = { x = 1383.359, y = 207.238, z = 965.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62037, gadget_id = 70900201, pos = { x = 1383.352, y = 207.022, z = 965.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62038, gadget_id = 70690001, pos = { x = 1431.751, y = 245.647, z = 1278.450 }, rot = { x = 0.000, y = 216.220, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62039, gadget_id = 70690001, pos = { x = 1424.541, y = 244.638, z = 1269.211 }, rot = { x = 0.000, y = 214.951, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62040, gadget_id = 70690001, pos = { x = 1414.729, y = 244.000, z = 1256.229 }, rot = { x = 0.000, y = 217.094, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62041, gadget_id = 70690001, pos = { x = 1532.886, y = 208.340, z = 1091.800 }, rot = { x = 0.000, y = 199.327, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62042, gadget_id = 70690001, pos = { x = 1523.786, y = 208.711, z = 1076.393 }, rot = { x = 0.000, y = 227.998, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62043, gadget_id = 70690006, pos = { x = 1497.809, y = 191.931, z = 1050.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62044, gadget_id = 70690001, pos = { x = 1496.116, y = 216.092, z = 1049.413 }, rot = { x = 306.883, y = 232.483, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62045, gadget_id = 70690001, pos = { x = 1469.359, y = 216.842, z = 1027.255 }, rot = { x = 0.000, y = 232.483, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62046, gadget_id = 70690001, pos = { x = 1449.850, y = 214.280, z = 1012.277 }, rot = { x = 0.000, y = 232.483, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62047, gadget_id = 70690001, pos = { x = 1429.955, y = 212.157, z = 997.001 }, rot = { x = 0.000, y = 232.483, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62048, gadget_id = 70690001, pos = { x = 1406.400, y = 210.195, z = 978.916 }, rot = { x = 0.000, y = 232.483, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62049, gadget_id = 70690001, pos = { x = 1438.419, y = 244.260, z = 1274.978 }, rot = { x = 0.000, y = 169.690, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62050, gadget_id = 70690006, pos = { x = 1439.569, y = 185.904, z = 1035.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 62051, gadget_id = 70690001, pos = { x = 1439.414, y = 211.437, z = 1035.530 }, rot = { x = 307.543, y = 216.854, z = 7.645 }, level = 19, area_id = 5 },
	{ config_id = 62052, gadget_id = 70690001, pos = { x = 1427.226, y = 212.654, z = 1019.358 }, rot = { x = 0.000, y = 219.350, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62053, gadget_id = 70690001, pos = { x = 1413.815, y = 211.931, z = 1003.003 }, rot = { x = 0.000, y = 219.350, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 62054, gadget_id = 70690001, pos = { x = 1399.549, y = 210.068, z = 985.605 }, rot = { x = 0.000, y = 219.350, z = 0.000 }, level = 19, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 62013, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1383.710, y = 207.030, z = 964.913 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1062008, name = "QUEST_START_62008", event = EventType.EVENT_QUEST_START, source = defs.quest_1_id, condition = "", action = "action_EVENT_QUEST_START_62008", trigger_count = 0 },
	{ config_id = 1062009, name = "QUEST_START_62009", event = EventType.EVENT_QUEST_START, source = defs.quest_2_id, condition = "", action = "action_EVENT_QUEST_START_62009", trigger_count = 0 },
	{ config_id = 1062010, name = "QUEST_START_62010", event = EventType.EVENT_QUEST_START, source = defs.quest_3_id, condition = "", action = "action_EVENT_QUEST_START_62010", trigger_count = 0 },
	{ config_id = 1062011, name = "CHALLENGE_SUCCESS_62011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "10", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_62011", trigger_count = 0 },
	{ config_id = 1062012, name = "CHALLENGE_FAIL_62012", event = EventType.EVENT_CHALLENGE_FAIL, source = "10", condition = "", action = "action_EVENT_CHALLENGE_FAIL_62012", trigger_count = 0 },
	{ config_id = 1062013, name = "ENTER_REGION_62013", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_62013", action = "action_EVENT_ENTER_REGION_62013", trigger_count = 0, tag = "555" },
	{ config_id = 1062014, name = "QUEST_START_62014", event = EventType.EVENT_QUEST_START, source = defs.quest_4_id, condition = "", action = "action_EVENT_QUEST_START_62014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Challenge_Flag", value = 0, no_refresh = false }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_62008", "QUEST_START_62009", "QUEST_START_62010", "QUEST_START_62014" },
		npcs = { 62007 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 62001, 62002, 62003, 62015, 62016, 62017, 62018, 62019, 62020, 62021, 62036, 62037, 62038, 62039, 62040 },
		regions = { 62013 },
		triggers = { "CHALLENGE_SUCCESS_62011", "CHALLENGE_FAIL_62012", "ENTER_REGION_62013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 62022, 62023, 62024, 62025, 62027, 62036, 62037, 62041, 62042, 62043, 62044, 62045, 62046, 62047, 62048, 62049 },
		regions = { 62013 },
		triggers = { "CHALLENGE_SUCCESS_62011", "CHALLENGE_FAIL_62012", "ENTER_REGION_62013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 62027, 62028, 62029, 62030, 62031, 62032, 62033, 62034, 62035, 62036, 62037, 62049, 62050, 62051, 62052, 62053, 62054 },
		regions = { 62013 },
		triggers = { "CHALLENGE_SUCCESS_62011", "CHALLENGE_FAIL_62012", "ENTER_REGION_62013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_62008(context, evt)
	-- 添加2号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.challenge_id_no_record, defs.challenge_1_duration, 4, 555, 1)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 1, 1)
	ScriptLib.MarkPlayerAction(context, 3000, 2, 2)
	-- 设定挑战标志符为1
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 1)
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_62009(context, evt)
	-- 添加3号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.challenge_id_no_record, defs.challenge_2_duration, 4, 555, 1)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 2, 3)
	
	-- 设定挑战标志符为2
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 2)
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_62010(context, evt)
	-- 添加4号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.challenge_id_have_record, defs.challenge_3_duration, 4, 555, 1)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 2, 4)
	
	-- 设定挑战标志符为3
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 3)
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_62011(context, evt)
	-- 根据触发的挑战类型决定奖励物品
	local reward = ScriptLib.GetGroupVariableValue(context, "Challenge_Flag")
	if reward == 1 then
	ScriptLib.CreateGadget(context, {config_id = defs.gadget_chest_1} )
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context,defs.quest_1_success)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 3, 2)
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
	elseif reward == 2 then
	ScriptLib.CreateGadget(context, {config_id = defs.gadget_chest_2} )
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_2_success)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 3, 3)
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	elseif reward == 3 then
	ScriptLib.CreateGadget(context, {config_id = defs.gadget_chest_3} )
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_3_success)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 3, 4)
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	elseif reward == 4 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_4_success)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 3, 5)
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	end
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_62012(context, evt)
	local reward = ScriptLib.GetGroupVariableValue(context, "Challenge_Flag")
	if reward == 1 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_1_fail)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 4, 2)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
	elseif reward == 2 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_2_fail)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 4, 3)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	elseif reward == 3 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_3_fail)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 4, 4)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	elseif reward == 4 then
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_4_fail)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 4, 5)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_62013(context, evt)
	if evt.param1 ~= defs.region then 
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_62013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 62036 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_62014(context, evt)
	-- 添加4号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	-- 开启限时到达挑战
	ScriptLib.ActiveChallenge(context, 10, defs.challenge_id_have_record, defs.challenge_3_duration, 4, 555, 1)
	-- 添加玩法埋点
	ScriptLib.MarkPlayerAction(context, 3000, 2, 5)
	
	-- 设定挑战标志符为3
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 4)
	return 0
end