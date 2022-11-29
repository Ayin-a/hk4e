-- 基础信息
local base_info = {
	group_id = 220031010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 20011501, pos = { x = -0.782, y = 42.017, z = 103.608 }, rot = { x = 0.000, y = 152.926, z = 0.000 }, level = 1, disableWander = true, affix = { 1013 } },
	{ config_id = 10002, monster_id = 20011501, pos = { x = -0.696, y = 42.016, z = 88.098 }, rot = { x = 0.000, y = 359.312, z = 0.000 }, level = 1, affix = { 1013 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10004, gadget_id = 70350004, pos = { x = 55.020, y = 42.262, z = 120.933 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 10006, gadget_id = 70900201, pos = { x = 59.361, y = 42.017, z = 121.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 10005, shape = RegionShape.CUBIC, size = { x = 4.000, y = 30.000, z = 30.000 }, pos = { x = 59.805, y = 42.017, z = 120.420 } }
}

-- 触发器
triggers = {
	{ config_id = 1010003, name = "ANY_MONSTER_DIE_10003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10003", action = "action_EVENT_ANY_MONSTER_DIE_10003" },
	{ config_id = 1010005, name = "ENTER_REGION_10005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10005", action = "action_EVENT_ENTER_REGION_10005" }
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
		gadgets = { 10004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 10001, 10002 },
		gadgets = { },
		regions = { 10005 },
		triggers = { "ANY_MONSTER_DIE_10003", "ENTER_REGION_10005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 10006 },
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
function condition_EVENT_ANY_MONSTER_DIE_10003(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220031010) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10003(context, evt)
	-- 将configid为 10004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220031010, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10005(context, evt)
	if evt.param1 ~= 10005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10005(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220031010, 3)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220031003, 2)
	
	return 0
end