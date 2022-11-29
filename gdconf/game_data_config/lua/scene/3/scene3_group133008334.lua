-- 基础信息
local base_info = {
	group_id = 133008334
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 334001, gadget_id = 70211112, pos = { x = 672.568, y = 200.191, z = -1085.627 }, rot = { x = 0.534, y = 20.896, z = 357.121 }, level = 26, drop_tag = "雪山解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 334002, gadget_id = 70220055, pos = { x = 670.478, y = 200.191, z = -1088.211 }, rot = { x = 358.163, y = 359.992, z = 0.475 }, level = 30, area_id = 10 },
	{ config_id = 334003, gadget_id = 70220055, pos = { x = 676.178, y = 199.991, z = -1083.599 }, rot = { x = 0.162, y = -0.005, z = 356.292 }, level = 30, area_id = 10 },
	{ config_id = 334004, gadget_id = 70220055, pos = { x = 672.691, y = 200.145, z = -1083.026 }, rot = { x = 2.763, y = 359.969, z = 358.702 }, level = 30, area_id = 10 },
	{ config_id = 334005, gadget_id = 70220055, pos = { x = 680.291, y = 200.137, z = -1079.577 }, rot = { x = 4.246, y = 0.679, z = 18.167 }, level = 30, area_id = 10 },
	{ config_id = 334006, gadget_id = 70220055, pos = { x = 672.258, y = 200.196, z = -1086.798 }, rot = { x = 0.318, y = 0.017, z = 3.882 }, level = 30, area_id = 10 },
	{ config_id = 334007, gadget_id = 70220055, pos = { x = 679.352, y = 200.338, z = -1083.995 }, rot = { x = 7.024, y = 0.600, z = 9.753 }, level = 30, area_id = 10 },
	{ config_id = 334008, gadget_id = 70220055, pos = { x = 674.303, y = 200.098, z = -1091.412 }, rot = { x = 358.210, y = 359.986, z = 0.895 }, level = 30, area_id = 10 },
	{ config_id = 334009, gadget_id = 70220055, pos = { x = 676.505, y = 200.169, z = -1087.064 }, rot = { x = 0.000, y = 0.000, z = 7.125 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 334010, shape = RegionShape.SPHERE, radius = 5, pos = { x = 671.352, y = 201.378, z = -1085.003 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1334010, name = "ENTER_REGION_334010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_334010", action = "action_EVENT_ENTER_REGION_334010" },
	{ config_id = 1334011, name = "ANY_GADGET_DIE_334011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_334011", action = "action_EVENT_ANY_GADGET_DIE_334011" }
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
		gadgets = { 334001, 334002, 334003, 334004, 334005, 334006, 334007, 334008, 334009 },
		regions = { 334010 },
		triggers = { "ENTER_REGION_334010", "ANY_GADGET_DIE_334011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_334010(context, evt)
	if evt.param1 ~= 334010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133008334}) == 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_334010(context, evt)
	-- 将configid为 334001 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334001, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_334011(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133008334}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_334011(context, evt)
	-- 将configid为 334001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end