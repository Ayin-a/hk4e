-- 基础信息
local base_info = {
	group_id = 133217019
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19001, monster_id = 20060201, pos = { x = -4344.815, y = 219.499, z = -3871.469 }, rot = { x = 0.000, y = 150.524, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 19002, monster_id = 20011501, pos = { x = -4348.640, y = 219.483, z = -3875.306 }, rot = { x = 11.532, y = 117.909, z = 13.745 }, level = 30, drop_tag = "大史莱姆", area_id = 14 },
	{ config_id = 19003, monster_id = 20060301, pos = { x = -4338.702, y = 217.459, z = -3876.789 }, rot = { x = 0.000, y = 279.047, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 19007, monster_id = 20011501, pos = { x = -4342.021, y = 218.062, z = -3868.911 }, rot = { x = 0.000, y = 213.502, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 19004, gadget_id = 70211102, pos = { x = -4342.686, y = 218.610, z = -3879.097 }, rot = { x = 14.681, y = 65.325, z = 359.548 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 19005, shape = RegionShape.SPHERE, radius = 9, pos = { x = -4343.323, y = 218.688, z = -3878.389 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1019005, name = "ENTER_REGION_19005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19005", action = "action_EVENT_ENTER_REGION_19005" },
	{ config_id = 1019006, name = "ANY_MONSTER_DIE_19006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19006", action = "action_EVENT_ANY_MONSTER_DIE_19006" }
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
		gadgets = { 19004 },
		regions = { 19005 },
		triggers = { "ENTER_REGION_19005", "ANY_MONSTER_DIE_19006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 19001, 19002, 19003, 19007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_19005(context, evt)
	if evt.param1 ~= 19005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19005(context, evt)
	-- 将configid为 19004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217019, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19006(context, evt)
	-- 将configid为 19004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19004, GadgetState.Default) then
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