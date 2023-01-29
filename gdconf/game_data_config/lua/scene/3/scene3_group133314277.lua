-- 基础信息
local base_info = {
	group_id = 133314277
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 277001, monster_id = 26100301, pos = { x = -642.865, y = 164.082, z = 4202.729 }, rot = { x = 0.000, y = 311.706, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", disableWander = true, pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 277002, gadget_id = 70211002, pos = { x = -644.644, y = 163.857, z = 4200.544 }, rot = { x = 6.130, y = 329.591, z = 10.652 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 277004, shape = RegionShape.SPHERE, radius = 25, pos = { x = -647.924, y = 158.536, z = 4205.580 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1277003, name = "ANY_MONSTER_DIE_277003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_277003", action = "action_EVENT_ANY_MONSTER_DIE_277003" },
	{ config_id = 1277004, name = "ENTER_REGION_277004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_277004", action = "action_EVENT_ENTER_REGION_277004", trigger_count = 0 }
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
		monsters = { 277001 },
		gadgets = { 277002 },
		regions = { 277004 },
		triggers = { "ANY_MONSTER_DIE_277003", "ENTER_REGION_277004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_277003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_277003(context, evt)
	-- 将configid为 277002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 277002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_277004(context, evt)
	if evt.param1 ~= 277004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_277004(context, evt)
	ScriptLib.SetMonsterBattleByGroup(context, 277001, 133314277)
	
	return 0
end