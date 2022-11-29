-- 基础信息
local base_info = {
	group_id = 111102050
}

-- DEFS_MISCS
local RequireSuite = {} --死域玩法的初始suit。若不填或不注入，默认走init_config.suite

local DeathField ={
	ZoneID = 123,
	CoreID = 50004,
	BossID = 50001,
	BossSuite = 2,
	EndSuite = 3,
	PointList = {50005,50006,50007},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[50001] = { config_id = 50001, monster_id = 21020401, pos = { x = 1217.414, y = 255.636, z = -1518.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王" },
	[50002] = { config_id = 50002, monster_id = 28020301, pos = { x = 1220.967, y = 254.704, z = -1513.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽" },
	[50003] = { config_id = 50003, monster_id = 28020301, pos = { x = 1217.016, y = 255.238, z = -1516.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[50004] = { config_id = 50004, gadget_id = 70310193, pos = { x = 1220.894, y = 255.104, z = -1517.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	[50005] = { config_id = 50005, gadget_id = 70310195, pos = { x = 1223.432, y = 254.715, z = -1508.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[50006] = { config_id = 50006, gadget_id = 70310195, pos = { x = 1211.759, y = 256.244, z = -1519.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[50007] = { config_id = 50007, gadget_id = 70310195, pos = { x = 1212.877, y = 255.446, z = -1510.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[50008] = { config_id = 50008, gadget_id = 70310198, pos = { x = 1211.164, y = 255.477, z = -1505.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	[50009] = { config_id = 50009, gadget_id = 70360001, pos = { x = 1214.547, y = 258.559, z = -1525.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, worktop_config = { is_persistent = true, init_options = { 24 } } },
	[50010] = { config_id = 50010, gadget_id = 70310192, pos = { x = 1217.808, y = 256.188, z = -1521.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[50011] = { config_id = 50011, gadget_id = 70310194, pos = { x = 1206.485, y = 256.808, z = -1516.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[50012] = { config_id = 50012, gadget_id = 70310191, pos = { x = 1214.547, y = 256.838, z = -1525.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[50013] = { config_id = 50013, gadget_id = 70330197, pos = { x = 1228.166, y = 255.386, z = -1517.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[50014] = { config_id = 50014, gadget_id = 70290002, pos = { x = 1222.702, y = 255.844, z = -1519.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1050015, name = "SELECT_OPTION_50015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_50015", action = "action_EVENT_SELECT_OPTION_50015" }
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
		gadgets = { 50004, 50005, 50006, 50007, 50008, 50009, 50010, 50011, 50012, 50013 },
		regions = { },
		triggers = { "SELECT_OPTION_50015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 50001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 50002, 50003 },
		gadgets = { 50008, 50012, 50013, 50014 },
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
function condition_EVENT_SELECT_OPTION_50015(context, evt)
	-- 判断是gadgetid 50009 option_id 24
	if 50009 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_50015(context, evt)
	-- 将configid为 50012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 50012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"