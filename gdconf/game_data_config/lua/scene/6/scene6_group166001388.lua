-- 基础信息
local base_info = {
	group_id = 166001388
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 388001, monster_id = 20011201, pos = { x = 966.683, y = 731.098, z = 228.478 }, rot = { x = 0.000, y = 131.748, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 388002, monster_id = 20011201, pos = { x = 972.836, y = 733.257, z = 222.823 }, rot = { x = 0.000, y = 291.705, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 388003, monster_id = 20011201, pos = { x = 967.968, y = 731.417, z = 217.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 388005, monster_id = 20011301, pos = { x = 968.992, y = 735.773, z = 221.959 }, rot = { x = 0.000, y = 316.584, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 300 },
	{ config_id = 388007, monster_id = 20010601, pos = { x = 965.410, y = 731.273, z = 220.270 }, rot = { x = 0.000, y = 24.039, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 300 },
	{ config_id = 388008, monster_id = 20010701, pos = { x = 970.584, y = 733.763, z = 224.322 }, rot = { x = 0.000, y = 261.593, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 388009, gadget_id = 70211012, pos = { x = 969.620, y = 731.409, z = 220.197 }, rot = { x = 0.000, y = 318.434, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 388004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 969.661, y = 731.406, z = 220.345 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1388004, name = "ENTER_REGION_388004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_388004", action = "action_EVENT_ENTER_REGION_388004" },
	{ config_id = 1388006, name = "ANY_MONSTER_DIE_388006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_388006", action = "action_EVENT_ANY_MONSTER_DIE_388006" },
	{ config_id = 1388010, name = "ANY_MONSTER_DIE_388010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_388010", action = "action_EVENT_ANY_MONSTER_DIE_388010" }
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
		gadgets = { 388009 },
		regions = { 388004 },
		triggers = { "ENTER_REGION_388004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 388001, 388002, 388003, 388005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_388006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 388007, 388008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_388010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_388004(context, evt)
	if evt.param1 ~= 388004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_388004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001388, 2)
	
	-- 将configid为 388009 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388009, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_388006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_388006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001388, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_388010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_388010(context, evt)
	-- 将configid为 388009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end