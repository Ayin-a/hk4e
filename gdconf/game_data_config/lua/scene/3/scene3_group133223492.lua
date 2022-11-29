-- 基础信息
local base_info = {
	group_id = 133223492
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 492001, monster_id = 20060301, pos = { x = -5807.010, y = 201.893, z = -2480.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 492002, monster_id = 20060301, pos = { x = -5803.781, y = 202.898, z = -2484.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 492003, monster_id = 20060301, pos = { x = -5808.011, y = 203.447, z = -2484.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 492004, gadget_id = 70211102, pos = { x = -5806.394, y = 202.658, z = -2483.720 }, rot = { x = 12.940, y = 32.854, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 492005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -5805.844, y = 202.971, z = -2483.227 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1492005, name = "ENTER_REGION_492005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_492005", action = "action_EVENT_ENTER_REGION_492005" },
	{ config_id = 1492006, name = "ANY_MONSTER_DIE_492006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_492006", action = "action_EVENT_ANY_MONSTER_DIE_492006" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 492004 },
		regions = { 492005 },
		triggers = { "ENTER_REGION_492005", "ANY_MONSTER_DIE_492006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 492001, 492002, 492003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_492006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_492005(context, evt)
	if evt.param1 ~= 492005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_492005(context, evt)
	-- 将configid为 492004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 492004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223492, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_492006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_492006(context, evt)
	-- 将configid为 492004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 492004, GadgetState.Default) then
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