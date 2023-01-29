-- 基础信息
local base_info = {
	group_id = 251010003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3003, monster_id = 21010101, pos = { x = 42.268, y = 21.612, z = -35.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 3005, monster_id = 20011001, pos = { x = 25.334, y = 21.612, z = -32.686 }, rot = { x = 0.000, y = 42.378, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 3006, monster_id = 22010302, pos = { x = 25.603, y = 21.612, z = -20.187 }, rot = { x = 0.000, y = 133.596, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 3007, monster_id = 22010404, pos = { x = 25.224, y = 21.612, z = -24.393 }, rot = { x = 0.000, y = 47.783, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70211002, pos = { x = 15.136, y = 21.612, z = -32.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 3002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 32.150, y = 21.612, z = -27.467 } }
}

-- 触发器
triggers = {
	{ config_id = 1003002, name = "ENTER_REGION_3002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3002", action = "action_EVENT_ENTER_REGION_3002" },
	{ config_id = 1003004, name = "ANY_MONSTER_DIE_3004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3004", action = "action_EVENT_ANY_MONSTER_DIE_3004" }
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
		gadgets = { 3001 },
		regions = { 3002 },
		triggers = { "ENTER_REGION_3002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3003, 3005, 3006, 3007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3002(context, evt)
	if evt.param1 ~= 3002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 251010003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3004(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组251010004中， configid为4003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 251010004, 4003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end