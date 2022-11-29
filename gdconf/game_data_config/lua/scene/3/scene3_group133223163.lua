-- 基础信息
local base_info = {
	group_id = 133223163
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 163003, monster_id = 26010301, pos = { x = -6131.276, y = 200.953, z = -3316.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "骗骗花", area_id = 18 },
	{ config_id = 163004, monster_id = 26010301, pos = { x = -6133.220, y = 200.718, z = -3311.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "骗骗花", area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 163001, gadget_id = 70330064, pos = { x = -6127.315, y = 200.933, z = -3311.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 163002, shape = RegionShape.SPHERE, radius = 4, pos = { x = -6128.032, y = 202.511, z = -3311.860 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1163002, name = "ENTER_REGION_163002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_163002", action = "action_EVENT_ENTER_REGION_163002" },
	{ config_id = 1163005, name = "ANY_MONSTER_DIE_163005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163005", action = "action_EVENT_ANY_MONSTER_DIE_163005", trigger_count = 0 }
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
		gadgets = { 163001 },
		regions = { 163002 },
		triggers = { "ENTER_REGION_163002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 163003, 163004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_163005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_163002(context, evt)
	if evt.param1 ~= 163002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_163002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223163, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_163005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_163005(context, evt)
	-- 将configid为 163001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end