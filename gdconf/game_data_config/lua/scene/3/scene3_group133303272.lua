-- 基础信息
local base_info = {
	group_id = 133303272
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 272001, monster_id = 21010401, pos = { x = -1023.675, y = 282.429, z = 3353.892 }, rot = { x = 0.000, y = 22.235, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 272004, monster_id = 21010101, pos = { x = -1021.859, y = 282.614, z = 3356.598 }, rot = { x = 0.000, y = 249.867, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9003, area_id = 23 },
	{ config_id = 272005, monster_id = 21020201, pos = { x = -1022.181, y = 283.850, z = 3349.759 }, rot = { x = 0.000, y = 223.745, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 272002, gadget_id = 70211002, pos = { x = -1018.257, y = 284.966, z = 3352.049 }, rot = { x = 3.226, y = 202.968, z = 352.907 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 272006, gadget_id = 70310006, pos = { x = -1022.910, y = 282.458, z = 3355.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 272007, gadget_id = 70300089, pos = { x = -1019.359, y = 284.762, z = 3350.464 }, rot = { x = 2.399, y = 0.059, z = 12.791 }, level = 30, area_id = 23 },
	{ config_id = 272008, gadget_id = 70300100, pos = { x = -1018.405, y = 284.733, z = 3354.072 }, rot = { x = 358.318, y = 359.875, z = 8.476 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1272003, name = "ANY_MONSTER_DIE_272003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_272003", action = "action_EVENT_ANY_MONSTER_DIE_272003" }
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
		monsters = { 272001, 272004, 272005 },
		gadgets = { 272002, 272006, 272007, 272008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_272003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_272003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_272003(context, evt)
	-- 将configid为 272002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 272002, GadgetState.Default) then
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