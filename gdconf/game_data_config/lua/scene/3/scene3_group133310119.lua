-- 基础信息
local base_info = {
	group_id = 133310119
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 119007, monster_id = 26090801, pos = { x = -2873.295, y = 252.038, z = 4574.907 }, rot = { x = 0.000, y = 260.387, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 28 },
	{ config_id = 119008, monster_id = 26090801, pos = { x = -2873.748, y = 252.042, z = 4581.766 }, rot = { x = 0.000, y = 193.359, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 28 },
	{ config_id = 119010, monster_id = 26090301, pos = { x = -2877.279, y = 253.793, z = 4574.924 }, rot = { x = 0.000, y = 292.028, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 28 },
	{ config_id = 119011, monster_id = 26090301, pos = { x = -2878.562, y = 253.633, z = 4579.748 }, rot = { x = 0.000, y = 186.623, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 119004, gadget_id = 70211102, pos = { x = -2879.908, y = 254.532, z = 4577.487 }, rot = { x = 15.213, y = 104.977, z = 1.455 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 }
}

-- 区域
regions = {
	{ config_id = 119005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2880.850, y = 254.731, z = 4578.296 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1119005, name = "ENTER_REGION_119005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_119005", action = "action_EVENT_ENTER_REGION_119005" },
	{ config_id = 1119006, name = "ANY_MONSTER_DIE_119006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_119006", action = "action_EVENT_ANY_MONSTER_DIE_119006" }
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
		gadgets = { 119004 },
		regions = { 119005 },
		triggers = { "ENTER_REGION_119005", "ANY_MONSTER_DIE_119006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 119007, 119008, 119010, 119011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_119006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_119005(context, evt)
	if evt.param1 ~= 119005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_119005(context, evt)
	-- 将configid为 119004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 119004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310119, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_119006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_119006(context, evt)
	-- 将configid为 119004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 119004, GadgetState.Default) then
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