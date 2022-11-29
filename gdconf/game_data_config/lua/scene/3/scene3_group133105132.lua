-- 基础信息
local base_info = {
	group_id = 133105132
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 218, monster_id = 21010201, pos = { x = 982.322, y = 213.153, z = -6.702 }, rot = { x = 344.555, y = 234.341, z = 355.029 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 219, monster_id = 21010501, pos = { x = 985.370, y = 214.099, z = -12.011 }, rot = { x = 0.000, y = 53.750, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 32, area_id = 9 },
	{ config_id = 220, monster_id = 21010301, pos = { x = 992.890, y = 210.870, z = 3.625 }, rot = { x = 0.000, y = 266.985, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9012, area_id = 9 },
	{ config_id = 221, monster_id = 21030201, pos = { x = 989.929, y = 211.007, z = 3.499 }, rot = { x = 0.000, y = 87.917, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 313, gadget_id = 70211012, pos = { x = 980.195, y = 213.626, z = -8.200 }, rot = { x = 9.863, y = 58.433, z = 12.407 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000169, name = "ANY_MONSTER_DIE_169", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_169", action = "action_EVENT_ANY_MONSTER_DIE_169" }
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
		monsters = { 218, 219, 220, 221 },
		gadgets = { 313 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_169" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_169(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_169(context, evt)
	-- 将configid为 313 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313, GadgetState.Default) then
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