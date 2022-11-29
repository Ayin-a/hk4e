-- 基础信息
local base_info = {
	group_id = 133222008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 21020801, pos = { x = -4324.833, y = 225.905, z = -4229.056 }, rot = { x = 5.724, y = 36.589, z = 349.454 }, level = 30, drop_tag = "丘丘岩盔王", pose_id = 401, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8002, gadget_id = 70211012, pos = { x = -4315.036, y = 224.373, z = -4223.684 }, rot = { x = 354.542, y = 248.688, z = 7.861 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 8004, gadget_id = 70310019, pos = { x = -4322.326, y = 225.897, z = -4227.428 }, rot = { x = 358.645, y = 44.196, z = 355.884 }, level = 30, area_id = 14 },
	{ config_id = 8005, gadget_id = 70500000, pos = { x = -4328.484, y = 227.370, z = -4230.901 }, rot = { x = 11.724, y = 87.619, z = 352.864 }, level = 30, point_type = 9104, area_id = 14 },
	{ config_id = 8006, gadget_id = 70500000, pos = { x = -4323.925, y = 226.058, z = -4226.098 }, rot = { x = 12.741, y = 141.193, z = 5.075 }, level = 30, point_type = 9104, area_id = 14 },
	{ config_id = 8007, gadget_id = 70500000, pos = { x = -4323.621, y = 226.010, z = -4226.481 }, rot = { x = 12.916, y = 99.443, z = 355.395 }, level = 30, point_type = 9104, area_id = 14 },
	{ config_id = 8008, gadget_id = 70500000, pos = { x = -4325.421, y = 228.189, z = -4218.495 }, rot = { x = 52.580, y = 295.140, z = 358.270 }, level = 30, point_type = 2002, area_id = 14 },
	{ config_id = 8009, gadget_id = 70220026, pos = { x = -4324.920, y = 225.859, z = -4231.000 }, rot = { x = 348.513, y = 259.006, z = 4.123 }, level = 30, area_id = 14 },
	{ config_id = 8010, gadget_id = 70220026, pos = { x = -4326.653, y = 226.232, z = -4230.850 }, rot = { x = 11.649, y = 112.181, z = 2.833 }, level = 30, area_id = 14 },
	{ config_id = 8011, gadget_id = 70220026, pos = { x = -4324.846, y = 226.640, z = -4224.209 }, rot = { x = 340.897, y = 296.775, z = 5.877 }, level = 30, area_id = 14 },
	{ config_id = 8012, gadget_id = 70500000, pos = { x = -4321.364, y = 225.851, z = -4225.112 }, rot = { x = 67.967, y = 305.280, z = 329.561 }, level = 30, point_type = 2002, area_id = 14 },
	{ config_id = 8013, gadget_id = 70220026, pos = { x = -4323.372, y = 225.524, z = -4231.138 }, rot = { x = 11.195, y = 122.592, z = 4.868 }, level = 30, area_id = 14 },
	{ config_id = 8015, gadget_id = 70500000, pos = { x = -4321.744, y = 226.006, z = -4225.745 }, rot = { x = 68.974, y = 295.588, z = 7.103 }, level = 30, point_type = 2002, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008003, name = "ANY_MONSTER_DIE_8003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8003", action = "action_EVENT_ANY_MONSTER_DIE_8003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 8014, gadget_id = 70560005, pos = { x = -4322.928, y = 226.510, z = -4230.318 }, rot = { x = 357.075, y = 244.756, z = 10.678 }, level = 30, area_id = 14 }
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
		monsters = { 8001 },
		gadgets = { 8002, 8004, 8005, 8006, 8007, 8008, 8009, 8010, 8011, 8012, 8013, 8015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8003(context, evt)
	-- 将configid为 8002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8002, GadgetState.Default) then
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