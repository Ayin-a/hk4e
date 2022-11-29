-- 基础信息
local base_info = {
	group_id = 133302453
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 453001, monster_id = 26090501, pos = { x = -902.587, y = 235.340, z = 2786.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 24 },
	{ config_id = 453002, monster_id = 26120301, pos = { x = -904.192, y = 235.533, z = 2789.131 }, rot = { x = 0.000, y = 164.511, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 101, area_id = 24 },
	{ config_id = 453003, monster_id = 26090501, pos = { x = -905.408, y = 235.340, z = 2785.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 453005, gadget_id = 70211002, pos = { x = -903.482, y = 236.006, z = 2782.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 453004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -903.935, y = 235.340, z = 2785.817 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1453004, name = "ENTER_REGION_453004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_453004", action = "action_EVENT_ENTER_REGION_453004" },
	{ config_id = 1453006, name = "ANY_MONSTER_DIE_453006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_453006", action = "action_EVENT_ANY_MONSTER_DIE_453006" }
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
		gadgets = { 453005 },
		regions = { 453004 },
		triggers = { "ENTER_REGION_453004", "ANY_MONSTER_DIE_453006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 453001, 453002, 453003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_453006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_453004(context, evt)
	if evt.param1 ~= 453004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_453004(context, evt)
	-- 将configid为 453005 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 453005, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302453, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_453006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_453006(context, evt)
	-- 将configid为 453005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 453005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end