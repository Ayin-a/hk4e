-- 基础信息
local base_info = {
	group_id = 240009005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21011001, pos = { x = -136.672, y = 19.016, z = 45.817 }, rot = { x = 0.000, y = 265.880, z = 0.608 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 5002, monster_id = 20010901, pos = { x = -147.249, y = 18.017, z = 41.695 }, rot = { x = 0.000, y = 359.801, z = 0.000 }, level = 1 },
	{ config_id = 5003, monster_id = 21011001, pos = { x = -157.003, y = 19.016, z = 45.841 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5004, gadget_id = 70211022, pos = { x = -146.980, y = 18.993, z = 35.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗高级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 5006, shape = RegionShape.CUBIC, size = { x = 25.000, y = 20.000, z = 5.000 }, pos = { x = -147.252, y = 18.016, z = 47.478 } }
}

-- 触发器
triggers = {
	{ config_id = 1005005, name = "ANY_MONSTER_DIE_5005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5005", action = "action_EVENT_ANY_MONSTER_DIE_5005", trigger_count = 0 },
	{ config_id = 1005006, name = "ENTER_REGION_5006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5006", action = "action_EVENT_ENTER_REGION_5006" }
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
		monsters = { 5001, 5003 },
		gadgets = { 5004 },
		regions = { 5006 },
		triggers = { "ANY_MONSTER_DIE_5005", "ENTER_REGION_5006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 5002 },
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
function condition_EVENT_ANY_MONSTER_DIE_5005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5005(context, evt)
	-- 将configid为 5004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240009005, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5006(context, evt)
	if evt.param1 ~= 5006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240009005, 3)
	
	-- 将configid为 5004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end