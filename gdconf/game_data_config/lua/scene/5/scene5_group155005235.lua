-- 基础信息
local base_info = {
	group_id = 155005235
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 235001, monster_id = 24020201, pos = { x = 194.277, y = 288.925, z = 358.422 }, rot = { x = 0.000, y = 36.299, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 100, area_id = 200 },
	{ config_id = 235002, monster_id = 24020201, pos = { x = 205.691, y = 288.925, z = 350.525 }, rot = { x = 0.000, y = 132.073, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 100, area_id = 200 },
	{ config_id = 235003, monster_id = 24020201, pos = { x = 195.239, y = 288.925, z = 348.118 }, rot = { x = 0.000, y = 36.299, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 100, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 235004, gadget_id = 70211102, pos = { x = 198.595, y = 288.925, z = 352.785 }, rot = { x = 0.000, y = 36.299, z = 0.000 }, level = 16, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
	{ config_id = 235005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 198.698, y = 289.617, z = 352.926 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1235005, name = "ENTER_REGION_235005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_235005", action = "action_EVENT_ENTER_REGION_235005" },
	{ config_id = 1235006, name = "ANY_MONSTER_DIE_235006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_235006", action = "action_EVENT_ANY_MONSTER_DIE_235006" }
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
		gadgets = { 235004 },
		regions = { 235005 },
		triggers = { "ENTER_REGION_235005", "ANY_MONSTER_DIE_235006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 235001, 235002, 235003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_235006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_235005(context, evt)
	if evt.param1 ~= 235005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_235005(context, evt)
	-- 将configid为 235004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 235004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155005235, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_235006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_235006(context, evt)
	-- 将configid为 235004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 235004, GadgetState.Default) then
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