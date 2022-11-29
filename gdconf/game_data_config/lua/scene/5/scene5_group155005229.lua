-- 基础信息
local base_info = {
	group_id = 155005229
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 229001, monster_id = 21010101, pos = { x = 338.633, y = 188.437, z = 119.326 }, rot = { x = 11.455, y = 106.396, z = 353.624 }, level = 36, drop_tag = "丘丘人", pose_id = 9016, area_id = 200 },
	{ config_id = 229004, monster_id = 21020201, pos = { x = 333.517, y = 187.557, z = 117.299 }, rot = { x = 0.000, y = 86.219, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", area_id = 200 },
	{ config_id = 229005, monster_id = 21010101, pos = { x = 333.486, y = 186.991, z = 112.874 }, rot = { x = 0.000, y = 142.464, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9016, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 229002, gadget_id = 70211002, pos = { x = 330.235, y = 187.657, z = 118.227 }, rot = { x = 7.837, y = 93.368, z = 348.191 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1229003, name = "ANY_MONSTER_DIE_229003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_229003", action = "action_EVENT_ANY_MONSTER_DIE_229003" }
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
		monsters = { 229001, 229004, 229005 },
		gadgets = { 229002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_229003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_229003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_229003(context, evt)
	-- 将configid为 229002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229002, GadgetState.Default) then
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