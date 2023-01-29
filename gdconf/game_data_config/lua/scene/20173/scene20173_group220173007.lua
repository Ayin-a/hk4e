-- 基础信息
local base_info = {
	group_id = 220173007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7002, monster_id = 26091001, pos = { x = 626.302, y = 127.702, z = 334.507 }, rot = { x = 0.000, y = 279.184, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 7003, monster_id = 26091001, pos = { x = 630.625, y = 126.797, z = 342.786 }, rot = { x = 0.000, y = 333.551, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 7004, monster_id = 26091001, pos = { x = 637.072, y = 127.010, z = 330.407 }, rot = { x = 0.000, y = 300.207, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 7005, monster_id = 26120101, pos = { x = 630.666, y = 127.978, z = 337.187 }, rot = { x = 0.000, y = 296.309, z = 0.000 }, level = 1, pose_id = 201 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7001, gadget_id = 70211002, pos = { x = 644.144, y = 127.660, z = 327.429 }, rot = { x = 7.056, y = 319.515, z = 358.665 }, level = 1, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 7007, gadget_id = 70290577, pos = { x = 644.778, y = 126.054, z = 360.796 }, rot = { x = 0.000, y = 42.331, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 7008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 628.994, y = 126.894, z = 340.247 } }
}

-- 触发器
triggers = {
	{ config_id = 1007006, name = "ANY_MONSTER_DIE_7006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7006", action = "action_EVENT_ANY_MONSTER_DIE_7006" },
	{ config_id = 1007008, name = "ENTER_REGION_7008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		monsters = { 7002, 7003, 7004, 7005 },
		gadgets = { 7001, 7007 },
		regions = { 7008 },
		triggers = { "ANY_MONSTER_DIE_7006", "ENTER_REGION_7008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7006(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end