-- 基础信息
local base_info = {
	group_id = 133308059
}

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
}

-- 装置
gadgets = {
	-- 1无石板
	{ config_id = 59001, gadget_id = 70211111, pos = { x = -2504.384, y = 136.700, z = 5115.555 }, rot = { x = 19.905, y = 45.686, z = 11.392 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	-- 2
	{ config_id = 59002, gadget_id = 70211111, pos = { x = -2102.735, y = 144.405, z = 5162.791 }, rot = { x = 357.316, y = 90.011, z = 358.211 }, level = 26, chest_drop_id = 1050230, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	-- 3
	{ config_id = 59003, gadget_id = 70211111, pos = { x = -2603.060, y = 177.759, z = 5433.981 }, rot = { x = 0.000, y = 44.555, z = 0.000 }, level = 26, chest_drop_id = 1050231, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	-- 4
	{ config_id = 59004, gadget_id = 70211111, pos = { x = -2010.501, y = 160.092, z = 5590.893 }, rot = { x = 0.000, y = 270.506, z = 0.000 }, level = 26, chest_drop_id = 1050232, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
	-- 去过了别的但是没有播过reminder
	{ config_id = 59009, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2515.137, y = 144.791, z = 5117.247 }, area_id = 27 },
	-- 去过了别的但是没有播过reminder
	{ config_id = 59010, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2591.430, y = 188.147, z = 5447.570 }, area_id = 27 },
	-- 去过了别的但是没有播过reminder
	{ config_id = 59011, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2108.869, y = 156.996, z = 5168.487 }, area_id = 27 },
	-- 去过了别的但是没有播过reminder
	{ config_id = 59012, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2027.422, y = 160.092, z = 5571.420 }, area_id = 27 },
	-- 1号第1个
	{ config_id = 59013, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2515.137, y = 144.791, z = 5117.247 }, area_id = 27 },
	-- 2号第1个
	{ config_id = 59014, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2113.107, y = 159.683, z = 5168.487 }, area_id = 27 },
	-- 3号第1个
	{ config_id = 59015, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2586.330, y = 200.260, z = 5452.708 }, area_id = 27 },
	-- 4号第1个
	{ config_id = 59016, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2027.197, y = 160.092, z = 5571.851 }, area_id = 27 },
	-- 1号第2
	{ config_id = 59017, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2515.137, y = 144.791, z = 5117.247 }, area_id = 27 },
	-- 2号第2
	{ config_id = 59018, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2113.107, y = 159.683, z = 5168.487 }, area_id = 27 },
	-- 3号第2
	{ config_id = 59019, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2586.330, y = 200.260, z = 5452.708 }, area_id = 27 },
	-- 4号第2
	{ config_id = 59020, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2027.197, y = 160.092, z = 5571.851 }, area_id = 27 },
	-- 1号第3
	{ config_id = 59021, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2515.137, y = 144.791, z = 5117.247 }, area_id = 27 },
	-- 2号第3
	{ config_id = 59022, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2113.107, y = 159.683, z = 5168.487 }, area_id = 27 },
	-- 3号第3
	{ config_id = 59023, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2586.330, y = 200.260, z = 5452.708 }, area_id = 27 },
	-- 4号第3
	{ config_id = 59024, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -2027.197, y = 160.092, z = 5571.851 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 1完成1
	{ config_id = 1059005, name = "GADGET_STATE_CHANGE_59005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59005", action = "action_EVENT_GADGET_STATE_CHANGE_59005" },
	-- 2完成1
	{ config_id = 1059006, name = "GADGET_STATE_CHANGE_59006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59006", action = "action_EVENT_GADGET_STATE_CHANGE_59006" },
	-- 3完成1
	{ config_id = 1059007, name = "GADGET_STATE_CHANGE_59007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59007", action = "action_EVENT_GADGET_STATE_CHANGE_59007" },
	-- 4完成1
	{ config_id = 1059008, name = "GADGET_STATE_CHANGE_59008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59008", action = "action_EVENT_GADGET_STATE_CHANGE_59008" },
	-- 去过了别的但是没有播过reminder
	{ config_id = 1059009, name = "ENTER_REGION_59009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59009", action = "action_EVENT_ENTER_REGION_59009" },
	-- 去过了别的但是没有播过reminder
	{ config_id = 1059010, name = "ENTER_REGION_59010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59010", action = "action_EVENT_ENTER_REGION_59010" },
	-- 去过了别的但是没有播过reminder
	{ config_id = 1059011, name = "ENTER_REGION_59011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59011", action = "action_EVENT_ENTER_REGION_59011" },
	-- 去过了别的但是没有播过reminder
	{ config_id = 1059012, name = "ENTER_REGION_59012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59012", action = "action_EVENT_ENTER_REGION_59012" },
	-- 1号第1个
	{ config_id = 1059013, name = "ENTER_REGION_59013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59013", action = "action_EVENT_ENTER_REGION_59013" },
	-- 2号第1个
	{ config_id = 1059014, name = "ENTER_REGION_59014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59014", action = "action_EVENT_ENTER_REGION_59014" },
	-- 3号第1个
	{ config_id = 1059015, name = "ENTER_REGION_59015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59015", action = "action_EVENT_ENTER_REGION_59015" },
	-- 4号第1个
	{ config_id = 1059016, name = "ENTER_REGION_59016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59016", action = "action_EVENT_ENTER_REGION_59016" },
	-- 1号第2
	{ config_id = 1059017, name = "ENTER_REGION_59017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59017", action = "action_EVENT_ENTER_REGION_59017" },
	-- 2号第2
	{ config_id = 1059018, name = "ENTER_REGION_59018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59018", action = "action_EVENT_ENTER_REGION_59018" },
	-- 3号第2
	{ config_id = 1059019, name = "ENTER_REGION_59019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59019", action = "action_EVENT_ENTER_REGION_59019" },
	-- 4号第2
	{ config_id = 1059020, name = "ENTER_REGION_59020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59020", action = "action_EVENT_ENTER_REGION_59020" },
	-- 1号第3
	{ config_id = 1059021, name = "ENTER_REGION_59021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59021", action = "action_EVENT_ENTER_REGION_59021" },
	-- 2号第3
	{ config_id = 1059022, name = "ENTER_REGION_59022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59022", action = "action_EVENT_ENTER_REGION_59022" },
	-- 3号第3
	{ config_id = 1059023, name = "ENTER_REGION_59023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59023", action = "action_EVENT_ENTER_REGION_59023" },
	-- 4号第3
	{ config_id = 1059024, name = "ENTER_REGION_59024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59024", action = "action_EVENT_ENTER_REGION_59024" },
	-- 1完成2
	{ config_id = 1059025, name = "GADGET_STATE_CHANGE_59025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59025", action = "action_EVENT_GADGET_STATE_CHANGE_59025" },
	-- 1完成3
	{ config_id = 1059026, name = "GADGET_STATE_CHANGE_59026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59026", action = "action_EVENT_GADGET_STATE_CHANGE_59026" },
	-- 1完成4
	{ config_id = 1059027, name = "GADGET_STATE_CHANGE_59027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59027", action = "action_EVENT_GADGET_STATE_CHANGE_59027" },
	-- 2完成2没石块
	{ config_id = 1059028, name = "GADGET_STATE_CHANGE_59028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59028", action = "action_EVENT_GADGET_STATE_CHANGE_59028" },
	-- 3完成2没石块
	{ config_id = 1059029, name = "GADGET_STATE_CHANGE_59029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59029", action = "action_EVENT_GADGET_STATE_CHANGE_59029" },
	-- 4完成2没石块
	{ config_id = 1059030, name = "GADGET_STATE_CHANGE_59030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59030", action = "action_EVENT_GADGET_STATE_CHANGE_59030" },
	-- 2完成3没石块
	{ config_id = 1059031, name = "GADGET_STATE_CHANGE_59031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59031", action = "action_EVENT_GADGET_STATE_CHANGE_59031" },
	-- 3完成3没石块
	{ config_id = 1059032, name = "GADGET_STATE_CHANGE_59032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59032", action = "action_EVENT_GADGET_STATE_CHANGE_59032" },
	-- 4完成3没石块
	{ config_id = 1059033, name = "GADGET_STATE_CHANGE_59033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59033", action = "action_EVENT_GADGET_STATE_CHANGE_59033" },
	-- 2完成2有石块
	{ config_id = 1059034, name = "GADGET_STATE_CHANGE_59034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59034", action = "action_EVENT_GADGET_STATE_CHANGE_59034" },
	-- 3完成2有石块
	{ config_id = 1059035, name = "GADGET_STATE_CHANGE_59035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59035", action = "action_EVENT_GADGET_STATE_CHANGE_59035" },
	-- 4完成2有石块
	{ config_id = 1059036, name = "GADGET_STATE_CHANGE_59036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59036", action = "action_EVENT_GADGET_STATE_CHANGE_59036" },
	-- 接取任务
	{ config_id = 1059037, name = "QUEST_FINISH_59037", event = EventType.EVENT_QUEST_FINISH, source = "7311001", condition = "", action = "action_EVENT_QUEST_FINISH_59037", trigger_count = 0 },
	-- 1完成1无任务
	{ config_id = 1059038, name = "GADGET_STATE_CHANGE_59038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59038", action = "action_EVENT_GADGET_STATE_CHANGE_59038" },
	-- 2完成1无任务
	{ config_id = 1059039, name = "GADGET_STATE_CHANGE_59039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59039", action = "action_EVENT_GADGET_STATE_CHANGE_59039" },
	-- 3完成1无任务
	{ config_id = 1059040, name = "GADGET_STATE_CHANGE_59040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59040", action = "action_EVENT_GADGET_STATE_CHANGE_59040" },
	-- 4完成1无任务
	{ config_id = 1059041, name = "GADGET_STATE_CHANGE_59041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59041", action = "action_EVENT_GADGET_STATE_CHANGE_59041" },
	-- 没任务保底
	{ config_id = 1059042, name = "GADGET_STATE_CHANGE_59042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59042", action = "action_EVENT_GADGET_STATE_CHANGE_59042" },
	-- 没任务保底
	{ config_id = 1059043, name = "GADGET_STATE_CHANGE_59043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59043", action = "action_EVENT_GADGET_STATE_CHANGE_59043" },
	-- 没任务保底
	{ config_id = 1059044, name = "GADGET_STATE_CHANGE_59044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59044", action = "action_EVENT_GADGET_STATE_CHANGE_59044" },
	-- 没任务保底
	{ config_id = 1059045, name = "GADGET_STATE_CHANGE_59045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59045", action = "action_EVENT_GADGET_STATE_CHANGE_59045" },
	{ config_id = 1059046, name = "QUEST_FINISH_59046", event = EventType.EVENT_QUEST_FINISH, source = "7318912", condition = "", action = "action_EVENT_QUEST_FINISH_59046", trigger_count = 0 },
	-- 2完成3有石块
	{ config_id = 1059047, name = "GADGET_STATE_CHANGE_59047", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59047", action = "action_EVENT_GADGET_STATE_CHANGE_59047" },
	-- 3完成3有石块
	{ config_id = 1059048, name = "GADGET_STATE_CHANGE_59048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59048", action = "action_EVENT_GADGET_STATE_CHANGE_59048" },
	-- 4完成3有石块
	{ config_id = 1059049, name = "GADGET_STATE_CHANGE_59049", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59049", action = "action_EVENT_GADGET_STATE_CHANGE_59049" },
	-- 2完成3有石块
	{ config_id = 1059050, name = "GADGET_STATE_CHANGE_59050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59050", action = "action_EVENT_GADGET_STATE_CHANGE_59050" },
	-- 3完成3有石块
	{ config_id = 1059051, name = "GADGET_STATE_CHANGE_59051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59051", action = "action_EVENT_GADGET_STATE_CHANGE_59051" },
	-- 4完成3有石块
	{ config_id = 1059052, name = "GADGET_STATE_CHANGE_59052", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59052", action = "action_EVENT_GADGET_STATE_CHANGE_59052" },
	-- 2完成4有石块
	{ config_id = 1059053, name = "GADGET_STATE_CHANGE_59053", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59053", action = "action_EVENT_GADGET_STATE_CHANGE_59053" },
	-- 3完成4有石块
	{ config_id = 1059054, name = "GADGET_STATE_CHANGE_59054", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59054", action = "action_EVENT_GADGET_STATE_CHANGE_59054" },
	-- 4完成4有石块
	{ config_id = 1059055, name = "GADGET_STATE_CHANGE_59055", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59055", action = "action_EVENT_GADGET_STATE_CHANGE_59055" },
	-- 2完成4有石块
	{ config_id = 1059056, name = "GADGET_STATE_CHANGE_59056", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59056", action = "action_EVENT_GADGET_STATE_CHANGE_59056" },
	-- 3完成4有石块
	{ config_id = 1059057, name = "GADGET_STATE_CHANGE_59057", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59057", action = "action_EVENT_GADGET_STATE_CHANGE_59057" },
	-- 4完成4有石块
	{ config_id = 1059058, name = "GADGET_STATE_CHANGE_59058", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59058", action = "action_EVENT_GADGET_STATE_CHANGE_59058" },
	-- 2完成4有石块
	{ config_id = 1059059, name = "GADGET_STATE_CHANGE_59059", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59059", action = "action_EVENT_GADGET_STATE_CHANGE_59059" },
	-- 3完成4有石块
	{ config_id = 1059060, name = "GADGET_STATE_CHANGE_59060", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59060", action = "action_EVENT_GADGET_STATE_CHANGE_59060" },
	-- 4完成4有石块
	{ config_id = 1059061, name = "GADGET_STATE_CHANGE_59061", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59061", action = "action_EVENT_GADGET_STATE_CHANGE_59061" }
}

-- 变量
variables = {
	{ config_id = 1, name = "HowMany", value = 0, no_refresh = true },
	{ config_id = 2, name = "QuestExist", value = 0, no_refresh = true },
	{ config_id = 3, name = "Stone", value = 0, no_refresh = true }
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
		gadgets = { 59001, 59002, 59003, 59004 },
		regions = { 59009, 59010, 59011, 59012, 59013, 59014, 59015, 59016, 59017, 59018, 59019, 59020, 59021, 59022, 59023, 59024 },
		triggers = { "GADGET_STATE_CHANGE_59005", "GADGET_STATE_CHANGE_59006", "GADGET_STATE_CHANGE_59007", "GADGET_STATE_CHANGE_59008", "ENTER_REGION_59009", "ENTER_REGION_59010", "ENTER_REGION_59011", "ENTER_REGION_59012", "ENTER_REGION_59013", "ENTER_REGION_59014", "ENTER_REGION_59015", "ENTER_REGION_59016", "ENTER_REGION_59017", "ENTER_REGION_59018", "ENTER_REGION_59019", "ENTER_REGION_59020", "ENTER_REGION_59021", "ENTER_REGION_59022", "ENTER_REGION_59023", "ENTER_REGION_59024", "GADGET_STATE_CHANGE_59025", "GADGET_STATE_CHANGE_59026", "GADGET_STATE_CHANGE_59027", "GADGET_STATE_CHANGE_59028", "GADGET_STATE_CHANGE_59029", "GADGET_STATE_CHANGE_59030", "GADGET_STATE_CHANGE_59031", "GADGET_STATE_CHANGE_59032", "GADGET_STATE_CHANGE_59033", "GADGET_STATE_CHANGE_59034", "GADGET_STATE_CHANGE_59035", "GADGET_STATE_CHANGE_59036", "QUEST_FINISH_59037", "GADGET_STATE_CHANGE_59038", "GADGET_STATE_CHANGE_59039", "GADGET_STATE_CHANGE_59040", "GADGET_STATE_CHANGE_59041", "GADGET_STATE_CHANGE_59042", "GADGET_STATE_CHANGE_59043", "GADGET_STATE_CHANGE_59044", "GADGET_STATE_CHANGE_59045", "QUEST_FINISH_59046", "GADGET_STATE_CHANGE_59047", "GADGET_STATE_CHANGE_59048", "GADGET_STATE_CHANGE_59049", "GADGET_STATE_CHANGE_59050", "GADGET_STATE_CHANGE_59051", "GADGET_STATE_CHANGE_59052", "GADGET_STATE_CHANGE_59053", "GADGET_STATE_CHANGE_59054", "GADGET_STATE_CHANGE_59055", "GADGET_STATE_CHANGE_59056", "GADGET_STATE_CHANGE_59057", "GADGET_STATE_CHANGE_59058", "GADGET_STATE_CHANGE_59059", "GADGET_STATE_CHANGE_59060", "GADGET_STATE_CHANGE_59061" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59005(context, evt)
	if 59001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为0
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 0 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318914 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318914) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "Stone" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Stone", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59006(context, evt)
	if 59002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为0
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 0 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318906 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318906) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59007(context, evt)
	if 59003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为0
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 0 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318906 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318906) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59008(context, evt)
	if 59004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为0
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 0 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318904") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318906 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318906) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59009(context, evt)
	if evt.param1 ~= 59009 then return false end
	
	-- 判断变量"HowMany"为10
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 10 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59009(context, evt)
	-- 调用提示id为 7318901 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318901) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59010(context, evt)
	if evt.param1 ~= 59010 then return false end
	
	-- 判断变量"HowMany"为10
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 10 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59010(context, evt)
	-- 调用提示id为 7318901 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318901) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59011(context, evt)
	if evt.param1 ~= 59011 then return false end
	
	-- 判断变量"HowMany"为10
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 10 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59011(context, evt)
	-- 调用提示id为 7318901 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318901) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59012(context, evt)
	if evt.param1 ~= 59012 then return false end
	
	-- 判断变量"HowMany"为10
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 10 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59012(context, evt)
	-- 调用提示id为 7318901 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318901) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59013(context, evt)
	if evt.param1 ~= 59013 then return false end
	
	-- 判断变量"HowMany"为0
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 0 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59013(context, evt)
	-- 调用提示id为 7318904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59014(context, evt)
	if evt.param1 ~= 59014 then return false end
	
	-- 判断变量"HowMany"为0
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 0 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59014(context, evt)
	-- 调用提示id为 7318904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59015(context, evt)
	if evt.param1 ~= 59015 then return false end
	
	-- 判断变量"HowMany"为0
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 0 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59015(context, evt)
	-- 调用提示id为 7318904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59016(context, evt)
	if evt.param1 ~= 59016 then return false end
	
	-- 判断变量"HowMany"为0
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 0 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59016(context, evt)
	-- 调用提示id为 7318904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59017(context, evt)
	if evt.param1 ~= 59017 then return false end
	
	-- 判断变量"HowMany"为1
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 1 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59017(context, evt)
	-- 调用提示id为 7318939 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318939) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59018(context, evt)
	if evt.param1 ~= 59018 then return false end
	
	-- 判断变量"HowMany"为1
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 1 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59018(context, evt)
	-- 调用提示id为 7318939 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318939) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59019(context, evt)
	if evt.param1 ~= 59019 then return false end
	
	-- 判断变量"HowMany"为1
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 1 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59019(context, evt)
	-- 调用提示id为 7318939 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318939) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59020(context, evt)
	if evt.param1 ~= 59020 then return false end
	
	-- 判断变量"HowMany"为1
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 1 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59020(context, evt)
	-- 调用提示id为 7318939 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318939) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59021(context, evt)
	if evt.param1 ~= 59021 then return false end
	
	-- 判断变量"HowMany"为2
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 2 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59021(context, evt)
	-- 调用提示id为 7318940 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318940) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59022(context, evt)
	if evt.param1 ~= 59022 then return false end
	
	-- 判断变量"HowMany"为2
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 2 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59022(context, evt)
	-- 调用提示id为 7318940 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318940) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59023(context, evt)
	if evt.param1 ~= 59023 then return false end
	
	-- 判断变量"HowMany"为2
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 2 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59023(context, evt)
	-- 调用提示id为 7318940 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318940) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59024(context, evt)
	if evt.param1 ~= 59024 then return false end
	
	-- 判断变量"HowMany"为2
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 2 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59024(context, evt)
	-- 调用提示id为 7318940 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318940) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59025(context, evt)
	if 59001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为1
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 1 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59025(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318924 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318924) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "Stone" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Stone", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59026(context, evt)
	if 59001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为2
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 2 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318934 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318934) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "Stone" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Stone", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59027(context, evt)
	if 59001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为3
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 3 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59027(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318912 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318912) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "Stone" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Stone", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59028(context, evt)
	if 59002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为1
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 1 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为0
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59028(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318908 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318908) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59029(context, evt)
	if 59003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为1
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 1 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为0
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59029(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318908 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318908) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59030(context, evt)
	if 59004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为1
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 1 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为0
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59030(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318904") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318908 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318908) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59031(context, evt)
	if 59002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为2
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 2 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为0
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59031(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318910 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318910) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59032(context, evt)
	if 59003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为2
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 2 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为0
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59032(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318910 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318910) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59033(context, evt)
	if 59004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为2
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 2 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为0
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59033(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318904") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318910 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318910) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59034(context, evt)
	if 59002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为1
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 1 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为1
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59034(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318916 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318916) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59035(context, evt)
	if 59003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为1
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 1 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为1
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59035(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318916 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318916) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59036(context, evt)
	if 59004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为1
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 1 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为1
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59036(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318904") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318916 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318916) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_59037(context, evt)
	-- 将本组内变量名为 "QuestExist" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestExist", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59038(context, evt)
	if 59001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为0
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 0 then
			return false
	end
	
	-- 判断变量"QuestExist"为0
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59038(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 10
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59039(context, evt)
	if 59002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为0
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 0 then
			return false
	end
	
	-- 判断变量"QuestExist"为0
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59039(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 10
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59040(context, evt)
	if 59003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为0
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 0 then
			return false
	end
	
	-- 判断变量"QuestExist"为0
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59040(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 10
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59041(context, evt)
	if 59004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为0
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 0 then
			return false
	end
	
	-- 判断变量"QuestExist"为0
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59041(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318904") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 10
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59042(context, evt)
	if 59001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59042(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59043(context, evt)
	if 59002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59043(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59044(context, evt)
	if 59003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59044(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59045(context, evt)
	if 59004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59045(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318904") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_59046(context, evt)
	-- 将本组内变量名为 "QuestExist" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestExist", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "HowMany" 的变量设置为 20
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "HowMany", 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59047(context, evt)
	if 59002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为2
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 2 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为1
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59047(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318918 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59048(context, evt)
	if 59003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为2
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 2 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为1
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59048(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318918 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59049(context, evt)
	if 59004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为2
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 2 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为1
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59049(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318904") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318918 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59050(context, evt)
	if 59002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为2
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 2 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为2
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59050(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318926 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318926) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59051(context, evt)
	if 59003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为2
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 2 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为2
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59051(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318926 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318926) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59052(context, evt)
	if 59004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为2
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 2 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为2
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59052(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318904") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318926 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318926) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59053(context, evt)
	if 59002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为3
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 3 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为1
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59053(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318920 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318920) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59054(context, evt)
	if 59003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为3
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 3 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为1
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59054(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318920 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318920) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59055(context, evt)
	if 59004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为3
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 3 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为1
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59055(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318904") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318920 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318920) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59056(context, evt)
	if 59002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为3
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 3 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为2
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59056(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318928 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318928) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59057(context, evt)
	if 59003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为3
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 3 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为2
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59057(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318928 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318928) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59058(context, evt)
	if 59004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为3
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 3 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为2
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59058(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318904") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318928 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318928) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59059(context, evt)
	if 59002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为3
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 3 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为3
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59059(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318937 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318937) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59060(context, evt)
	if 59003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为3
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 3 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为3
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59060(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318937 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318937) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59061(context, evt)
	if 59004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"HowMany"为3
	if ScriptLib.GetGroupVariableValue(context, "HowMany") ~= 3 then
			return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	-- 判断变量"Stone"为3
	if ScriptLib.GetGroupVariableValue(context, "Stone") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59061(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7318904") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "HowMany" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "HowMany", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 7318937 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7318937) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end