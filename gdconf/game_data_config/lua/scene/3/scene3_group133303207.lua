-- 基础信息
local base_info = {
	group_id = 133303207
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 207001, monster_id = 28060101, pos = { x = -1758.041, y = 96.344, z = 3333.831 }, rot = { x = 0.000, y = 89.657, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 23 },
	{ config_id = 207002, monster_id = 28060101, pos = { x = -1754.889, y = 95.494, z = 3327.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 23 },
	{ config_id = 207003, monster_id = 28060101, pos = { x = -1747.547, y = 96.215, z = 3333.756 }, rot = { x = 0.000, y = 266.461, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 207004, gadget_id = 70211002, pos = { x = -1752.617, y = 95.741, z = 3332.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 207005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1752.513, y = 95.804, z = 3333.118 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1207005, name = "ENTER_REGION_207005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_207005", action = "action_EVENT_ENTER_REGION_207005" },
	{ config_id = 1207006, name = "ANY_MONSTER_DIE_207006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_207006", action = "action_EVENT_ANY_MONSTER_DIE_207006" }
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
		gadgets = { 207004 },
		regions = { 207005 },
		triggers = { "ENTER_REGION_207005", "ANY_MONSTER_DIE_207006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 207001, 207002, 207003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_207006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_207005(context, evt)
	if evt.param1 ~= 207005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_207005(context, evt)
	-- 将configid为 207004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 207004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303207, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_207006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_207006(context, evt)
	-- 将configid为 207004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 207004, GadgetState.Default) then
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