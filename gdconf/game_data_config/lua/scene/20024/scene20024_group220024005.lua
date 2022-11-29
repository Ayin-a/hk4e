-- 基础信息
local base_info = {
	group_id = 220024005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17, monster_id = 21010301, pos = { x = 187.797, y = 57.016, z = 384.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 18, monster_id = 21010301, pos = { x = 195.152, y = 57.017, z = 384.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 42, monster_id = 24010101, pos = { x = 191.442, y = 59.017, z = 399.929 }, rot = { x = 0.000, y = 169.719, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 }, isElite = true, pose_id = 100 },
	{ config_id = 49, monster_id = 22010201, pos = { x = 191.614, y = 57.000, z = 388.655 }, rot = { x = 0.000, y = 0.902, z = 0.000 }, level = 1, pose_id = 9013 },
	{ config_id = 50, monster_id = 21030101, pos = { x = 181.690, y = 57.099, z = 383.671 }, rot = { x = 0.000, y = 107.163, z = 0.000 }, level = 1, pose_id = 9012 },
	{ config_id = 51, monster_id = 21030101, pos = { x = 201.431, y = 57.016, z = 383.069 }, rot = { x = 0.000, y = 273.788, z = 0.000 }, level = 1, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 90, gadget_id = 70220005, pos = { x = 200.973, y = 56.964, z = 370.026 }, rot = { x = 0.000, y = 293.586, z = 0.000 }, level = 1 },
	{ config_id = 91, gadget_id = 70220005, pos = { x = 200.759, y = 57.016, z = 379.107 }, rot = { x = 0.000, y = 276.611, z = 0.000 }, level = 1 },
	{ config_id = 92, gadget_id = 70220005, pos = { x = 200.363, y = 57.017, z = 387.690 }, rot = { x = 0.000, y = 275.684, z = 0.000 }, level = 1 },
	{ config_id = 93, gadget_id = 70220005, pos = { x = 183.203, y = 57.017, z = 388.567 }, rot = { x = 0.000, y = 113.734, z = 0.000 }, level = 1 },
	{ config_id = 94, gadget_id = 70220005, pos = { x = 182.793, y = 57.016, z = 379.412 }, rot = { x = 0.000, y = 110.341, z = 0.000 }, level = 1 },
	{ config_id = 95, gadget_id = 70220005, pos = { x = 182.969, y = 57.017, z = 369.948 }, rot = { x = 0.000, y = 101.062, z = 0.000 }, level = 1 },
	{ config_id = 96, gadget_id = 70220023, pos = { x = 181.265, y = 57.018, z = 374.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 97, gadget_id = 70220023, pos = { x = 201.938, y = 57.016, z = 374.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 98, gadget_id = 70220023, pos = { x = 201.166, y = 57.016, z = 384.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 99, gadget_id = 70220023, pos = { x = 180.743, y = 57.016, z = 384.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 24, shape = RegionShape.CUBIC, size = { x = 50.000, y = 10.000, z = 2.000 }, pos = { x = 195.364, y = 60.905, z = 358.447 } }
}

-- 触发器
triggers = {
	{ config_id = 1000024, name = "ENTER_REGION_24", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_24", action = "action_EVENT_ENTER_REGION_24", forbid_guest = false }
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
		monsters = { 17, 42, 49, 50, 51 },
		gadgets = { 90, 91, 92, 93, 94, 95, 96, 97, 98, 99 },
		regions = { 24 },
		triggers = { "ENTER_REGION_24" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_24(context, evt)
	if evt.param1 ~= 24 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_24(context, evt)
	-- 改变指定group组220024008中， configid为83的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220024008, 83, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end