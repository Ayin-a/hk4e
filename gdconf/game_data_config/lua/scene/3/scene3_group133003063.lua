-- 基础信息
local base_info = {
	group_id = 133003063
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 63001, monster_id = 20010701, pos = { x = 2564.531, y = 217.762, z = -1483.662 }, rot = { x = 0.000, y = 320.566, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 63002, monster_id = 20010501, pos = { x = 2567.107, y = 217.387, z = -1483.784 }, rot = { x = 0.000, y = 320.566, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 63003, monster_id = 20010501, pos = { x = 2564.832, y = 218.452, z = -1486.614 }, rot = { x = 0.000, y = 320.566, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 }
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
	{ config_id = 63004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2566.077, y = 218.604, z = -1485.319 }, area_id = 1 }
}

-- 触发器
triggers = {
	-- 进入区域后，1）创建Suite2内的怪物；2）锁上宝箱
	{ config_id = 1063004, name = "ENTER_REGION_63004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_63004", action = "action_EVENT_ENTER_REGION_63004" },
	-- 消灭全部怪物后，1）解除宝箱锁定；2）让Group进入空Suite
	{ config_id = 1063005, name = "ANY_MONSTER_DIE_63005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_63005", action = "action_EVENT_ANY_MONSTER_DIE_63005" }
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
		regions = { 63004 },
		triggers = { "ENTER_REGION_63004", "ANY_MONSTER_DIE_63005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 63001, 63002, 63003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_63005" },
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
function condition_EVENT_ENTER_REGION_63004(context, evt)
	if evt.param1 ~= 63004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_63004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003063, 2)
	
	-- 改变指定group组133003044中， configid为44014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133003044, 44014, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_63005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_63005(context, evt)
	-- 改变指定group组133003044中， configid为44014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133003044, 44014, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003063, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end