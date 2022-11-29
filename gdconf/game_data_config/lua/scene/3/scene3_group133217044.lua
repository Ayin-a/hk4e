-- 基础信息
local base_info = {
	group_id = 133217044
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44001, monster_id = 21030601, pos = { x = -4216.162, y = 200.308, z = -3887.930 }, rot = { x = 0.000, y = 296.451, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 14 },
	{ config_id = 44004, monster_id = 21011001, pos = { x = -4223.395, y = 200.198, z = -3895.544 }, rot = { x = 356.628, y = 337.350, z = 356.568 }, level = 30, drop_tag = "远程丘丘人", pose_id = 32, area_id = 14 },
	{ config_id = 44005, monster_id = 21020701, pos = { x = -4220.854, y = 200.518, z = -3878.768 }, rot = { x = 357.172, y = 339.991, z = 0.078 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 14 },
	{ config_id = 44016, monster_id = 21030601, pos = { x = -4218.429, y = 200.272, z = -3888.776 }, rot = { x = 356.425, y = 0.056, z = 358.210 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 14 },
	{ config_id = 44019, monster_id = 21010901, pos = { x = -4206.475, y = 200.417, z = -3889.170 }, rot = { x = 355.786, y = 266.826, z = 4.694 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 44002, gadget_id = 70211012, pos = { x = -4214.582, y = 200.408, z = -3885.287 }, rot = { x = 354.791, y = 245.475, z = 359.785 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 44011, gadget_id = 70220013, pos = { x = -4213.623, y = 201.034, z = -3876.941 }, rot = { x = 8.802, y = 317.423, z = 14.458 }, level = 30, area_id = 14 },
	{ config_id = 44012, gadget_id = 70220013, pos = { x = -4215.721, y = 200.627, z = -3878.435 }, rot = { x = 358.224, y = 359.889, z = 7.125 }, level = 30, area_id = 14 },
	{ config_id = 44014, gadget_id = 70300088, pos = { x = -4212.870, y = 200.940, z = -3880.054 }, rot = { x = 350.423, y = 102.954, z = 354.204 }, level = 30, area_id = 14 },
	{ config_id = 44015, gadget_id = 70300086, pos = { x = -4219.639, y = 200.000, z = -3895.773 }, rot = { x = 357.311, y = 359.881, z = 357.325 }, level = 30, area_id = 14 },
	{ config_id = 44017, gadget_id = 70300107, pos = { x = -4217.718, y = 200.317, z = -3887.398 }, rot = { x = 357.316, y = 0.021, z = 359.105 }, level = 30, area_id = 14 },
	{ config_id = 44018, gadget_id = 70300088, pos = { x = -4209.254, y = 200.982, z = -3882.598 }, rot = { x = 4.565, y = 141.834, z = 348.622 }, level = 30, area_id = 14 },
	{ config_id = 44020, gadget_id = 70300086, pos = { x = -4224.355, y = 200.639, z = -3883.440 }, rot = { x = 347.965, y = 359.582, z = 1.567 }, level = 30, area_id = 14 },
	{ config_id = 44021, gadget_id = 70300086, pos = { x = -4211.051, y = 199.720, z = -3888.602 }, rot = { x = 355.856, y = 359.798, z = 8.650 }, level = 30, area_id = 14 },
	{ config_id = 44022, gadget_id = 70220013, pos = { x = -4221.363, y = 199.968, z = -3895.566 }, rot = { x = 356.404, y = 296.431, z = 1.207 }, level = 30, area_id = 14 },
	{ config_id = 44023, gadget_id = 70220013, pos = { x = -4220.388, y = 199.691, z = -3897.308 }, rot = { x = 353.790, y = 343.046, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 44024, gadget_id = 70300076, pos = { x = -4220.329, y = 200.538, z = -3881.599 }, rot = { x = 359.662, y = 157.831, z = 359.171 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1044003, name = "ANY_MONSTER_DIE_44003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44003", action = "action_EVENT_ANY_MONSTER_DIE_44003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 44006, monster_id = 21010301, pos = { x = -4224.090, y = 200.779, z = -3882.250 }, rot = { x = 0.000, y = 337.141, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9013, area_id = 14 },
		{ config_id = 44007, monster_id = 21010301, pos = { x = -4216.325, y = 200.547, z = -3880.091 }, rot = { x = 359.756, y = 236.096, z = 1.242 }, level = 30, drop_tag = "丘丘人", pose_id = 9003, area_id = 14 }
	},
	gadgets = {
		{ config_id = 44008, gadget_id = 70220013, pos = { x = -4205.500, y = 200.227, z = -3884.476 }, rot = { x = 349.675, y = 303.894, z = 2.649 }, level = 30, area_id = 14 },
		{ config_id = 44009, gadget_id = 70220026, pos = { x = -4203.960, y = 199.966, z = -3885.127 }, rot = { x = 358.614, y = 283.578, z = 353.701 }, level = 30, area_id = 14 },
		{ config_id = 44010, gadget_id = 70310009, pos = { x = -4210.157, y = 200.268, z = -3886.351 }, rot = { x = 1.597, y = 78.860, z = 354.232 }, level = 30, area_id = 14 },
		{ config_id = 44013, gadget_id = 70220026, pos = { x = -4215.619, y = 200.712, z = -3876.593 }, rot = { x = 7.281, y = 295.392, z = 5.397 }, level = 30, area_id = 14 }
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
		monsters = { 44001, 44004, 44005, 44016, 44019 },
		gadgets = { 44002, 44011, 44012, 44014, 44015, 44017, 44018, 44020, 44021, 44022, 44023, 44024 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_44003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44003(context, evt)
	-- 将configid为 44002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44002, GadgetState.Default) then
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