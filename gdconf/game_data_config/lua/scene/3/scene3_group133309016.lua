-- 基础信息
local base_info = {
	group_id = 133309016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16004, monster_id = 26120401, pos = { x = -2623.599, y = -10.066, z = 5877.145 }, rot = { x = 0.000, y = 132.282, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 103, area_id = 27 },
	{ config_id = 16005, monster_id = 26090901, pos = { x = -2619.569, y = -7.882, z = 5873.918 }, rot = { x = 0.000, y = 3.041, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 102, area_id = 27 },
	{ config_id = 16006, monster_id = 26090901, pos = { x = -2615.331, y = -7.494, z = 5877.268 }, rot = { x = 0.000, y = 209.390, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 102, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 16002, gadget_id = 70211002, pos = { x = -2621.399, y = -9.184, z = 5875.342 }, rot = { x = 21.300, y = 310.464, z = 1.308 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1016003, name = "ANY_MONSTER_DIE_16003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_16003", action = "action_EVENT_ANY_MONSTER_DIE_16003" }
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
		monsters = { 16004, 16005, 16006 },
		gadgets = { 16002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_16003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_16003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_16003(context, evt)
	-- 将configid为 16002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 16002, GadgetState.Default) then
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