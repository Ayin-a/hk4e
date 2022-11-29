-- 基础信息
local base_info = {
	group_id = 240015008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 23020101, pos = { x = 1.583, y = 69.508, z = 72.298 }, rot = { x = 0.000, y = 329.717, z = 0.000 }, level = 1 },
	{ config_id = 8017, monster_id = 25010301, pos = { x = 6.787, y = 69.434, z = 73.615 }, rot = { x = 0.000, y = 309.573, z = 0.000 }, level = 1 },
	{ config_id = 8018, monster_id = 25070101, pos = { x = 3.481, y = 69.504, z = 81.696 }, rot = { x = 0.000, y = 279.425, z = 0.000 }, level = 1 },
	{ config_id = 8019, monster_id = 25010201, pos = { x = -8.290, y = 69.504, z = 74.807 }, rot = { x = 0.000, y = 340.247, z = 0.000 }, level = 1 },
	{ config_id = 8021, monster_id = 25010301, pos = { x = -0.803, y = 69.433, z = 68.060 }, rot = { x = 0.000, y = 340.247, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8007, gadget_id = 70211022, pos = { x = 3.522, y = 69.504, z = 69.536 }, rot = { x = 0.000, y = 328.774, z = 0.000 }, level = 21, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 8003, shape = RegionShape.SPHERE, radius = 25, pos = { x = 6.264, y = 69.504, z = 64.546 } }
}

-- 触发器
triggers = {
	{ config_id = 1008002, name = "ANY_MONSTER_DIE_8002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8002", action = "action_EVENT_ANY_MONSTER_DIE_8002" },
	{ config_id = 1008003, name = "ENTER_REGION_8003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8003", action = "action_EVENT_ENTER_REGION_8003" }
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
		gadgets = { 8007 },
		regions = { 8003 },
		triggers = { "ANY_MONSTER_DIE_8002", "ENTER_REGION_8003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8001, 8017, 8018, 8019, 8021 },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_8002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8002(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240015011, 6)
	
	-- 将configid为 8007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8003(context, evt)
	if evt.param1 ~= 8003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240015015, 2)
	
	-- 将configid为 8007 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8007, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end