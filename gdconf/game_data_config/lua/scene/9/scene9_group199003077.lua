-- 基础信息
local base_info = {
	group_id = 199003077
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 77001, monster_id = 21010901, pos = { x = -718.110, y = 161.431, z = 44.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 403 },
	{ config_id = 77004, monster_id = 21010501, pos = { x = -738.005, y = 158.863, z = 45.893 }, rot = { x = 0.000, y = 281.243, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", area_id = 403 },
	{ config_id = 77005, monster_id = 21020201, pos = { x = -729.548, y = 158.795, z = 43.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 403 },
	{ config_id = 77006, monster_id = 21020101, pos = { x = -715.552, y = 160.967, z = 31.502 }, rot = { x = 0.000, y = 94.887, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 403 },
	{ config_id = 77007, monster_id = 21011001, pos = { x = -721.423, y = 170.082, z = 26.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 403 },
	{ config_id = 77008, monster_id = 21020201, pos = { x = -724.534, y = 164.717, z = 31.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", area_id = 403 },
	{ config_id = 77009, monster_id = 21010301, pos = { x = -723.429, y = 159.946, z = 38.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 403 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 77002, gadget_id = 70211012, pos = { x = -718.014, y = 161.548, z = 41.887 }, rot = { x = 20.213, y = 77.708, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1077003, name = "ANY_MONSTER_DIE_77003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_77003", action = "action_EVENT_ANY_MONSTER_DIE_77003" }
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
		monsters = { 77001, 77004, 77005, 77006, 77007, 77008, 77009 },
		gadgets = { 77002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_77003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_77003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_77003(context, evt)
	-- 将configid为 77002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77002, GadgetState.Default) then
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