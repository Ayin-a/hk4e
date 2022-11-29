-- 基础信息
local base_info = {
	group_id = 133303335
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 335001, monster_id = 25310301, pos = { x = -1897.219, y = 240.659, z = 3375.402 }, rot = { x = 0.000, y = 103.419, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", disableWander = true, area_id = 23 },
	{ config_id = 335004, monster_id = 25310201, pos = { x = -1905.805, y = 243.790, z = 3362.249 }, rot = { x = 0.000, y = 194.867, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 23 },
	{ config_id = 335005, monster_id = 25310101, pos = { x = -1906.832, y = 243.773, z = 3358.355 }, rot = { x = 0.000, y = 280.240, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9005, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 335002, gadget_id = 70211012, pos = { x = -1902.522, y = 243.791, z = 3361.277 }, rot = { x = 0.000, y = 278.671, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 335006, gadget_id = 70300048, pos = { x = -1898.215, y = 240.197, z = 3372.798 }, rot = { x = 0.000, y = 139.702, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 335007, gadget_id = 70300048, pos = { x = -1899.165, y = 240.181, z = 3371.923 }, rot = { x = 0.000, y = 139.702, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1335003, name = "ANY_MONSTER_DIE_335003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_335003", action = "action_EVENT_ANY_MONSTER_DIE_335003" }
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
		monsters = { 335001, 335004, 335005 },
		gadgets = { 335002, 335006, 335007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_335003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_335003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_335003(context, evt)
	-- 将configid为 335002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 335002, GadgetState.Default) then
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