-- 基础信息
local base_info = {
	group_id = 155008157
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 157001, monster_id = 24020101, pos = { x = -275.259, y = 206.328, z = 124.412 }, rot = { x = 0.000, y = 338.773, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 200 },
	{ config_id = 157004, monster_id = 24020101, pos = { x = -261.443, y = 207.921, z = 131.959 }, rot = { x = 0.000, y = 254.924, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 200 },
	{ config_id = 157005, monster_id = 24020101, pos = { x = -253.983, y = 203.851, z = 122.932 }, rot = { x = 0.000, y = 302.976, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 157002, gadget_id = 70211002, pos = { x = -265.835, y = 208.494, z = 131.278 }, rot = { x = 345.419, y = 337.441, z = 357.277 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1157003, name = "ANY_MONSTER_DIE_157003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_157003", action = "action_EVENT_ANY_MONSTER_DIE_157003" }
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
		monsters = { 157001, 157004, 157005 },
		gadgets = { 157002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_157003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_157003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_157003(context, evt)
	-- 将configid为 157002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 157002, GadgetState.Default) then
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