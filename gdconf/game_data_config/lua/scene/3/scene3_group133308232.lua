-- 基础信息
local base_info = {
	group_id = 133308232
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 232001, monster_id = 21030401, pos = { x = -1736.221, y = 131.454, z = 4928.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 26 },
	{ config_id = 232002, monster_id = 21020201, pos = { x = -1742.388, y = 131.067, z = 4933.782 }, rot = { x = 0.000, y = 134.927, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 26 },
	{ config_id = 232003, monster_id = 21010401, pos = { x = -1736.015, y = 130.209, z = 4937.659 }, rot = { x = 0.000, y = 180.869, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 9012, area_id = 26 },
	{ config_id = 232004, monster_id = 21010201, pos = { x = -1730.657, y = 130.382, z = 4934.026 }, rot = { x = 0.000, y = 253.168, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9013, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 232005, gadget_id = 70300089, pos = { x = -1736.201, y = 131.008, z = 4931.965 }, rot = { x = 11.550, y = 359.977, z = 359.774 }, level = 32, area_id = 26 },
	{ config_id = 232006, gadget_id = 70300088, pos = { x = -1735.463, y = 132.495, z = 4910.675 }, rot = { x = 358.297, y = 252.429, z = 357.810 }, level = 32, area_id = 26 },
	{ config_id = 232007, gadget_id = 70300088, pos = { x = -1747.954, y = 131.206, z = 4909.993 }, rot = { x = 6.225, y = 294.268, z = 356.202 }, level = 32, area_id = 26 },
	{ config_id = 232008, gadget_id = 70300088, pos = { x = -1755.805, y = 128.646, z = 4919.332 }, rot = { x = 9.615, y = 329.564, z = 4.142 }, level = 32, area_id = 26 },
	{ config_id = 232009, gadget_id = 70220013, pos = { x = -1749.279, y = 130.632, z = 4937.248 }, rot = { x = 358.323, y = 100.095, z = 0.988 }, level = 32, area_id = 26 },
	{ config_id = 232010, gadget_id = 70220014, pos = { x = -1748.250, y = 130.914, z = 4935.593 }, rot = { x = 353.947, y = 98.628, z = 4.390 }, level = 32, area_id = 26 },
	{ config_id = 232011, gadget_id = 70220026, pos = { x = -1747.438, y = 130.675, z = 4937.677 }, rot = { x = 352.841, y = 168.319, z = 359.575 }, level = 32, area_id = 26 },
	{ config_id = 232012, gadget_id = 70300086, pos = { x = -1692.721, y = 119.722, z = 4935.429 }, rot = { x = 26.646, y = 32.048, z = 351.758 }, level = 32, area_id = 26 },
	{ config_id = 232014, gadget_id = 70211012, pos = { x = -1746.932, y = 131.516, z = 4929.776 }, rot = { x = 2.847, y = 56.890, z = 9.509 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 232016, gadget_id = 70300086, pos = { x = -1706.288, y = 122.823, z = 4926.937 }, rot = { x = 7.641, y = 358.970, z = 340.269 }, level = 32, area_id = 26 },
	{ config_id = 232017, gadget_id = 70300081, pos = { x = -1714.123, y = 121.316, z = 4942.488 }, rot = { x = 341.318, y = 219.790, z = 356.859 }, level = 30, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1232015, name = "ANY_MONSTER_DIE_232015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_232015", action = "action_EVENT_ANY_MONSTER_DIE_232015" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 232013, gadget_id = 70300084, pos = { x = -1715.267, y = 116.620, z = 4943.915 }, rot = { x = 345.270, y = 227.604, z = 356.889 }, level = 32, area_id = 26 }
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
		monsters = { 232001, 232002, 232003, 232004 },
		gadgets = { 232005, 232006, 232007, 232008, 232009, 232010, 232011, 232012, 232014, 232016, 232017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_232015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_232015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_232015(context, evt)
	-- 将configid为 232014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 232014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end