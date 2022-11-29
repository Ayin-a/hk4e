-- 基础信息
local base_info = {
	group_id = 250004031
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13, monster_id = 21010701, pos = { x = 254.112, y = -10.280, z = 205.193 }, rot = { x = 0.000, y = 177.448, z = 0.000 }, level = 10 },
	{ config_id = 14, monster_id = 21010701, pos = { x = 255.062, y = -10.280, z = 203.198 }, rot = { x = 0.000, y = 177.849, z = 0.000 }, level = 10 },
	{ config_id = 15, monster_id = 21010701, pos = { x = 256.284, y = -10.280, z = 204.710 }, rot = { x = 0.000, y = 198.185, z = 0.000 }, level = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 308, gadget_id = 70350004, pos = { x = 255.176, y = -10.280, z = 201.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 309, gadget_id = 70900208, pos = { x = 253.373, y = -10.280, z = 190.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 310, gadget_id = 70900208, pos = { x = 256.853, y = -10.280, z = 190.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 311, gadget_id = 70900208, pos = { x = 253.362, y = -10.280, z = 192.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 312, gadget_id = 70900208, pos = { x = 256.842, y = -10.280, z = 192.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 313, gadget_id = 70900208, pos = { x = 253.355, y = -10.280, z = 194.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 314, gadget_id = 70900208, pos = { x = 256.836, y = -10.280, z = 194.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 315, gadget_id = 70900208, pos = { x = 253.336, y = -10.280, z = 196.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 316, gadget_id = 70900208, pos = { x = 256.817, y = -10.280, z = 196.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 317, gadget_id = 70900208, pos = { x = 253.334, y = -10.280, z = 198.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 318, gadget_id = 70900208, pos = { x = 256.816, y = -10.280, z = 198.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 319, gadget_id = 70900208, pos = { x = 253.355, y = -10.280, z = 200.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 320, gadget_id = 70900208, pos = { x = 256.838, y = -10.280, z = 200.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 61, shape = RegionShape.SPHERE, radius = 5, pos = { x = 254.864, y = -10.280, z = 189.013 } }
}

-- 触发器
triggers = {
	{ config_id = 1000061, name = "ENTER_REGION_61", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61", action = "action_EVENT_ENTER_REGION_61", forbid_guest = false }
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
	rand_suite = true
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
		monsters = { 13, 14, 15 },
		gadgets = { 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320 },
		regions = { 61 },
		triggers = { "ENTER_REGION_61" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_61(context, evt)
	if evt.param1 ~= 61 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61(context, evt)
	-- 将configid为 308 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end