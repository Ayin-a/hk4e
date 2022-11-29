-- 基础信息
local base_info = {
	group_id = 166001637
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 637003, monster_id = 21010501, pos = { x = 362.154, y = 158.397, z = 1073.803 }, rot = { x = 0.000, y = 36.733, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", pose_id = 32, area_id = 300 },
	{ config_id = 637004, monster_id = 21010901, pos = { x = 377.073, y = 157.421, z = 1060.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", pose_id = 32, area_id = 300 },
	{ config_id = 637005, monster_id = 21011001, pos = { x = 357.995, y = 159.433, z = 1074.260 }, rot = { x = 0.000, y = 49.197, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", pose_id = 32, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 637001, gadget_id = 70211012, pos = { x = 377.821, y = 164.737, z = 1091.415 }, rot = { x = 13.393, y = 131.068, z = 343.845 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 637002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 378.031, y = 165.482, z = 1090.891 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1637002, name = "ENTER_REGION_637002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_637002", action = "action_EVENT_ENTER_REGION_637002" },
	{ config_id = 1637006, name = "ANY_MONSTER_DIE_637006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_637006", action = "action_EVENT_ANY_MONSTER_DIE_637006" }
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
		gadgets = { 637001 },
		regions = { 637002 },
		triggers = { "ENTER_REGION_637002", "ANY_MONSTER_DIE_637006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 637003, 637004, 637005 },
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
function condition_EVENT_ENTER_REGION_637002(context, evt)
	if evt.param1 ~= 637002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_637002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001637, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_637006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_637006(context, evt)
	-- 将configid为 637001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 637001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end