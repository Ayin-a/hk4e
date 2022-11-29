-- 基础信息
local base_info = {
	group_id = 133305011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11001, monster_id = 21020201, pos = { x = -2312.295, y = 221.970, z = 4053.202 }, rot = { x = 0.000, y = 276.588, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", area_id = 26 },
	{ config_id = 11002, monster_id = 21010401, pos = { x = -2304.753, y = 224.230, z = 4055.766 }, rot = { x = 0.000, y = 255.074, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 26 },
	{ config_id = 11003, monster_id = 21010201, pos = { x = -2310.900, y = 222.257, z = 4048.039 }, rot = { x = 0.000, y = 300.228, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 26 },
	{ config_id = 11004, monster_id = 21010201, pos = { x = -2298.650, y = 225.456, z = 4060.800 }, rot = { x = 0.000, y = 233.119, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9002, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11006, gadget_id = 70300081, pos = { x = -2321.556, y = 222.760, z = 4056.712 }, rot = { x = 2.576, y = 211.635, z = 8.790 }, level = 32, area_id = 26 },
	{ config_id = 11007, gadget_id = 70300081, pos = { x = -2321.548, y = 223.303, z = 4048.690 }, rot = { x = 349.353, y = 152.626, z = 12.671 }, level = 32, area_id = 26 },
	{ config_id = 11008, gadget_id = 70310004, pos = { x = -2310.533, y = 221.878, z = 4050.923 }, rot = { x = 6.241, y = 359.951, z = 359.105 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 11010, gadget_id = 70211012, pos = { x = -2304.656, y = 222.332, z = 4048.436 }, rot = { x = 4.482, y = 269.034, z = 0.817 }, level = 26, chest_drop_id = 2004800, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 11012, gadget_id = 70220013, pos = { x = -2312.066, y = 224.889, z = 4039.561 }, rot = { x = 9.361, y = 21.527, z = 353.262 }, level = 32, area_id = 26 },
	{ config_id = 11013, gadget_id = 70220013, pos = { x = -2315.911, y = 225.161, z = 4040.948 }, rot = { x = 10.596, y = 359.693, z = 355.552 }, level = 32, area_id = 26 },
	{ config_id = 11014, gadget_id = 70220013, pos = { x = -2314.247, y = 224.748, z = 4042.148 }, rot = { x = 27.615, y = 61.598, z = 9.013 }, level = 32, area_id = 26 },
	{ config_id = 11015, gadget_id = 70220013, pos = { x = -2310.063, y = 224.624, z = 4039.214 }, rot = { x = 0.177, y = 359.993, z = 355.166 }, level = 32, area_id = 26 },
	{ config_id = 11016, gadget_id = 70220013, pos = { x = -2311.117, y = 225.620, z = 4036.986 }, rot = { x = 6.390, y = 309.601, z = 330.187 }, level = 32, area_id = 26 },
	{ config_id = 11017, gadget_id = 70300086, pos = { x = -2317.859, y = 224.050, z = 4061.247 }, rot = { x = 339.393, y = 15.376, z = 3.641 }, level = 32, area_id = 26 },
	{ config_id = 11018, gadget_id = 70300086, pos = { x = -2322.717, y = 224.783, z = 4040.462 }, rot = { x = 353.433, y = 17.663, z = 14.405 }, level = 32, area_id = 26 },
	{ config_id = 11019, gadget_id = 70220014, pos = { x = -2313.030, y = 224.808, z = 4041.073 }, rot = { x = 10.222, y = 11.228, z = 341.170 }, level = 32, area_id = 26 },
	{ config_id = 11020, gadget_id = 70220014, pos = { x = -2314.151, y = 225.169, z = 4040.705 }, rot = { x = 9.407, y = 11.412, z = 353.804 }, level = 32, area_id = 26 },
	{ config_id = 11021, gadget_id = 70710078, pos = { x = -2322.938, y = 222.998, z = 4050.406 }, rot = { x = 357.585, y = 337.359, z = 343.101 }, level = 32, area_id = 26 },
	{ config_id = 11022, gadget_id = 70710078, pos = { x = -2299.499, y = 225.106, z = 4059.344 }, rot = { x = 331.331, y = 4.890, z = 341.028 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011011, name = "ANY_MONSTER_DIE_11011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11011", action = "action_EVENT_ANY_MONSTER_DIE_11011", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 11005, gadget_id = 70220025, pos = { x = -2299.866, y = 224.158, z = 4059.175 }, rot = { x = 55.813, y = 328.366, z = 242.375 }, level = 32, area_id = 26 },
		{ config_id = 11009, gadget_id = 70220025, pos = { x = -2298.599, y = 224.419, z = 4060.660 }, rot = { x = 61.673, y = 319.440, z = 240.005 }, level = 32, area_id = 26 }
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
		monsters = { 11001, 11002, 11003, 11004 },
		gadgets = { 11006, 11007, 11008, 11010, 11012, 11013, 11014, 11015, 11016, 11017, 11018, 11019, 11020, 11021, 11022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_11011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11011(context, evt)
	-- 将configid为 11010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end