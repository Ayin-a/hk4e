-- 基础信息
local base_info = {
	group_id = 133210524
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 524001, monster_id = 25100201, pos = { x = -3846.913, y = 127.548, z = -693.479 }, rot = { x = 0.000, y = 128.899, z = 0.000 }, level = 32, drop_tag = "高阶武士", disableWander = true, pose_id = 1003, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 524002, gadget_id = 70211002, pos = { x = -3842.503, y = 129.381, z = -696.636 }, rot = { x = 9.903, y = 313.489, z = 13.644 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 524004, gadget_id = 70900393, pos = { x = -3843.823, y = 127.880, z = -692.458 }, rot = { x = 1.134, y = 102.747, z = 343.308 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 524005, gadget_id = 70900393, pos = { x = -3846.809, y = 126.610, z = -696.444 }, rot = { x = 9.650, y = 220.435, z = 10.388 }, level = 30, state = GadgetState.GearStart, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1524003, name = "ANY_MONSTER_DIE_524003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_524003", action = "action_EVENT_ANY_MONSTER_DIE_524003" }
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
		monsters = { 524001 },
		gadgets = { 524002, 524004, 524005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_524003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_524003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_524003(context, evt)
	-- 将configid为 524002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 524002, GadgetState.Default) then
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