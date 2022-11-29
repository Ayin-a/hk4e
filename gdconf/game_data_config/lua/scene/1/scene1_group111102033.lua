-- 基础信息
local base_info = {
	group_id = 111102033
}

-- DEFS_MISCS
local RequireSuite = {} --死域玩法的初始suit。若不填或不注入，默认走init_config.suite

local DeathField ={
	ZoneID = 123,
	CoreID = 33001,
	BossID = 33006,
	BossSuite = 2,
	EndSuite = 3,
	PointList = {33002,33003,33004},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[33006] = { config_id = 33006, monster_id = 21020401, pos = { x = 1296.946, y = 271.098, z = -1590.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王" },
	[33013] = { config_id = 33013, monster_id = 28020301, pos = { x = 1300.499, y = 270.494, z = -1585.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽" },
	[33014] = { config_id = 33014, monster_id = 28020301, pos = { x = 1296.548, y = 271.039, z = -1588.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[33001] = { config_id = 33001, gadget_id = 70310193, pos = { x = 1300.426, y = 270.958, z = -1589.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	[33002] = { config_id = 33002, gadget_id = 70310195, pos = { x = 1302.964, y = 270.336, z = -1580.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33003] = { config_id = 33003, gadget_id = 70310195, pos = { x = 1291.291, y = 270.831, z = -1591.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33004] = { config_id = 33004, gadget_id = 70310195, pos = { x = 1292.409, y = 270.377, z = -1582.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33005] = { config_id = 33005, gadget_id = 70310198, pos = { x = 1290.696, y = 270.185, z = -1577.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	[33007] = { config_id = 33007, gadget_id = 70360001, pos = { x = 1294.079, y = 270.985, z = -1597.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, worktop_config = { is_persistent = true, init_options = { 24 } } },
	[33008] = { config_id = 33008, gadget_id = 70310192, pos = { x = 1297.340, y = 274.525, z = -1593.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33009] = { config_id = 33009, gadget_id = 70310194, pos = { x = 1286.017, y = 280.199, z = -1588.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33010] = { config_id = 33010, gadget_id = 70310191, pos = { x = 1294.079, y = 270.985, z = -1597.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33012] = { config_id = 33012, gadget_id = 70330197, pos = { x = 1307.698, y = 270.791, z = -1589.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33015] = { config_id = 33015, gadget_id = 70290002, pos = { x = 1302.232, y = 271.009, z = -1591.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33016] = { config_id = 33016, gadget_id = 70540044, pos = { x = 1293.805, y = 270.985, z = -1600.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33017] = { config_id = 33017, gadget_id = 70500000, pos = { x = 1293.805, y = 270.985, z = -1600.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2048, owner = 33016 },
	[33018] = { config_id = 33018, gadget_id = 70500000, pos = { x = 1298.041, y = 270.985, z = -1600.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2045 },
	[33019] = { config_id = 33019, gadget_id = 70310229, pos = { x = 1281.761, y = 270.072, z = -1590.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33020] = { config_id = 33020, gadget_id = 70310230, pos = { x = 1287.435, y = 279.671, z = -1600.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33021] = { config_id = 33021, gadget_id = 70310199, pos = { x = 1286.484, y = 270.378, z = -1582.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33022] = { config_id = 33022, gadget_id = 70310201, pos = { x = 1290.856, y = 271.744, z = -1585.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33023] = { config_id = 33023, gadget_id = 70310200, pos = { x = 1298.773, y = 271.170, z = -1579.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33024] = { config_id = 33024, gadget_id = 70290536, pos = { x = 1305.952, y = 272.715, z = -1583.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33025] = { config_id = 33025, gadget_id = 70330218, pos = { x = 1314.704, y = 270.193, z = -1582.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[33026] = { config_id = 33026, gadget_id = 70330219, pos = { x = 1279.406, y = 270.098, z = -1580.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1033011, name = "SELECT_OPTION_33011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_33011", action = "action_EVENT_SELECT_OPTION_33011" }
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
		gadgets = { 33001, 33002, 33003, 33004, 33005, 33007, 33008, 33009, 33010, 33012, 33016, 33017, 33018, 33019, 33020, 33021, 33022, 33023, 33024, 33025, 33026 },
		regions = { },
		triggers = { "SELECT_OPTION_33011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 33006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 33013, 33014 },
		gadgets = { 33005, 33010, 33012, 33015, 33016, 33017, 33018 },
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
function condition_EVENT_SELECT_OPTION_33011(context, evt)
	-- 判断是gadgetid 33007 option_id 24
	if 33007 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_33011(context, evt)
	-- 将configid为 33010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"