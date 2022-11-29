-- 基础信息
local base_info = {
	group_id = 220151008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 26090901, pos = { x = -134.362, y = -9.868, z = 97.506 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8002, monster_id = 26090901, pos = { x = -140.811, y = -9.868, z = 97.033 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8007, monster_id = 26120401, pos = { x = -132.560, y = -9.868, z = 101.622 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8008, monster_id = 26120401, pos = { x = -143.572, y = -9.868, z = 101.149 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8009, monster_id = 26090901, pos = { x = -137.640, y = -9.868, z = 100.462 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8003, gadget_id = 70211012, pos = { x = -137.738, y = -8.448, z = 110.130 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 8005, gadget_id = 70330317, pos = { x = -138.761, y = -9.858, z = 74.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 8004, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 10.000 }, pos = { x = -138.351, y = -9.858, z = 87.252 } }
}

-- 触发器
triggers = {
	{ config_id = 1008004, name = "ENTER_REGION_8004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8004", action = "action_EVENT_ENTER_REGION_8004" },
	{ config_id = 1008006, name = "ANY_MONSTER_DIE_8006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8006", action = "action_EVENT_ANY_MONSTER_DIE_8006" }
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
		gadgets = { 8003 },
		regions = { 8004 },
		triggers = { "ENTER_REGION_8004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8001, 8002, 8007, 8008, 8009 },
		gadgets = { 8005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_8004(context, evt)
	if evt.param1 ~= 8004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220151008, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220151008) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8006(context, evt)
	-- 将configid为 8005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end