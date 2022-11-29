-- 基础信息
local base_info = {
	group_id = 155006176
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 176001, monster_id = 22050101, pos = { x = 418.699, y = 167.905, z = -172.267 }, rot = { x = 0.000, y = 347.240, z = 0.000 }, level = 36, drop_tag = "兽境猎犬", pose_id = 101, area_id = 200 },
	{ config_id = 176002, monster_id = 22040101, pos = { x = 421.235, y = 166.670, z = -164.527 }, rot = { x = 0.000, y = 242.282, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", pose_id = 101, area_id = 200 },
	{ config_id = 176003, monster_id = 22040101, pos = { x = 413.363, y = 167.457, z = -168.079 }, rot = { x = 0.000, y = 41.131, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 176004, gadget_id = 70211002, pos = { x = 416.182, y = 168.170, z = -164.134 }, rot = { x = 0.899, y = 149.867, z = 5.581 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
	{ config_id = 176005, shape = RegionShape.SPHERE, radius = 3, pos = { x = 416.690, y = 167.539, z = -164.468 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1176005, name = "ENTER_REGION_176005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_176005", action = "action_EVENT_ENTER_REGION_176005" },
	{ config_id = 1176006, name = "ANY_MONSTER_DIE_176006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_176006", action = "action_EVENT_ANY_MONSTER_DIE_176006" }
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
		gadgets = { 176004 },
		regions = { 176005 },
		triggers = { "ENTER_REGION_176005", "ANY_MONSTER_DIE_176006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 176001, 176002, 176003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_176006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_176005(context, evt)
	if evt.param1 ~= 176005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_176005(context, evt)
	-- 将configid为 176004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155006176, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_176006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_176006(context, evt)
	-- 将configid为 176004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176004, GadgetState.Default) then
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