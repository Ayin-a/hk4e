-- 基础信息
local base_info = {
	group_id = 111101222
}

-- DEFS_MISCS
local defs = {
	group_id = 111101222,
	--开启机关的configID，SelectOption为175
	starter_gadget = 222001,
	--全程终点region的ConfigID
	end_region = 222005,
	--全程终点在哪个suit
	ending_suit = 3,
	--挑战限时秒
	challenge_time = 60,
	--收集目标数
	target_count = 3,

	coin_gadget_id = 70220086,

	--金币和冰柱的对应关系
	--[冰柱config_id]={金币config_id1,金币config_id2...}
	coin_ice = { 
		[222012] = {222014},
	},
	--此Group中，哪些suit里有金币
	coin_suits = {2,3},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[222017] = { config_id = 222017, monster_id = 21010101, pos = { x = 2093.858, y = 209.278, z = -1274.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	[222018] = { config_id = 222018, monster_id = 21010101, pos = { x = 2092.055, y = 207.630, z = -1267.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[222001] = { config_id = 222001, gadget_id = 70350083, pos = { x = 2108.257, y = 214.649, z = -1304.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[222002] = { config_id = 222002, gadget_id = 70360024, pos = { x = 2097.785, y = 210.967, z = -1288.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[222004] = { config_id = 222004, gadget_id = 70360025, pos = { x = 2089.425, y = 206.570, z = -1262.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[222006] = { config_id = 222006, gadget_id = 70220076, pos = { x = 2104.785, y = 214.743, z = -1300.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[222007] = { config_id = 222007, gadget_id = 70220078, pos = { x = 2104.217, y = 213.646, z = -1295.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[222008] = { config_id = 222008, gadget_id = 70220078, pos = { x = 2103.254, y = 213.403, z = -1296.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[222009] = { config_id = 222009, gadget_id = 70220078, pos = { x = 2102.043, y = 213.047, z = -1298.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[222010] = { config_id = 222010, gadget_id = 70220078, pos = { x = 2094.695, y = 209.129, z = -1268.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[222011] = { config_id = 222011, gadget_id = 70220078, pos = { x = 2093.053, y = 208.540, z = -1270.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[222012] = { config_id = 222012, gadget_id = 70220078, pos = { x = 2090.848, y = 208.065, z = -1272.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[222013] = { config_id = 222013, gadget_id = 70220086, pos = { x = 2094.213, y = 211.295, z = -1279.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[222014] = { config_id = 222014, gadget_id = 70220086, pos = { x = 2090.875, y = 210.170, z = -1271.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[222015] = { config_id = 222015, gadget_id = 70220086, pos = { x = 2100.399, y = 214.166, z = -1294.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[222016] = { config_id = 222016, gadget_id = 70220077, pos = { x = 2094.526, y = 210.740, z = -1277.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[222003] = { config_id = 222003, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2097.866, y = 210.986, z = -1288.266 } },
	[222005] = { config_id = 222005, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2089.740, y = 206.659, z = -1263.007 } },
	[222020] = { config_id = 222020, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2108.147, y = 215.348, z = -1305.105 } }
}

-- 触发器
triggers = {
	{ config_id = 1222003, name = "ENTER_REGION_222003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_222003" },
	{ config_id = 1222020, name = "ENTER_REGION_222020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_222020" }
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
		gadgets = { 222001 },
		regions = { 222020 },
		triggers = { "ENTER_REGION_222020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 222002, 222006, 222007, 222008, 222009, 222015 },
		regions = { 222003 },
		triggers = { "ENTER_REGION_222003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 222017, 222018 },
		gadgets = { 222004, 222010, 222011, 222012, 222013, 222014, 222016 },
		regions = { 222005 },
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
function action_EVENT_ENTER_REGION_222003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101222, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_222020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101222, 222001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end