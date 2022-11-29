-- 基础信息
local base_info = {
	group_id = 133308427
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
	{ config_id = 427001, gadget_id = 70330299, pos = { x = -1806.072, y = 326.410, z = 4108.038 }, rot = { x = 0.000, y = 312.489, z = 0.000 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 427002, gadget_id = 70330299, pos = { x = -1797.810, y = 326.704, z = 4116.120 }, rot = { x = 0.169, y = 256.293, z = 1.066 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 427003, gadget_id = 70330299, pos = { x = -1798.250, y = 326.439, z = 4109.907 }, rot = { x = 0.000, y = 273.660, z = 0.000 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 427004, gadget_id = 70330293, pos = { x = -1806.142, y = 326.395, z = 4108.063 }, rot = { x = 0.000, y = 312.489, z = 0.000 }, level = 19, state = GadgetState.ChestLocked, persistent = true, area_id = 26 },
	{ config_id = 427005, gadget_id = 70330293, pos = { x = -1797.810, y = 326.704, z = 4116.120 }, rot = { x = 0.169, y = 256.293, z = 1.066 }, level = 19, state = GadgetState.ChestLocked, persistent = true, area_id = 26 },
	{ config_id = 427006, gadget_id = 70330293, pos = { x = -1806.142, y = 326.395, z = 4108.063 }, rot = { x = 0.000, y = 312.489, z = 0.000 }, level = 19, state = GadgetState.ChestOpened, persistent = true, area_id = 26 },
	{ config_id = 427007, gadget_id = 70330293, pos = { x = -1797.810, y = 326.704, z = 4116.120 }, rot = { x = 0.169, y = 256.293, z = 1.066 }, level = 19, state = GadgetState.ChestOpened, persistent = true, area_id = 26 },
	{ config_id = 427008, gadget_id = 70330293, pos = { x = -1798.250, y = 326.439, z = 4109.907 }, rot = { x = 0.000, y = 273.660, z = 0.000 }, level = 19, state = GadgetState.ChestOpened, persistent = true, area_id = 26 },
	{ config_id = 427009, gadget_id = 70330292, pos = { x = -1806.072, y = 326.410, z = 4108.038 }, rot = { x = 0.000, y = 312.489, z = 0.000 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 427010, gadget_id = 70330292, pos = { x = -1797.810, y = 326.704, z = 4116.120 }, rot = { x = 0.169, y = 256.293, z = 1.066 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 427011, gadget_id = 70330292, pos = { x = -1798.250, y = 326.439, z = 4109.907 }, rot = { x = 0.000, y = 273.660, z = 0.000 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 427012, gadget_id = 70330293, pos = { x = -1806.142, y = 326.395, z = 4108.063 }, rot = { x = 0.000, y = 312.489, z = 0.000 }, level = 19, state = GadgetState.GearStart, persistent = true, area_id = 26 },
	{ config_id = 427013, gadget_id = 70330293, pos = { x = -1797.810, y = 326.704, z = 4116.120 }, rot = { x = 0.169, y = 256.293, z = 1.066 }, level = 19, state = GadgetState.GearStart, persistent = true, area_id = 26 },
	{ config_id = 427014, gadget_id = 70330293, pos = { x = -1798.250, y = 326.439, z = 4109.907 }, rot = { x = 0.000, y = 273.660, z = 0.000 }, level = 19, state = GadgetState.GearStart, persistent = true, area_id = 26 },
	{ config_id = 427015, gadget_id = 70330293, pos = { x = -1806.142, y = 326.395, z = 4108.063 }, rot = { x = 0.000, y = 312.489, z = 0.000 }, level = 19, state = GadgetState.GearStop, persistent = true, area_id = 26 },
	{ config_id = 427016, gadget_id = 70330293, pos = { x = -1797.810, y = 326.704, z = 4116.120 }, rot = { x = 0.169, y = 256.293, z = 1.066 }, level = 19, state = GadgetState.GearStop, persistent = true, area_id = 26 },
	{ config_id = 427017, gadget_id = 70330293, pos = { x = -1798.250, y = 326.439, z = 4109.907 }, rot = { x = 0.000, y = 273.660, z = 0.000 }, level = 19, state = GadgetState.GearStop, persistent = true, area_id = 26 },
	{ config_id = 427018, gadget_id = 70330293, pos = { x = -1806.142, y = 326.395, z = 4108.063 }, rot = { x = 0.000, y = 326.829, z = 0.000 }, level = 19, state = GadgetState.CrystalResonate2, persistent = true, area_id = 26 },
	{ config_id = 427019, gadget_id = 70330293, pos = { x = -1797.810, y = 326.704, z = 4116.118 }, rot = { x = 0.169, y = 256.293, z = 1.066 }, level = 19, state = GadgetState.CrystalResonate2, persistent = true, area_id = 26 },
	{ config_id = 427020, gadget_id = 70330293, pos = { x = -1798.250, y = 326.439, z = 4109.907 }, rot = { x = 0.000, y = 273.660, z = 0.000 }, level = 19, state = GadgetState.CrystalResonate2, persistent = true, area_id = 26 },
	{ config_id = 427021, gadget_id = 70330293, pos = { x = -1798.250, y = 326.439, z = 4109.907 }, rot = { x = 0.000, y = 273.660, z = 0.000 }, level = 19, state = GadgetState.ChestLocked, persistent = true, area_id = 26 },
	{ config_id = 427022, gadget_id = 70330299, pos = { x = -1806.072, y = 326.410, z = 4108.038 }, rot = { x = 0.000, y = 312.489, z = 0.000 }, level = 19, state = GadgetState.GearStart, persistent = true, area_id = 26 },
	{ config_id = 427023, gadget_id = 70330299, pos = { x = -1797.810, y = 326.704, z = 4116.120 }, rot = { x = 0.169, y = 256.293, z = 1.066 }, level = 19, state = GadgetState.GearStart, persistent = true, area_id = 26 },
	{ config_id = 427024, gadget_id = 70330299, pos = { x = -1798.250, y = 326.439, z = 4109.907 }, rot = { x = 0.000, y = 273.660, z = 0.000 }, level = 19, state = GadgetState.GearStart, persistent = true, area_id = 26 },
	{ config_id = 427025, gadget_id = 70360001, pos = { x = -1806.142, y = 326.318, z = 4108.063 }, rot = { x = 0.000, y = 312.489, z = 0.000 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 427026, gadget_id = 70360001, pos = { x = -1797.810, y = 326.829, z = 4116.120 }, rot = { x = 0.169, y = 256.293, z = 1.066 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 427027, gadget_id = 70360001, pos = { x = -1798.250, y = 326.563, z = 4109.907 }, rot = { x = 0.000, y = 273.660, z = 0.000 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 427028, gadget_id = 70330293, pos = { x = -1806.142, y = 326.395, z = 4108.063 }, rot = { x = 0.000, y = 312.489, z = 0.000 }, level = 19, state = GadgetState.ChestOpened, persistent = true, area_id = 26 },
	{ config_id = 427029, gadget_id = 70330293, pos = { x = -1797.810, y = 326.704, z = 4116.120 }, rot = { x = 0.169, y = 256.293, z = 1.066 }, level = 19, state = GadgetState.ChestOpened, persistent = true, area_id = 26 },
	{ config_id = 427030, gadget_id = 70330293, pos = { x = -1798.250, y = 326.439, z = 4109.907 }, rot = { x = 0.000, y = 273.660, z = 0.000 }, level = 19, state = GadgetState.ChestOpened, persistent = true, area_id = 26 },
	{ config_id = 427034, gadget_id = 70710470, pos = { x = -1806.142, y = 326.318, z = 4108.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 26 },
	{ config_id = 427035, gadget_id = 70710470, pos = { x = -1797.810, y = 326.829, z = 4116.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 26 },
	{ config_id = 427036, gadget_id = 70710470, pos = { x = -1798.250, y = 326.563, z = 4109.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 26 },
	{ config_id = 427043, gadget_id = 70710470, pos = { x = -1806.142, y = 326.318, z = 4108.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 427044, gadget_id = 70710470, pos = { x = -1797.810, y = 326.829, z = 4116.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 427045, gadget_id = 70710470, pos = { x = -1798.250, y = 326.563, z = 4109.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 427046, gadget_id = 70710470, pos = { x = -1806.142, y = 326.318, z = 4108.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 427047, gadget_id = 70710470, pos = { x = -1797.810, y = 326.829, z = 4116.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 427048, gadget_id = 70710470, pos = { x = -1798.250, y = 326.563, z = 4109.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 427055, gadget_id = 70710470, pos = { x = -1806.142, y = 326.318, z = 4108.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 427056, gadget_id = 70710470, pos = { x = -1797.810, y = 326.829, z = 4116.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 427057, gadget_id = 70710470, pos = { x = -1798.250, y = 326.563, z = 4109.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 427058, gadget_id = 70710470, pos = { x = -1806.142, y = 326.318, z = 4108.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 427059, gadget_id = 70710470, pos = { x = -1797.810, y = 326.829, z = 4116.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 427060, gadget_id = 70710470, pos = { x = -1798.250, y = 326.563, z = 4109.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 427061, gadget_id = 70330293, pos = { x = -1806.142, y = 326.395, z = 4108.063 }, rot = { x = 0.000, y = 312.489, z = 0.000 }, level = 19, state = GadgetState.ChestTrap, persistent = true, area_id = 26 },
	{ config_id = 427062, gadget_id = 70330293, pos = { x = -1797.810, y = 326.704, z = 4116.120 }, rot = { x = 0.169, y = 256.293, z = 1.066 }, level = 19, state = GadgetState.ChestTrap, persistent = true, area_id = 26 },
	{ config_id = 427063, gadget_id = 70330293, pos = { x = -1798.250, y = 326.439, z = 4109.907 }, rot = { x = 0.000, y = 273.660, z = 0.000 }, level = 19, state = GadgetState.ChestTrap, persistent = true, area_id = 26 },
	{ config_id = 427064, gadget_id = 70330293, pos = { x = -1806.142, y = 326.395, z = 4108.063 }, rot = { x = 0.000, y = 312.489, z = 0.000 }, level = 19, state = GadgetState.GearAction1, persistent = true, area_id = 26 },
	{ config_id = 427065, gadget_id = 70330293, pos = { x = -1797.810, y = 326.704, z = 4116.120 }, rot = { x = 0.169, y = 256.293, z = 1.066 }, level = 19, state = GadgetState.GearAction1, persistent = true, area_id = 26 },
	{ config_id = 427066, gadget_id = 70330293, pos = { x = -1798.250, y = 326.439, z = 4109.907 }, rot = { x = 0.000, y = 273.660, z = 0.000 }, level = 19, state = GadgetState.GearAction1, persistent = true, area_id = 26 },
	-- 三个浇水=201
	{ config_id = 427067, gadget_id = 70360189, pos = { x = -1805.524, y = 326.389, z = 4107.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	-- 三个开花=201
	{ config_id = 427069, gadget_id = 70360189, pos = { x = -1805.524, y = 326.389, z = 4107.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	-- 三个开花=201
	{ config_id = 427071, gadget_id = 70360189, pos = { x = -1805.524, y = 326.389, z = 4107.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1427031, name = "ANY_GADGET_DIE_427031", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_427031", action = "action_EVENT_ANY_GADGET_DIE_427031" },
	{ config_id = 1427032, name = "ANY_GADGET_DIE_427032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_427032", action = "action_EVENT_ANY_GADGET_DIE_427032" },
	{ config_id = 1427033, name = "ANY_GADGET_DIE_427033", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_427033", action = "action_EVENT_ANY_GADGET_DIE_427033" },
	{ config_id = 1427037, name = "GADGET_STATE_CHANGE_427037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427037", action = "action_EVENT_GADGET_STATE_CHANGE_427037" },
	{ config_id = 1427038, name = "GADGET_STATE_CHANGE_427038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427038", action = "action_EVENT_GADGET_STATE_CHANGE_427038" },
	{ config_id = 1427039, name = "GADGET_STATE_CHANGE_427039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427039", action = "action_EVENT_GADGET_STATE_CHANGE_427039" },
	{ config_id = 1427040, name = "GADGET_STATE_CHANGE_427040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427040", action = "action_EVENT_GADGET_STATE_CHANGE_427040" },
	{ config_id = 1427041, name = "GADGET_STATE_CHANGE_427041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427041", action = "action_EVENT_GADGET_STATE_CHANGE_427041" },
	{ config_id = 1427042, name = "GADGET_STATE_CHANGE_427042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427042", action = "action_EVENT_GADGET_STATE_CHANGE_427042" },
	{ config_id = 1427049, name = "GADGET_STATE_CHANGE_427049", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427049", action = "action_EVENT_GADGET_STATE_CHANGE_427049" },
	{ config_id = 1427050, name = "GADGET_STATE_CHANGE_427050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427050", action = "action_EVENT_GADGET_STATE_CHANGE_427050" },
	{ config_id = 1427051, name = "GADGET_STATE_CHANGE_427051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427051", action = "action_EVENT_GADGET_STATE_CHANGE_427051" },
	{ config_id = 1427052, name = "GADGET_STATE_CHANGE_427052", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427052", action = "action_EVENT_GADGET_STATE_CHANGE_427052" },
	{ config_id = 1427053, name = "GADGET_STATE_CHANGE_427053", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427053", action = "action_EVENT_GADGET_STATE_CHANGE_427053" },
	{ config_id = 1427054, name = "GADGET_STATE_CHANGE_427054", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427054", action = "action_EVENT_GADGET_STATE_CHANGE_427054" },
	-- 判断浇水
	{ config_id = 1427068, name = "GADGET_STATE_CHANGE_427068", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427068", action = "action_EVENT_GADGET_STATE_CHANGE_427068", trigger_count = 0 },
	-- 判断长苗
	{ config_id = 1427070, name = "GADGET_STATE_CHANGE_427070", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427070", action = "action_EVENT_GADGET_STATE_CHANGE_427070", trigger_count = 0 },
	-- 判断开花
	{ config_id = 1427072, name = "GADGET_STATE_CHANGE_427072", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427072", action = "action_EVENT_GADGET_STATE_CHANGE_427072", trigger_count = 0 }
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
		-- description = 无需浇水,
		monsters = { },
		gadgets = { 427001, 427002, 427003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 需要浇水,
		monsters = { },
		gadgets = { 427022, 427023, 427024, 427055, 427056, 427057, 427067 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_427052", "GADGET_STATE_CHANGE_427053", "GADGET_STATE_CHANGE_427054", "GADGET_STATE_CHANGE_427068" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 需打破的种子,
		monsters = { },
		gadgets = { 427009, 427010, 427011, 427025, 427026, 427027, 427058, 427059, 427060, 427069 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_427031", "ANY_GADGET_DIE_427032", "ANY_GADGET_DIE_427033", "GADGET_STATE_CHANGE_427049", "GADGET_STATE_CHANGE_427050", "GADGET_STATE_CHANGE_427051", "GADGET_STATE_CHANGE_427070" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 无需施肥的种子,
		monsters = { },
		gadgets = { 427004, 427005, 427021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 需要施肥的种子,
		monsters = { },
		gadgets = { 427006, 427007, 427008, 427034, 427035, 427036 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_427037", "GADGET_STATE_CHANGE_427038", "GADGET_STATE_CHANGE_427039" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 无需施肥的幼苗,
		monsters = { },
		gadgets = { 427012, 427013, 427014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 需要施肥的幼苗,
		monsters = { },
		gadgets = { 427015, 427016, 427017, 427043, 427044, 427045, 427071 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_427040", "GADGET_STATE_CHANGE_427041", "GADGET_STATE_CHANGE_427042", "GADGET_STATE_CHANGE_427072" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 绽放的花,
		monsters = { },
		gadgets = { 427018, 427019, 427020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 已施肥的种子,
		monsters = { },
		gadgets = { 427061, 427062, 427063 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 已施肥的幼苗,
		monsters = { },
		gadgets = { 427064, 427065, 427066 },
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
function condition_EVENT_ANY_GADGET_DIE_427031(context, evt)
	if 427009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_427031(context, evt)
	-- 将configid为 427025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 427025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为427028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 427028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为427046的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 427046 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427058 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_427032(context, evt)
	if 427010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_427032(context, evt)
	-- 将configid为 427026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 427026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为427029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 427029 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为427047的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 427047 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427059 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_427033(context, evt)
	if 427011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_427033(context, evt)
	-- 将configid为 427027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 427027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为427030的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 427030 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为427048的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 427048 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427060 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427037(context, evt)
	if 427006 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427037(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427034 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427038(context, evt)
	if 427007 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427038(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427035 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427039(context, evt)
	if 427008 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427039(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427036 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427040(context, evt)
	if 427015 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427040(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427043 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427041(context, evt)
	if 427016 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427041(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427044 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427042(context, evt)
	if 427017 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427042(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427045 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427049(context, evt)
	if 427028 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427049(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427046 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427050(context, evt)
	if 427029 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427050(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427047 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427051(context, evt)
	if 427030 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427051(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427048 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427052(context, evt)
	if 427022 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427052(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427055 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427053(context, evt)
	if 427023 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427053(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427056 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427054(context, evt)
	if 427024 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427054(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308427, EntityType.GADGET, 427057 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427068(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308427, 427022) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308427, 427023) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308427, 427024) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427068(context, evt)
	-- 将configid为 427067 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 427067, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427070(context, evt)
	if GadgetState.ChestTrap ~= ScriptLib.GetGadgetStateByConfigId(context, 133308427, 427028) then
		return false
	end
	
	if GadgetState.ChestTrap ~= ScriptLib.GetGadgetStateByConfigId(context, 133308427, 427029) then
		return false
	end
	
	if GadgetState.ChestTrap ~= ScriptLib.GetGadgetStateByConfigId(context, 133308427, 427030) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427070(context, evt)
	-- 将configid为 427069 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 427069, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427072(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133308427, 427015) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133308427, 427016) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133308427, 427017) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427072(context, evt)
	-- 将configid为 427071 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 427071, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/DesertRoseFlower_Quest"