-- 基础信息
local base_info = {
	group_id = 133004297
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 297001, monster_id = 20011001, pos = { x = 2060.081, y = 266.348, z = -378.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 297002, monster_id = 20011001, pos = { x = 2064.654, y = 265.110, z = -384.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 297003, monster_id = 20011001, pos = { x = 2065.317, y = 265.016, z = -382.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 297004, gadget_id = 70211102, pos = { x = 2062.202, y = 265.831, z = -380.599 }, rot = { x = 15.086, y = 154.299, z = 10.917 }, level = 11, drop_tag = "解谜低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 297005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2061.444, y = 265.944, z = -381.266 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1297005, name = "ENTER_REGION_297005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297005", action = "action_EVENT_ENTER_REGION_297005" },
	{ config_id = 1297006, name = "ANY_MONSTER_DIE_297006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_297006", action = "action_EVENT_ANY_MONSTER_DIE_297006" }
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
		gadgets = { 297004 },
		regions = { 297005 },
		triggers = { "ENTER_REGION_297005", "ANY_MONSTER_DIE_297006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 297001, 297002, 297003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_297006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_297005(context, evt)
	if evt.param1 ~= 297005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297005(context, evt)
	-- 将configid为 297004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004297, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_297006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_297006(context, evt)
	-- 将configid为 297004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297004, GadgetState.Default) then
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