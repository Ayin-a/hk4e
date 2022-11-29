-- 基础信息
local base_info = {
	group_id = 133001356
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 356001, monster_id = 20011201, pos = { x = 1565.169, y = 246.081, z = -1559.630 }, rot = { x = 0.000, y = 187.609, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 356002, monster_id = 20011201, pos = { x = 1568.296, y = 246.081, z = -1560.967 }, rot = { x = 0.000, y = 212.489, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 356003, monster_id = 20011201, pos = { x = 1565.846, y = 246.081, z = -1563.033 }, rot = { x = 0.000, y = 188.478, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 356004, gadget_id = 70211102, pos = { x = 1566.689, y = 245.965, z = -1559.956 }, rot = { x = 0.000, y = 196.657, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 356005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1566.269, y = 246.081, z = -1560.895 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1356005, name = "ENTER_REGION_356005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_356005", action = "action_EVENT_ENTER_REGION_356005" },
	{ config_id = 1356006, name = "ANY_MONSTER_DIE_356006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_356006", action = "action_EVENT_ANY_MONSTER_DIE_356006" },
	{ config_id = 1356007, name = "GROUP_LOAD_356007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_356007", trigger_count = 0 }
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
		gadgets = { 356004 },
		regions = { 356005 },
		triggers = { "ENTER_REGION_356005", "ANY_MONSTER_DIE_356006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 356001, 356002, 356003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_356006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_356007" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_356005(context, evt)
	if evt.param1 ~= 356005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_356005(context, evt)
	-- 将configid为 356004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 356004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001356, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_356006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_356006(context, evt)
	-- 将configid为 356004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 356004, GadgetState.Default) then
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

-- 触发操作
function action_EVENT_GROUP_LOAD_356007(context, evt)
	local uid_list = ScriptLib.GetSceneUidList(context)
	if #uid_list ~= 0 and uid_list ~= nil then
	        local avatar_eid = ScriptLib.GetAvatarEntityIdByUid(context, uid_list[1])
	        local _qs = ScriptLib.GetQuestState(context, avatar_eid, 1011205)
	        if _qs == 3 then
	                ScriptLib.RefreshGroup(context, {group_id = 133001356, suite = 1})
	        end
	else
	        ScriptLib.PrintContextLog(context, "## LUA_WARNING : Venti Quest Get Player Fail !!!")
	end
	
	return 0
end