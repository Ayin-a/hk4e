-- 基础信息
local base_info = {
	group_id = 133108037
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37001, monster_id = 21020301, pos = { x = -135.250, y = 200.669, z = -911.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 7 },
	{ config_id = 37004, monster_id = 21011201, pos = { x = -142.652, y = 201.173, z = -883.438 }, rot = { x = 0.000, y = 54.170, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 7 },
	{ config_id = 37005, monster_id = 21030401, pos = { x = -143.103, y = 201.061, z = -888.356 }, rot = { x = 0.000, y = 320.858, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 7 },
	{ config_id = 37008, monster_id = 21010401, pos = { x = -153.705, y = 203.244, z = -888.169 }, rot = { x = 0.000, y = 67.169, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 9002, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 37002, gadget_id = 70211022, pos = { x = -144.956, y = 201.588, z = -886.127 }, rot = { x = 3.118, y = 49.709, z = 354.436 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 37006, gadget_id = 70310001, pos = { x = -133.654, y = 200.675, z = -913.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 37007, gadget_id = 70300085, pos = { x = -145.293, y = 201.203, z = -886.279 }, rot = { x = 357.941, y = 0.274, z = 353.754 }, level = 32, area_id = 7 },
	{ config_id = 37009, gadget_id = 70310001, pos = { x = -145.384, y = 201.421, z = -881.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 37010, gadget_id = 70310001, pos = { x = -115.077, y = 202.086, z = -910.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 37011, gadget_id = 70310001, pos = { x = -130.012, y = 201.868, z = -893.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 37012, gadget_id = 70310001, pos = { x = -80.710, y = 201.110, z = -902.508 }, rot = { x = 358.236, y = 260.181, z = 0.305 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 37013, gadget_id = 70310001, pos = { x = -190.593, y = 205.019, z = -1017.438 }, rot = { x = 359.439, y = 198.267, z = 1.700 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 37014, gadget_id = 70310001, pos = { x = -186.640, y = 205.007, z = -1015.717 }, rot = { x = 359.168, y = 207.698, z = 1.585 }, level = 32, state = GadgetState.GearStart, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1037003, name = "ANY_MONSTER_DIE_37003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_37003", action = "action_EVENT_ANY_MONSTER_DIE_37003" }
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
		monsters = { 37001, 37004, 37005, 37008 },
		gadgets = { 37002, 37006, 37007, 37009, 37010, 37011, 37012, 37013, 37014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_37003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_37003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_37003(context, evt)
	-- 将configid为 37002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end