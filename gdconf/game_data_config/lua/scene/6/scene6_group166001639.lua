-- 基础信息
local base_info = {
	group_id = 166001639
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 639001, monster_id = 26090101, pos = { x = 101.644, y = 143.921, z = 665.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 300 },
	{ config_id = 639004, monster_id = 26090101, pos = { x = 106.473, y = 143.768, z = 663.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 300 },
	{ config_id = 639005, monster_id = 20011101, pos = { x = 103.514, y = 143.783, z = 670.238 }, rot = { x = 0.000, y = 221.592, z = 0.000 }, level = 36, drop_tag = "大史莱姆", disableWander = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 639002, gadget_id = 70211002, pos = { x = 106.261, y = 144.645, z = 670.040 }, rot = { x = 14.295, y = 207.309, z = 353.104 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1639003, name = "ANY_MONSTER_DIE_639003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_639003", action = "action_EVENT_ANY_MONSTER_DIE_639003" }
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
		monsters = { 639001, 639004, 639005 },
		gadgets = { 639002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_639003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_639003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_639003(context, evt)
	-- 将configid为 639002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 639002, GadgetState.Default) then
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