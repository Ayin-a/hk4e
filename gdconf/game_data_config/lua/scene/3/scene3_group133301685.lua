-- 基础信息
local base_info = {
	group_id = 133301685
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 685001, monster_id = 26010101, pos = { x = -227.856, y = 236.336, z = 3488.616 }, rot = { x = 0.000, y = 28.438, z = 0.000 }, level = 33, drop_tag = "骗骗花", area_id = 29 },
	{ config_id = 685007, monster_id = 26010101, pos = { x = -227.409, y = 236.633, z = 3493.711 }, rot = { x = 0.000, y = 28.438, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 29 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 685002, gadget_id = 70220109, pos = { x = -226.259, y = 235.433, z = 3493.887 }, rot = { x = 14.890, y = 28.126, z = 345.615 }, level = 33, isOneoff = true, area_id = 29 },
	{ config_id = 685003, gadget_id = 70220055, pos = { x = -220.583, y = 234.748, z = 3486.799 }, rot = { x = 1.867, y = 28.887, z = 0.748 }, level = 33, isOneoff = true, area_id = 29 },
	{ config_id = 685004, gadget_id = 70220055, pos = { x = -220.023, y = 233.236, z = 3493.256 }, rot = { x = 13.231, y = 29.027, z = 345.656 }, level = 33, isOneoff = true, area_id = 29 },
	{ config_id = 685008, gadget_id = 70220109, pos = { x = -224.585, y = 235.126, z = 3488.736 }, rot = { x = 15.396, y = 28.439, z = 355.486 }, level = 27, isOneoff = true, area_id = 29 },
	{ config_id = 685009, gadget_id = 70211002, pos = { x = -228.759, y = 236.441, z = 3491.553 }, rot = { x = 11.007, y = 95.874, z = 4.473 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 29 }
}

-- 区域
regions = {
	{ config_id = 685005, shape = RegionShape.SPHERE, radius = 7, pos = { x = -225.115, y = 235.398, z = 3491.272 }, area_id = 29 }
}

-- 触发器
triggers = {
	{ config_id = 1685005, name = "ENTER_REGION_685005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_685005", action = "action_EVENT_ENTER_REGION_685005" },
	{ config_id = 1685006, name = "ANY_MONSTER_DIE_685006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_685006", action = "action_EVENT_ANY_MONSTER_DIE_685006" }
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
		gadgets = { 685002, 685003, 685004, 685008, 685009 },
		regions = { 685005 },
		triggers = { "ENTER_REGION_685005", "ANY_MONSTER_DIE_685006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 685001, 685007 },
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
function condition_EVENT_ENTER_REGION_685005(context, evt)
	if evt.param1 ~= 685005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_685005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301685, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_685006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133301685) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_685006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 685009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 685009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end