-- 基础信息
local base_info = {
	group_id = 133314306
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 306001, monster_id = 24010101, pos = { x = -716.770, y = -11.227, z = 4476.968 }, rot = { x = 0.000, y = 239.357, z = 0.000 }, level = 32, drop_tag = "遗迹守卫", pose_id = 101, area_id = 32 },
	{ config_id = 306002, monster_id = 26090201, pos = { x = -713.793, y = -8.904, z = 4477.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 306003, monster_id = 26090201, pos = { x = -714.390, y = -10.052, z = 4475.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 306004, monster_id = 26090201, pos = { x = -717.552, y = -9.654, z = 4480.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 306006, gadget_id = 70211001, pos = { x = -712.789, y = -11.191, z = 4474.238 }, rot = { x = 3.901, y = 3.128, z = 12.707 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 306007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -712.789, y = -11.191, z = 4474.238 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1306005, name = "ANY_MONSTER_DIE_306005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_306005", action = "action_EVENT_ANY_MONSTER_DIE_306005" },
	{ config_id = 1306007, name = "ENTER_REGION_306007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_306007", action = "action_EVENT_ENTER_REGION_306007" }
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
		monsters = { 306001, 306002, 306003, 306004 },
		gadgets = { 306006 },
		regions = { 306007 },
		triggers = { "ANY_MONSTER_DIE_306005", "ENTER_REGION_306007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_306005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_306005(context, evt)
	-- 将configid为 306006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_306007(context, evt)
	if evt.param1 ~= 306007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_306007(context, evt)
	-- 将configid为 306006 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306006, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end