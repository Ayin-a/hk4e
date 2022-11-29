-- 基础信息
local base_info = {
	group_id = 133217029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29002, monster_id = 20060201, pos = { x = -4423.586, y = 221.447, z = -3874.247 }, rot = { x = 0.000, y = 200.847, z = 0.000 }, level = 30, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 14 },
	{ config_id = 29007, monster_id = 20060201, pos = { x = -4420.672, y = 220.159, z = -3885.330 }, rot = { x = 0.000, y = 302.646, z = 0.000 }, level = 30, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 14 },
	{ config_id = 29008, monster_id = 20060201, pos = { x = -4429.813, y = 221.041, z = -3879.068 }, rot = { x = 0.000, y = 84.853, z = 0.000 }, level = 30, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 29004, gadget_id = 70211102, pos = { x = -4423.594, y = 221.090, z = -3879.820 }, rot = { x = 359.896, y = 271.328, z = 4.466 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 29005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -4423.272, y = 222.377, z = -3879.898 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1029005, name = "ENTER_REGION_29005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_29005", action = "action_EVENT_ENTER_REGION_29005" },
	{ config_id = 1029006, name = "ANY_MONSTER_DIE_29006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29006", action = "action_EVENT_ANY_MONSTER_DIE_29006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 29003, monster_id = 20011301, pos = { x = -4423.863, y = 221.196, z = -3879.647 }, rot = { x = 0.000, y = 264.328, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 14 }
	}
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
		gadgets = { 29004 },
		regions = { 29005 },
		triggers = { "ENTER_REGION_29005", "ANY_MONSTER_DIE_29006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 29002, 29007, 29008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_29006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_29005(context, evt)
	if evt.param1 ~= 29005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_29005(context, evt)
	-- 将configid为 29004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217029, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29006(context, evt)
	-- 将configid为 29004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29004, GadgetState.Default) then
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