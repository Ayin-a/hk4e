-- 基础信息
local base_info = {
	group_id = 133303120
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 120009, monster_id = 25210501, pos = { x = -1525.071, y = 240.202, z = 3761.056 }, rot = { x = 0.000, y = 170.319, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9502, area_id = 23 },
	{ config_id = 120010, monster_id = 25210101, pos = { x = -1512.406, y = 242.709, z = 3755.739 }, rot = { x = 0.000, y = 272.916, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9004, area_id = 23 },
	{ config_id = 120011, monster_id = 25210401, pos = { x = -1513.233, y = 242.508, z = 3758.876 }, rot = { x = 0.000, y = 246.128, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9002, area_id = 23 },
	{ config_id = 120012, monster_id = 25310201, pos = { x = -1518.969, y = 241.662, z = 3759.667 }, rot = { x = 0.000, y = 257.513, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 120004, gadget_id = 70211102, pos = { x = -1529.098, y = 243.312, z = 3756.963 }, rot = { x = 358.289, y = 73.480, z = 17.712 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 120005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1529.098, y = 243.312, z = 3756.963 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1120005, name = "ENTER_REGION_120005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_120005", action = "action_EVENT_ENTER_REGION_120005" },
	-- 魔改刷第二波
	{ config_id = 1120006, name = "ANY_MONSTER_DIE_120006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_120006", action = "action_EVENT_ANY_MONSTER_DIE_120006" },
	-- 第二波死光才刷宝箱
	{ config_id = 1120008, name = "ANY_MONSTER_DIE_120008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_120008", action = "action_EVENT_ANY_MONSTER_DIE_120008" }
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
		gadgets = { 120004 },
		regions = { 120005 },
		triggers = { "ENTER_REGION_120005", "ANY_MONSTER_DIE_120006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 120009, 120010, 120011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_120006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 120012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_120008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_120005(context, evt)
	if evt.param1 ~= 120005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_120005(context, evt)
	-- 将configid为 120004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 120004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303120, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_120006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_120006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303120, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_120008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_120008(context, evt)
	-- 将configid为 120004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 120004, GadgetState.Default) then
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