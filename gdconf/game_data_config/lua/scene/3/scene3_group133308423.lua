-- 基础信息
local base_info = {
	group_id = 133308423
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 423001, monster_id = 24030201, pos = { x = -1692.007, y = 223.279, z = 4543.342 }, rot = { x = 0.000, y = 242.790, z = 0.000 }, level = 32, drop_tag = "遗迹龙兽", pose_id = 102, area_id = 26 },
	{ config_id = 423002, monster_id = 24010101, pos = { x = -1698.009, y = 223.128, z = 4554.119 }, rot = { x = 0.000, y = 194.962, z = 0.000 }, level = 32, drop_tag = "遗迹守卫", pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 423004, gadget_id = 70211012, pos = { x = -1699.814, y = 224.216, z = 4544.613 }, rot = { x = 351.279, y = 243.967, z = 358.679 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 423007, gadget_id = 70310007, pos = { x = -1701.959, y = 224.151, z = 4538.198 }, rot = { x = 322.567, y = 345.512, z = 334.018 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 423006, shape = RegionShape.SPHERE, radius = 7, pos = { x = -1700.102, y = 225.017, z = 4544.373 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1423006, name = "ENTER_REGION_423006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_423006", action = "action_EVENT_ENTER_REGION_423006", trigger_count = 0 }
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
		monsters = { 423001, 423002 },
		gadgets = { 423004, 423007 },
		regions = { 423006 },
		triggers = { "ENTER_REGION_423006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_423006(context, evt)
	if evt.param1 ~= 423006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_423006(context, evt)
	-- 将configid为 423004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end