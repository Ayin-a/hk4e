-- 基础信息
local base_info = {
	group_id = 177008040
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 40001, monster_id = 22040101, pos = { x = -123.059, y = 169.636, z = 102.773 }, rot = { x = 0.000, y = 295.544, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", disableWander = true, affix = { 1040 }, pose_id = 101, area_id = 210 },
	{ config_id = 40002, monster_id = 22040201, pos = { x = -126.225, y = 169.767, z = 100.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", disableWander = true, affix = { 1040 }, pose_id = 101, area_id = 210 },
	{ config_id = 40003, monster_id = 22040201, pos = { x = -124.028, y = 169.639, z = 100.695 }, rot = { x = 0.000, y = 312.149, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", disableWander = true, affix = { 1040 }, pose_id = 101, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 40004, gadget_id = 70211156, pos = { x = -127.848, y = 170.119, z = 104.122 }, rot = { x = 0.000, y = 299.805, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 40005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -127.962, y = 171.049, z = 104.402 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1040005, name = "ENTER_REGION_40005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40005", action = "action_EVENT_ENTER_REGION_40005" },
	{ config_id = 1040006, name = "ANY_MONSTER_DIE_40006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40006", action = "action_EVENT_ANY_MONSTER_DIE_40006" }
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
		gadgets = { 40004 },
		regions = { 40005 },
		triggers = { "ENTER_REGION_40005", "ANY_MONSTER_DIE_40006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 40001, 40002, 40003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_40006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_40005(context, evt)
	if evt.param1 ~= 40005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40005(context, evt)
	-- 将configid为 40004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008040, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40006(context, evt)
	-- 将configid为 40004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40004, GadgetState.Default) then
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