-- 基础信息
local base_info = {
	group_id = 133003051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 51001, monster_id = 20010301, pos = { x = 2445.251, y = 222.874, z = -1359.589 }, rot = { x = 0.000, y = 73.784, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 51002, monster_id = 20010301, pos = { x = 2444.499, y = 223.378, z = -1362.467 }, rot = { x = 0.000, y = 73.784, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 51003, monster_id = 20010301, pos = { x = 2442.791, y = 223.501, z = -1359.262 }, rot = { x = 0.000, y = 73.784, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	-- 进入区域后，1）创建Suite2内的怪物；2）锁上宝箱
	{ config_id = 51004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2443.875, y = 223.492, z = -1360.143 }, area_id = 1 }
}

-- 触发器
triggers = {
	-- 进入区域后，1）创建Suite2内的怪物；2）锁上宝箱
	{ config_id = 1051004, name = "ENTER_REGION_51004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_51004", action = "action_EVENT_ENTER_REGION_51004" },
	-- 消灭全部怪物后，1）解除宝箱锁定；2）让Group进入空Suite
	{ config_id = 1051005, name = "ANY_MONSTER_DIE_51005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51005", action = "action_EVENT_ANY_MONSTER_DIE_51005" }
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
	end_suite = 3,
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
		regions = { 51004 },
		triggers = { "ENTER_REGION_51004", "ANY_MONSTER_DIE_51005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 51001, 51002, 51003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_51005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_ENTER_REGION_51004(context, evt)
	if evt.param1 ~= 51004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_51004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003051, 2)
	
	-- 改变指定group组133003044中， configid为44004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133003044, 44004, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51005(context, evt)
	-- 改变指定group组133003044中， configid为44004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133003044, 44004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003051, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end