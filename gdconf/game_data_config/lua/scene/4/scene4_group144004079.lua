-- 基础信息
local base_info = {
	group_id = 144004079
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
	-- 触发靶标出现的开关
	{ config_id = 79001, gadget_id = 70360006, pos = { x = -696.209, y = 123.425, z = -114.138 }, rot = { x = 11.331, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 79002, gadget_id = 70211122, pos = { x = -705.288, y = 122.245, z = -109.966 }, rot = { x = 0.000, y = 79.106, z = 0.000 }, level = 16, drop_tag = "解谜高级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 79003, gadget_id = 70950076, pos = { x = -708.659, y = 125.900, z = -95.771 }, rot = { x = 0.000, y = 347.100, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 103 },
	{ config_id = 79004, gadget_id = 70350240, pos = { x = -708.685, y = 121.540, z = -95.781 }, rot = { x = 0.000, y = 67.550, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 79005, gadget_id = 70950079, pos = { x = -717.980, y = 125.489, z = -89.730 }, rot = { x = 0.000, y = 75.444, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 103 },
	{ config_id = 79006, gadget_id = 70350243, pos = { x = -717.980, y = 121.495, z = -89.730 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 79007, gadget_id = 70360001, pos = { x = -717.980, y = 121.495, z = -89.730 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 79009, gadget_id = 70950079, pos = { x = -699.550, y = 125.357, z = -98.110 }, rot = { x = 0.000, y = 113.897, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 103 },
	{ config_id = 79010, gadget_id = 70350243, pos = { x = -699.550, y = 121.516, z = -98.110 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 103 },
	{ config_id = 79011, gadget_id = 70360001, pos = { x = -699.550, y = 121.516, z = -98.110 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 79015, gadget_id = 70950079, pos = { x = -714.076, y = 125.454, z = -81.825 }, rot = { x = 0.000, y = 117.792, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 103 },
	{ config_id = 79016, gadget_id = 70350243, pos = { x = -714.076, y = 121.483, z = -81.825 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 103 },
	{ config_id = 79017, gadget_id = 70360001, pos = { x = -714.076, y = 121.483, z = -81.825 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 79018, gadget_id = 70350211, pos = { x = -699.672, y = 126.500, z = -107.665 }, rot = { x = 0.200, y = 341.530, z = 2.279 }, level = 1, is_use_point_array = true, area_id = 103 },
	{ config_id = 79019, gadget_id = 70350270, pos = { x = -699.502, y = 122.614, z = -107.665 }, rot = { x = 0.000, y = 159.709, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 79020, gadget_id = 70350212, pos = { x = -704.800, y = 126.300, z = -106.080 }, rot = { x = 0.226, y = 341.524, z = 2.279 }, level = 1, is_use_point_array = true, area_id = 103 },
	{ config_id = 79021, gadget_id = 70350212, pos = { x = -697.700, y = 126.000, z = -103.447 }, rot = { x = 0.226, y = 341.524, z = 2.279 }, level = 1, is_use_point_array = true, area_id = 103 },
	{ config_id = 79026, gadget_id = 70950073, pos = { x = -691.957, y = 124.905, z = -81.820 }, rot = { x = 0.000, y = 69.700, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 79027, gadget_id = 70950073, pos = { x = -689.741, y = 124.905, z = -80.929 }, rot = { x = 0.000, y = 69.700, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 79028, gadget_id = 70360001, pos = { x = -708.685, y = 121.540, z = -95.781 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 79055, gadget_id = 70350085, pos = { x = -691.957, y = 124.905, z = -81.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 79056, gadget_id = 70350085, pos = { x = -689.741, y = 124.905, z = -80.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1079008, name = "SELECT_OPTION_79008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79008", action = "action_EVENT_SELECT_OPTION_79008", trigger_count = 0 },
	{ config_id = 1079012, name = "GADGET_STATE_CHANGE_79012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79012", action = "action_EVENT_GADGET_STATE_CHANGE_79012", trigger_count = 0 },
	{ config_id = 1079013, name = "GADGET_STATE_CHANGE_79013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79013", action = "action_EVENT_GADGET_STATE_CHANGE_79013", trigger_count = 0 },
	{ config_id = 1079014, name = "GADGET_CREATE_79014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_79014", action = "action_EVENT_GADGET_CREATE_79014", trigger_count = 0 },
	{ config_id = 1079022, name = "SELECT_OPTION_79022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79022", action = "action_EVENT_SELECT_OPTION_79022", trigger_count = 0 },
	{ config_id = 1079023, name = "GADGET_STATE_CHANGE_79023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79023", action = "action_EVENT_GADGET_STATE_CHANGE_79023", trigger_count = 0 },
	{ config_id = 1079024, name = "GADGET_STATE_CHANGE_79024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79024", action = "action_EVENT_GADGET_STATE_CHANGE_79024", trigger_count = 0 },
	{ config_id = 1079025, name = "GADGET_CREATE_79025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_79025", action = "action_EVENT_GADGET_CREATE_79025", trigger_count = 0 },
	{ config_id = 1079029, name = "SELECT_OPTION_79029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79029", action = "action_EVENT_SELECT_OPTION_79029", trigger_count = 0 },
	{ config_id = 1079030, name = "GROUP_LOAD_79030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_79030", trigger_count = 0 },
	{ config_id = 1079031, name = "GADGET_STATE_CHANGE_79031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79031", action = "action_EVENT_GADGET_STATE_CHANGE_79031", trigger_count = 0 },
	{ config_id = 1079032, name = "GADGET_STATE_CHANGE_79032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79032", action = "action_EVENT_GADGET_STATE_CHANGE_79032", trigger_count = 0 },
	{ config_id = 1079033, name = "SELECT_OPTION_79033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79033", action = "action_EVENT_SELECT_OPTION_79033", trigger_count = 0 },
	{ config_id = 1079034, name = "SELECT_OPTION_79034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79034", action = "action_EVENT_SELECT_OPTION_79034", trigger_count = 0 },
	{ config_id = 1079035, name = "GADGET_STATE_CHANGE_79035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79035", action = "action_EVENT_GADGET_STATE_CHANGE_79035", trigger_count = 0 },
	{ config_id = 1079036, name = "SELECT_OPTION_79036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79036", action = "action_EVENT_SELECT_OPTION_79036", trigger_count = 0 },
	{ config_id = 1079037, name = "VARIABLE_CHANGE_79037", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_79037", action = "action_EVENT_VARIABLE_CHANGE_79037", trigger_count = 0 },
	{ config_id = 1079038, name = "GADGET_STATE_CHANGE_79038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79038", action = "action_EVENT_GADGET_STATE_CHANGE_79038", trigger_count = 0 },
	{ config_id = 1079039, name = "GADGET_STATE_CHANGE_79039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79039", action = "action_EVENT_GADGET_STATE_CHANGE_79039", trigger_count = 0 },
	{ config_id = 1079040, name = "GADGET_STATE_CHANGE_79040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79040", action = "action_EVENT_GADGET_STATE_CHANGE_79040", trigger_count = 0 },
	{ config_id = 1079041, name = "GADGET_CREATE_79041", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_79041", action = "action_EVENT_GADGET_CREATE_79041", trigger_count = 0 },
	{ config_id = 1079042, name = "GADGET_STATE_CHANGE_79042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79042", action = "action_EVENT_GADGET_STATE_CHANGE_79042", trigger_count = 0 },
	{ config_id = 1079043, name = "SELECT_OPTION_79043", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79043", action = "action_EVENT_SELECT_OPTION_79043", trigger_count = 0 },
	{ config_id = 1079044, name = "SELECT_OPTION_79044", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79044", action = "action_EVENT_SELECT_OPTION_79044", trigger_count = 0 },
	{ config_id = 1079045, name = "SELECT_OPTION_79045", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79045", action = "action_EVENT_SELECT_OPTION_79045", trigger_count = 0 },
	{ config_id = 1079046, name = "VARIABLE_CHANGE_79046", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_79046", action = "action_EVENT_VARIABLE_CHANGE_79046", trigger_count = 0 },
	{ config_id = 1079047, name = "SELECT_OPTION_79047", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79047", action = "action_EVENT_SELECT_OPTION_79047", trigger_count = 0 },
	{ config_id = 1079048, name = "GADGET_STATE_CHANGE_79048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79048", action = "action_EVENT_GADGET_STATE_CHANGE_79048", trigger_count = 0 },
	{ config_id = 1079049, name = "ANY_GADGET_DIE_79049", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_79049", action = "action_EVENT_ANY_GADGET_DIE_79049", trigger_count = 0 },
	{ config_id = 1079050, name = "VARIABLE_CHANGE_79050", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_79050", action = "action_EVENT_VARIABLE_CHANGE_79050", trigger_count = 0 },
	{ config_id = 1079051, name = "TIMER_EVENT_79051", event = EventType.EVENT_TIMER_EVENT, source = "waitForRecreateHoops", condition = "condition_EVENT_TIMER_EVENT_79051", action = "action_EVENT_TIMER_EVENT_79051", trigger_count = 0 },
	{ config_id = 1079052, name = "SELECT_OPTION_79052", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79052", action = "action_EVENT_SELECT_OPTION_79052", trigger_count = 0 },
	{ config_id = 1079053, name = "SELECT_OPTION_79053", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79053", action = "action_EVENT_SELECT_OPTION_79053", trigger_count = 0 },
	{ config_id = 1079054, name = "VARIABLE_CHANGE_79054", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_79054", action = "action_EVENT_VARIABLE_CHANGE_79054", trigger_count = 0 },
	{ config_id = 1079057, name = "ANY_GADGET_DIE_79057", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_79057", action = "action_EVENT_ANY_GADGET_DIE_79057" },
	{ config_id = 1079058, name = "VARIABLE_CHANGE_79058", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_79058", action = "action_EVENT_VARIABLE_CHANGE_79058", trigger_count = 0 },
	{ config_id = 1079059, name = "GADGET_STATE_CHANGE_79059", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79059", action = "action_EVENT_GADGET_STATE_CHANGE_79059", trigger_count = 0 },
	{ config_id = 1079060, name = "GADGET_STATE_CHANGE_79060", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79060", action = "action_EVENT_GADGET_STATE_CHANGE_79060", trigger_count = 0 },
	{ config_id = 1079061, name = "ANY_GADGET_DIE_79061", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_79061", action = "action_EVENT_ANY_GADGET_DIE_79061" },
	-- 分裂器cd
	{ config_id = 1079062, name = "TIMER_EVENT_79062", event = EventType.EVENT_TIMER_EVENT, source = "splitcd", condition = "", action = "action_EVENT_TIMER_EVENT_79062", trigger_count = 0 },
	{ config_id = 1079063, name = "GADGET_STATE_CHANGE_79063", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79063", action = "action_EVENT_GADGET_STATE_CHANGE_79063", trigger_count = 0 },
	{ config_id = 1079064, name = "GADGET_STATE_CHANGE_79064", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79064", action = "action_EVENT_GADGET_STATE_CHANGE_79064", trigger_count = 0 },
	{ config_id = 1079065, name = "GROUP_REFRESH_79065", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_79065", trigger_count = 0 },
	-- 分裂器cd
	{ config_id = 1079066, name = "TIMER_EVENT_79066", event = EventType.EVENT_TIMER_EVENT, source = "waitForRecreateHoops", condition = "", action = "action_EVENT_TIMER_EVENT_79066", trigger_count = 0 },
	{ config_id = 1079067, name = "GROUP_LOAD_79067", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_79067", action = "action_EVENT_GROUP_LOAD_79067", trigger_count = 0 },
	{ config_id = 1079068, name = "GROUP_LOAD_79068", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_79068", action = "action_EVENT_GROUP_LOAD_79068", trigger_count = 0 },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1079070, name = "GADGET_STATE_CHANGE_79070", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79070", action = "action_EVENT_GADGET_STATE_CHANGE_79070" },
	{ config_id = 1079071, name = "GADGET_STATE_CHANGE_79071", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79071", action = "action_EVENT_GADGET_STATE_CHANGE_79071", trigger_count = 0 },
	{ config_id = 1079072, name = "GADGET_STATE_CHANGE_79072", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79072", action = "action_EVENT_GADGET_STATE_CHANGE_79072", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = false },
	{ config_id = 4, name = "killedHoops", value = 0, no_refresh = false },
	{ config_id = 5, name = "turncount1", value = 0, no_refresh = false },
	{ config_id = 6, name = "turncount2", value = 0, no_refresh = false },
	{ config_id = 7, name = "turncount3", value = 0, no_refresh = false },
	{ config_id = 8, name = "done", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 12,
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
		-- description = [默认加载的Entities],
		monsters = { },
		gadgets = { 79001 },
		regions = { },
		triggers = { "GROUP_LOAD_79030", "ANY_GADGET_DIE_79057", "ANY_GADGET_DIE_79061", "GROUP_REFRESH_79065", "GROUP_LOAD_79067", "GADGET_STATE_CHANGE_79070", "GADGET_STATE_CHANGE_79071", "GADGET_STATE_CHANGE_79072" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [羽球元素靶标],
		monsters = { },
		gadgets = { 79056 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [需销毁多个靶标的判定方法],
		monsters = { },
		gadgets = { 79002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_79049", "VARIABLE_CHANGE_79050", "TIMER_EVENT_79051", "VARIABLE_CHANGE_79058" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [加载固定位置的元素台座],
		monsters = { },
		gadgets = { 79003, 79004, 79028 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_79031", "GADGET_STATE_CHANGE_79032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 79009, 79010, 79011 },
		regions = { },
		triggers = { "SELECT_OPTION_79029", "SELECT_OPTION_79033", "SELECT_OPTION_79034", "SELECT_OPTION_79036", "VARIABLE_CHANGE_79037", "GADGET_STATE_CHANGE_79039", "GADGET_STATE_CHANGE_79040", "GADGET_CREATE_79041" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载固定位置的分裂台座],
		monsters = { },
		gadgets = { 79018, 79019, 79020, 79021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_79035", "GADGET_STATE_CHANGE_79038", "GADGET_STATE_CHANGE_79042", "GADGET_STATE_CHANGE_79048", "GADGET_STATE_CHANGE_79059", "GADGET_STATE_CHANGE_79060", "GADGET_STATE_CHANGE_79063", "GADGET_STATE_CHANGE_79064" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [完成玩法后的空Suite],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 79005, 79006, 79007 },
		regions = { },
		triggers = { "SELECT_OPTION_79008", "GADGET_STATE_CHANGE_79012", "GADGET_STATE_CHANGE_79013", "GADGET_CREATE_79014", "SELECT_OPTION_79043", "SELECT_OPTION_79044", "SELECT_OPTION_79045", "VARIABLE_CHANGE_79046" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 79015, 79016, 79017 },
		regions = { },
		triggers = { "SELECT_OPTION_79022", "GADGET_STATE_CHANGE_79023", "GADGET_STATE_CHANGE_79024", "GADGET_CREATE_79025", "SELECT_OPTION_79047", "SELECT_OPTION_79052", "SELECT_OPTION_79053", "VARIABLE_CHANGE_79054" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 79026, 79027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 79055 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_79068" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "TIMER_EVENT_79062", "TIMER_EVENT_79066" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_79008(context, evt)
	-- 判断是gadgetid 79007 option_id 211
	if 79007 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount2"为0
	if ScriptLib.GetGroupVariableValue(context, "turncount2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79008(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 79005, 400400004, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79012(context, evt)
	if 79001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79012(context, evt)
	-- 将configid为 79005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 79006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79013(context, evt)
	if 79001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79013(context, evt)
	-- 将configid为 79005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 79006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_79014(context, evt)
	if 79007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_79014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004079, 79007, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_79022(context, evt)
	-- 判断是gadgetid 79017 option_id 211
	if 79017 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount3"为0
	if ScriptLib.GetGroupVariableValue(context, "turncount3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79022(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 79015, 400400005, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79023(context, evt)
	if 79001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79023(context, evt)
	-- 将configid为 79015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79024(context, evt)
	if 79001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79024(context, evt)
	-- 将configid为 79015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_79025(context, evt)
	if 79017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_79025(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004079, 79017, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_79029(context, evt)
	-- 判断是gadgetid 79011 option_id 211
	if 79011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount1"为0
	if ScriptLib.GetGroupVariableValue(context, "turncount1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79029(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 79009, 400400003, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_79030(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 6)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79031(context, evt)
	if 79001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79031(context, evt)
	-- 将configid为 79003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 79004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79032(context, evt)
	if 79001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79032(context, evt)
	-- 将configid为 79003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 79004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_79033(context, evt)
	-- 判断是gadgetid 79011 option_id 211
	if 79011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount1"为1
	if ScriptLib.GetGroupVariableValue(context, "turncount1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79033(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 79009, 400400003, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_79034(context, evt)
	-- 判断是gadgetid 79011 option_id 211
	if 79011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount1"为2
	if ScriptLib.GetGroupVariableValue(context, "turncount1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79034(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 79009, 400400003, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79035(context, evt)
	if 79018 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79035(context, evt)
	-- 将configid为 79020 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79020, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 79021 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79021, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_79036(context, evt)
	-- 判断是gadgetid 79011 option_id 211
	if 79011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount1"为3
	if ScriptLib.GetGroupVariableValue(context, "turncount1") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79036(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 79009, 400400003, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_79037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"turncount1"为4
	if ScriptLib.GetGroupVariableValue(context, "turncount1") < 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_79037(context, evt)
	-- 变量"turncount1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "turncount1", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79038(context, evt)
	if 79018 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79038(context, evt)
	-- 将configid为 79020 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79020, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 79021 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79021, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79039(context, evt)
	if 79001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79039(context, evt)
	-- 将configid为 79009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79040(context, evt)
	if 79001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79040(context, evt)
	-- 将configid为 79009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_79041(context, evt)
	if 79011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_79041(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004079, 79011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79042(context, evt)
	if 79018 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79042(context, evt)
	-- 将configid为 79020 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79020, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 79021 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79021, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_79043(context, evt)
	-- 判断是gadgetid 79007 option_id 211
	if 79007 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount2"为1
	if ScriptLib.GetGroupVariableValue(context, "turncount2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79043(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 79005, 400400004, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_79044(context, evt)
	-- 判断是gadgetid 79007 option_id 211
	if 79007 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount2"为2
	if ScriptLib.GetGroupVariableValue(context, "turncount2") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79044(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 79005, 400400004, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_79045(context, evt)
	-- 判断是gadgetid 79007 option_id 211
	if 79007 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount2"为3
	if ScriptLib.GetGroupVariableValue(context, "turncount2") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79045(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 79005, 400400004, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_79046(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"turncount1"为4
	if ScriptLib.GetGroupVariableValue(context, "turncount2") < 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_79046(context, evt)
	-- 变量"turncount2"赋值为0
	ScriptLib.SetGroupVariableValue(context, "turncount2", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_79047(context, evt)
	-- 判断是gadgetid 79017 option_id 211
	if 79017 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount3"为1
	if ScriptLib.GetGroupVariableValue(context, "turncount3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79047(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 79015, 400400005, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79048(context, evt)
	if 79018 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79048(context, evt)
	-- 将configid为 79020 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79020, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 79021 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79021, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_79049(context, evt)
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_79049(context, evt)
	-- 针对当前group内变量名为 "killedHoops" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "killedHoops", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_79050(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_79050(context, evt)
	-- 延迟1.5秒后,向groupId为：144004079的对象,请求一次调用,并将string参数："waitForRecreateHoops" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144004079, "waitForRecreateHoops", 1.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_79051(context, evt)
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_79051(context, evt)
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004079, 10)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 10)
	
	-- 将本组内变量名为 "killedHoops" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "killedHoops", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_79052(context, evt)
	-- 判断是gadgetid 79017 option_id 211
	if 79017 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount3"为2
	if ScriptLib.GetGroupVariableValue(context, "turncount3") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79052(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 79015, 400400005, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_79053(context, evt)
	-- 判断是gadgetid 79017 option_id 211
	if 79017 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount3"为3
	if ScriptLib.GetGroupVariableValue(context, "turncount3") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79053(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 79015, 400400005, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_79054(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"turncount1"为4
	if ScriptLib.GetGroupVariableValue(context, "turncount3") < 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_79054(context, evt)
	-- 变量"turncount3"赋值为0
	ScriptLib.SetGroupVariableValue(context, "turncount3", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_79057(context, evt)
	if 79026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_79057(context, evt)
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004079, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_79058(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为2
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_79058(context, evt)
	-- 将configid为 79002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004079, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79059(context, evt)
	if 79001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79059(context, evt)
	-- 将configid为 79018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 设置指定gadget的globalvalue
	  local CurValue = ScriptLib.GetGadgetAbilityFloatValue(context, 144004079, 79018, "LudiSplitter_Active")
	
	  local DeltaValue = math.ceil(1 - CurValue) 
	
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {79018}, "LudiSplitter_Active", DeltaValue)
	
	-- 将configid为 79019 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79019, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79060(context, evt)
	if 79001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79060(context, evt)
	-- 将configid为 79018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 设置指定gadget的globalvalue
	  local CurValue = ScriptLib.GetGadgetAbilityFloatValue(context, 144004079, 79018, "LudiSplitter_Active")
	
	  local DeltaValue = math.ceil(0 - CurValue) 
	
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {79018}, "LudiSplitter_Active", DeltaValue)
	
	-- 将configid为 79019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_79061(context, evt)
	if 79027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_79061(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004079, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_79062(context, evt)
		-- 设置指定gadget的globalvalue
	  local CurValue = ScriptLib.GetGadgetAbilityFloatValue(context, 144004079, 79018, "LudiSplitter_Active")
	
	  local DeltaValue = math.ceil(1 - CurValue) 
	
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {79018}, "LudiSplitter_Active", DeltaValue)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79063(context, evt)
	if 79018 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79063(context, evt)
	-- 将configid为 79020 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79020, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 79021 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79021, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79064(context, evt)
	if 79020 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79064(context, evt)
	-- 将configid为 79018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 设置指定gadget的globalvalue
	  local CurValue = ScriptLib.GetGadgetAbilityFloatValue(context, 144004079, 79018, "LudiSplitter_Active")
	
	  local DeltaValue = math.ceil(0 - CurValue) 
	
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {79018}, "LudiSplitter_Active", DeltaValue)
	
	-- 延迟2秒后,向groupId为：144004079的对象,请求一次调用,并将string参数："splitcd" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144004079, "splitcd", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_79065(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 6)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 10)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_79066(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004079, 2)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004079, 11)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 2)
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_79067(context, evt)
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_79067(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_79068(context, evt)
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_79068(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004079, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 6)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79070(context, evt)
	if 79002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79070(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004079, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79071(context, evt)
	if 79001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79071(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 2)
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 11)
	
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004079, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79072(context, evt)
	if 79001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79072(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004079, 2)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004079, 11)
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004079, 13)
	
	return 0
end