-- 基础信息
local base_info = {
	group_id = 133301605
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 605001, monster_id = 26120301, pos = { x = -387.327, y = 206.103, z = 3741.515 }, rot = { x = 0.000, y = 264.277, z = 0.000 }, level = 33, drop_tag = "大蕈兽", disableWander = true, pose_id = 102, area_id = 22 },
	{ config_id = 605002, monster_id = 26090101, pos = { x = -386.653, y = 211.556, z = 3736.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 605003, monster_id = 26090101, pos = { x = -391.759, y = 211.857, z = 3736.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 605007, monster_id = 26090101, pos = { x = -395.318, y = 211.757, z = 3746.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 605004, gadget_id = 70211102, pos = { x = -392.077, y = 205.875, z = 3741.922 }, rot = { x = 12.907, y = 75.772, z = 2.162 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 605005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -391.223, y = 206.460, z = 3741.352 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1605005, name = "ENTER_REGION_605005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_605005", action = "action_EVENT_ENTER_REGION_605005" },
	{ config_id = 1605006, name = "ANY_MONSTER_DIE_605006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_605006", action = "action_EVENT_ANY_MONSTER_DIE_605006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 605008, monster_id = 26090101, pos = { x = -386.758, y = 212.171, z = 3746.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 }
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
		-- description = ,
		monsters = { 605001 },
		gadgets = { 605004 },
		regions = { 605005 },
		triggers = { "ENTER_REGION_605005", "ANY_MONSTER_DIE_605006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 605002, 605003, 605007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_605006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_605005(context, evt)
	if evt.param1 ~= 605005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_605005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301605, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_605006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_605006(context, evt)
	-- 将configid为 605004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 605004, GadgetState.Default) then
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