-- 基础信息
local base_info = {
	group_id = 133303341
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 341002, monster_id = 28060402, pos = { x = -2288.073, y = 284.766, z = 3916.927 }, rot = { x = 0.000, y = 141.650, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 341003, monster_id = 28060402, pos = { x = -2280.235, y = 284.766, z = 3913.782 }, rot = { x = 0.000, y = 324.490, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 341004, monster_id = 28060302, pos = { x = -2287.528, y = 284.766, z = 3912.796 }, rot = { x = 0.000, y = 46.138, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 341001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2284.522, y = 284.766, z = 3915.796 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1341001, name = "ENTER_REGION_341001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_341001", action = "action_EVENT_ENTER_REGION_341001" },
	{ config_id = 1341005, name = "ANY_MONSTER_DIE_341005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_341005", action = "action_EVENT_ANY_MONSTER_DIE_341005" }
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
		gadgets = { },
		regions = { 341001 },
		triggers = { "ENTER_REGION_341001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 341002, 341003, 341004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_341005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_341001(context, evt)
	if evt.param1 ~= 341001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_341001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303341, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_341005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_341005(context, evt)
	-- 改变指定group组133303133中， configid为133001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133303133, 133001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end