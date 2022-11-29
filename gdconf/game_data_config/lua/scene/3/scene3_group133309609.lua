-- 基础信息
local base_info = {
	group_id = 133309609
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
	{ config_id = 609001, gadget_id = 70330392, pos = { x = -2115.107, y = 199.598, z = 5972.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609002, gadget_id = 70330392, pos = { x = -2106.821, y = 188.580, z = 5972.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609003, gadget_id = 70330264, pos = { x = -2106.906, y = 194.000, z = 5976.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609004, gadget_id = 70330264, pos = { x = -2106.905, y = 194.000, z = 5968.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609005, gadget_id = 70330392, pos = { x = -2087.268, y = 190.525, z = 5972.176 }, rot = { x = 0.000, y = 0.000, z = 21.957 }, level = 32, area_id = 27 },
	{ config_id = 609006, gadget_id = 70330392, pos = { x = -2096.744, y = 188.580, z = 5972.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609007, gadget_id = 70330392, pos = { x = -2078.022, y = 194.252, z = 5972.218 }, rot = { x = 0.000, y = 0.000, z = 21.957 }, level = 32, area_id = 27 },
	{ config_id = 609008, gadget_id = 70330392, pos = { x = -2068.717, y = 198.004, z = 5972.225 }, rot = { x = 0.000, y = 0.000, z = 21.957 }, level = 32, area_id = 27 },
	{ config_id = 609009, gadget_id = 70330392, pos = { x = -2054.640, y = 201.818, z = 5972.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609010, gadget_id = 70330392, pos = { x = -2054.640, y = 201.818, z = 5962.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609011, gadget_id = 70330392, pos = { x = -2054.640, y = 201.818, z = 5952.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609012, gadget_id = 70330392, pos = { x = -2054.640, y = 199.471, z = 5943.054 }, rot = { x = 330.936, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609013, gadget_id = 70330392, pos = { x = -2054.640, y = 194.588, z = 5934.268 }, rot = { x = 330.936, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609014, gadget_id = 70330392, pos = { x = -2054.640, y = 192.290, z = 5925.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609015, gadget_id = 70330392, pos = { x = -2063.474, y = 194.588, z = 5924.921 }, rot = { x = 30.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609016, gadget_id = 70330392, pos = { x = -2072.044, y = 199.577, z = 5924.906 }, rot = { x = 30.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609017, gadget_id = 70330392, pos = { x = -2080.932, y = 201.958, z = 5925.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609018, gadget_id = 70330392, pos = { x = -2090.956, y = 201.958, z = 5924.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609019, gadget_id = 70330392, pos = { x = -2090.956, y = 201.958, z = 5915.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609020, gadget_id = 70330392, pos = { x = -2090.956, y = 201.958, z = 5905.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609021, gadget_id = 70330392, pos = { x = -2090.956, y = 201.958, z = 5895.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609022, gadget_id = 70211131, pos = { x = -2090.882, y = 202.277, z = 5895.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜超级须弥", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 609024, gadget_id = 70690001, pos = { x = -2090.882, y = 203.390, z = 5884.396 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609025, gadget_id = 70690001, pos = { x = -2090.882, y = 203.390, z = 5869.551 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609026, gadget_id = 70690001, pos = { x = -2090.882, y = 203.390, z = 5854.770 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609027, gadget_id = 70690001, pos = { x = -2090.882, y = 203.390, z = 5840.609 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609028, gadget_id = 70330392, pos = { x = -2064.083, y = 199.872, z = 5972.225 }, rot = { x = 0.000, y = 0.000, z = 21.957 }, level = 32, area_id = 27 },
	{ config_id = 609029, gadget_id = 70330264, pos = { x = -2050.376, y = 207.579, z = 5972.122 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609030, gadget_id = 70330264, pos = { x = -2054.684, y = 198.272, z = 5920.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 609031, gadget_id = 70330264, pos = { x = -2095.074, y = 207.714, z = 5925.169 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 609023, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 20.000 }, pos = { x = -2090.882, y = 205.771, z = 5900.418 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1609023, name = "ENTER_REGION_609023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_609023", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 609001, 609002, 609003, 609004, 609005, 609006, 609007, 609008, 609009, 609010, 609011, 609012, 609013, 609014, 609015, 609016, 609017, 609018, 609019, 609020, 609021, 609028, 609029, 609030, 609031 },
		regions = { 609023 },
		triggers = { "ENTER_REGION_609023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 609024, 609025, 609026, 609027 },
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
function action_EVENT_ENTER_REGION_609023(context, evt)
	-- 创建id为609022的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 609022 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309609, 2)
	
	return 0
end