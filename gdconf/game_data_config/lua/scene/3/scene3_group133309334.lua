-- 基础信息
local base_info = {
	group_id = 133309334
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 334001, monster_id = 26090301, pos = { x = -2771.439, y = 69.023, z = 5850.707 }, rot = { x = 0.000, y = 243.035, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 334002, monster_id = 26090301, pos = { x = -2776.302, y = 69.962, z = 5845.148 }, rot = { x = 0.000, y = 322.928, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 334003, monster_id = 26090301, pos = { x = -2775.781, y = 68.697, z = 5849.649 }, rot = { x = 0.000, y = 248.591, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 334004, gadget_id = 70211102, pos = { x = -2774.932, y = 69.365, z = 5847.866 }, rot = { x = 23.029, y = 310.365, z = 355.271 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 334005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2775.635, y = 69.952, z = 5848.057 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1334005, name = "ENTER_REGION_334005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_334005", action = "action_EVENT_ENTER_REGION_334005" },
	{ config_id = 1334006, name = "ANY_MONSTER_DIE_334006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_334006", action = "action_EVENT_ANY_MONSTER_DIE_334006" }
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
		gadgets = { 334004 },
		regions = { 334005 },
		triggers = { "ENTER_REGION_334005", "ANY_MONSTER_DIE_334006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 334001, 334002, 334003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_334006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_334005(context, evt)
	if evt.param1 ~= 334005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_334005(context, evt)
	-- 将configid为 334004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309334, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_334006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_334006(context, evt)
	-- 将configid为 334004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end