-- 基础信息
local base_info = {
	group_id = 133001158
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 158003, monster_id = 20011101, pos = { x = 1752.521, y = 194.797, z = -1529.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "大史莱姆", area_id = 2 },
	{ config_id = 158004, monster_id = 20010801, pos = { x = 1753.614, y = 195.543, z = -1514.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "史莱姆", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 158001, gadget_id = 70211002, pos = { x = 1750.437, y = 195.543, z = -1522.658 }, rot = { x = 0.000, y = 288.038, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1158002, name = "ANY_MONSTER_DIE_158002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_158002", action = "action_EVENT_ANY_MONSTER_DIE_158002" }
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
		monsters = { 158003, 158004 },
		gadgets = { 158001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_158002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_158002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_158002(context, evt)
	-- 将configid为 158001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 158001, GadgetState.Default) then
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