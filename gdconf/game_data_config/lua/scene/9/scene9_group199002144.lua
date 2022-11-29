-- 基础信息
local base_info = {
	group_id = 199002144
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 144001, monster_id = 21020201, pos = { x = 39.191, y = 120.457, z = -810.288 }, rot = { x = 0.000, y = 119.505, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", area_id = 401 },
	{ config_id = 144002, monster_id = 21010201, pos = { x = 37.898, y = 120.147, z = -812.713 }, rot = { x = 0.000, y = 119.505, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 401 },
	{ config_id = 144003, monster_id = 21010201, pos = { x = 40.273, y = 120.870, z = -807.872 }, rot = { x = 0.000, y = 119.505, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 401 },
	{ config_id = 144019, monster_id = 21010401, pos = { x = 77.132, y = 125.643, z = -834.977 }, rot = { x = 0.000, y = 10.684, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9012, area_id = 401 },
	{ config_id = 144020, monster_id = 21020701, pos = { x = 62.531, y = 120.374, z = -827.995 }, rot = { x = 0.000, y = 18.670, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 401 },
	{ config_id = 144021, monster_id = 21010101, pos = { x = 46.877, y = 120.074, z = -819.173 }, rot = { x = 0.000, y = 14.397, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 401 },
	{ config_id = 144024, monster_id = 21010101, pos = { x = 50.329, y = 120.138, z = -822.101 }, rot = { x = 0.000, y = 325.787, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9011, area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 144004, gadget_id = 70300086, pos = { x = 39.022, y = 121.196, z = -804.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 144005, gadget_id = 70300086, pos = { x = 34.300, y = 119.973, z = -814.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 144006, gadget_id = 70300086, pos = { x = 102.316, y = 120.199, z = -836.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 144007, gadget_id = 70300086, pos = { x = 98.229, y = 120.132, z = -843.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 144008, gadget_id = 70300081, pos = { x = 35.007, y = 120.253, z = -808.628 }, rot = { x = 2.741, y = 202.828, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 144009, gadget_id = 70300090, pos = { x = 76.959, y = 120.216, z = -835.215 }, rot = { x = 356.513, y = 17.357, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 144010, gadget_id = 70300122, pos = { x = 48.332, y = 120.002, z = -821.496 }, rot = { x = 1.233, y = 276.668, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 144011, gadget_id = 70300100, pos = { x = 82.086, y = 120.507, z = -838.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 144012, gadget_id = 70300085, pos = { x = 99.041, y = 120.421, z = -839.483 }, rot = { x = 0.000, y = 23.216, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 401 },
	{ config_id = 144013, gadget_id = 70211012, pos = { x = 99.081, y = 120.881, z = -839.490 }, rot = { x = 0.000, y = 116.700, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	{ config_id = 144014, gadget_id = 70300100, pos = { x = 57.167, y = 120.387, z = -824.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 144015, gadget_id = 70300088, pos = { x = 46.563, y = 120.054, z = -819.375 }, rot = { x = 0.000, y = 283.651, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 144016, gadget_id = 70220013, pos = { x = 68.202, y = 120.233, z = -831.255 }, rot = { x = 0.000, y = 5.612, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 144017, gadget_id = 70220026, pos = { x = 66.303, y = 120.325, z = -829.063 }, rot = { x = 0.000, y = 316.698, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 144018, gadget_id = 70220026, pos = { x = 69.536, y = 120.186, z = -832.509 }, rot = { x = 0.000, y = 27.270, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 144023, gadget_id = 70300077, pos = { x = 62.378, y = 120.323, z = -827.895 }, rot = { x = 0.000, y = 293.483, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1144022, name = "ANY_MONSTER_DIE_144022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_144022", action = "action_EVENT_ANY_MONSTER_DIE_144022" }
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
		monsters = { 144001, 144002, 144003, 144019, 144020, 144021, 144024 },
		gadgets = { 144004, 144005, 144006, 144007, 144008, 144009, 144010, 144011, 144012, 144013, 144014, 144015, 144016, 144017, 144018, 144023 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_144022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_144022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_144022(context, evt)
	-- 将configid为 144013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end