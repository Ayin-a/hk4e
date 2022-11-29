-- 基础信息
local base_info = {
	group_id = 133301294
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 294001, monster_id = 28061301, pos = { x = -477.659, y = 201.820, z = 3112.403 }, rot = { x = 0.000, y = 94.569, z = 0.000 }, level = 27, drop_tag = "驮兽镀金旅团", disableWander = true, pose_id = 2, area_id = 22 },
	{ config_id = 294002, monster_id = 25210101, pos = { x = -474.614, y = 201.672, z = 3112.054 }, rot = { x = 0.000, y = 285.541, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 22 },
	{ config_id = 294003, monster_id = 25210202, pos = { x = -463.821, y = 200.000, z = 3129.577 }, rot = { x = 0.000, y = 76.427, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9006, area_id = 22 },
	{ config_id = 294009, monster_id = 25210302, pos = { x = -466.897, y = 201.731, z = 3116.284 }, rot = { x = 0.000, y = 58.812, z = 0.000 }, level = 33, drop_tag = "镀金旅团", area_id = 22 },
	{ config_id = 294010, monster_id = 25210501, pos = { x = -472.228, y = 201.825, z = 3119.592 }, rot = { x = 0.000, y = 172.160, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 294004, gadget_id = 70210101, pos = { x = -479.378, y = 203.493, z = 3110.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 22 },
	{ config_id = 294005, gadget_id = 70210101, pos = { x = -480.225, y = 202.829, z = 3113.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 22 },
	{ config_id = 294006, gadget_id = 70310006, pos = { x = -471.642, y = 201.760, z = 3117.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 294007, gadget_id = 70211002, pos = { x = -472.158, y = 202.184, z = 3123.451 }, rot = { x = 0.000, y = 137.280, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 294008, gadget_id = 70210101, pos = { x = -470.429, y = 202.907, z = 3127.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 22 },
	{ config_id = 294012, gadget_id = 70220015, pos = { x = -476.111, y = 201.924, z = 3114.561 }, rot = { x = 273.259, y = 0.000, z = 72.032 }, level = 33, area_id = 22 },
	{ config_id = 294013, gadget_id = 70220015, pos = { x = -476.012, y = 202.741, z = 3114.662 }, rot = { x = 273.259, y = 0.000, z = 65.854 }, level = 33, area_id = 22 },
	{ config_id = 294014, gadget_id = 70210101, pos = { x = -472.570, y = 203.424, z = 3090.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1294011, name = "ANY_MONSTER_DIE_294011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_294011", action = "action_EVENT_ANY_MONSTER_DIE_294011", trigger_count = 0 }
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
		monsters = { 294001, 294002, 294003, 294009, 294010 },
		gadgets = { 294004, 294005, 294006, 294007, 294008, 294012, 294013, 294014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_294011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_294011(context, evt)
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_294011(context, evt)
	-- 将configid为 294007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 294007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end