-- 基础信息
local base_info = {
	group_id = 133301335
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 335001, monster_id = 26090401, pos = { x = -643.380, y = 241.558, z = 3097.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 22 },
	{ config_id = 335003, monster_id = 26090401, pos = { x = -640.457, y = 240.867, z = 3107.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 22 },
	{ config_id = 335004, monster_id = 26090401, pos = { x = -650.449, y = 241.307, z = 3104.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 335006, gadget_id = 70220103, pos = { x = -645.255, y = 244.904, z = 3103.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 335007, gadget_id = 70330197, pos = { x = -645.345, y = 241.260, z = 3103.428 }, rot = { x = 0.082, y = 268.688, z = 3.576 }, level = 33, area_id = 22 },
	{ config_id = 335008, gadget_id = 70220109, pos = { x = -643.473, y = 241.556, z = 3097.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 335009, gadget_id = 70220109, pos = { x = -650.599, y = 241.293, z = 3105.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 335011, gadget_id = 70220109, pos = { x = -640.596, y = 240.711, z = 3107.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 335002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -645.199, y = 267.611, z = 3103.334 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1335002, name = "ENTER_REGION_335002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_335002", action = "action_EVENT_ENTER_REGION_335002", trigger_count = 0 }
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
		monsters = { 335001, 335003, 335004 },
		gadgets = { 335006, 335007, 335008, 335009, 335011 },
		regions = { 335002 },
		triggers = { "ENTER_REGION_335002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_335002(context, evt)
	if evt.param1 ~= 335002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_335002(context, evt)
	-- 将configid为 335008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 335008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 335009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 335009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 335011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 335011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end