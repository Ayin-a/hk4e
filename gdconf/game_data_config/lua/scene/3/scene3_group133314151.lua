-- 基础信息
local base_info = {
	group_id = 133314151
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 151001, monster_id = 26120401, pos = { x = -986.133, y = -27.346, z = 4411.249 }, rot = { x = 0.000, y = 359.362, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 103, area_id = 32 },
	{ config_id = 151003, monster_id = 26090901, pos = { x = -979.133, y = -28.337, z = 4413.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 151004, monster_id = 26090901, pos = { x = -981.852, y = -28.737, z = 4417.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 151005, monster_id = 26090901, pos = { x = -977.544, y = -28.189, z = 4419.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 151010, monster_id = 26090601, pos = { x = -981.534, y = -27.757, z = 4408.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 151012, monster_id = 26090601, pos = { x = -979.619, y = -28.496, z = 4420.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 151006, gadget_id = 70211012, pos = { x = -983.368, y = -28.733, z = 4416.081 }, rot = { x = 2.684, y = 0.000, z = 1.788 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 151008, shape = RegionShape.SPHERE, radius = 8, pos = { x = -982.288, y = -27.954, z = 4413.719 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1151007, name = "ANY_MONSTER_DIE_151007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_151007", action = "action_EVENT_ANY_MONSTER_DIE_151007" },
	{ config_id = 1151008, name = "ENTER_REGION_151008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_151008", action = "action_EVENT_ENTER_REGION_151008" },
	{ config_id = 1151013, name = "ANY_MONSTER_DIE_151013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_151013", action = "action_EVENT_ANY_MONSTER_DIE_151013" }
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
		gadgets = { 151006 },
		regions = { 151008 },
		triggers = { "ENTER_REGION_151008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 151003, 151004, 151005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_151013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 151001, 151010, 151012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_151007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_151007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_151007(context, evt)
	-- 将configid为 151006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151006, GadgetState.Default) then
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
function condition_EVENT_ENTER_REGION_151008(context, evt)
	if evt.param1 ~= 151008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_151008(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context,151006, GadgetState.ChestLocked) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING: SetGadgetStateByConfigId")
		return -1
	end
	
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 133314151, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING: AddExtraGroupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_151013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_151013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314151, 3)
	
	return 0
end