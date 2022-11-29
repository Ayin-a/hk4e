-- 基础信息
local base_info = {
	group_id = 155006162
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 162001, monster_id = 24010101, pos = { x = 122.783, y = 218.560, z = -288.932 }, rot = { x = 7.378, y = 84.812, z = 0.640 }, level = 36, drop_tag = "遗迹守卫", pose_id = 101, area_id = 200 },
	{ config_id = 162004, monster_id = 24010101, pos = { x = 131.768, y = 217.547, z = -301.797 }, rot = { x = 1.421, y = 14.551, z = 353.523 }, level = 36, drop_tag = "遗迹守卫", pose_id = 101, area_id = 200 },
	{ config_id = 162005, monster_id = 24010101, pos = { x = 147.473, y = 213.045, z = -271.237 }, rot = { x = 353.202, y = 227.105, z = 2.870 }, level = 36, drop_tag = "遗迹守卫", pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 162002, gadget_id = 70211012, pos = { x = 124.626, y = 218.328, z = -292.523 }, rot = { x = 5.624, y = 50.900, z = 0.000 }, level = 16, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1162003, name = "ANY_MONSTER_DIE_162003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162003", action = "action_EVENT_ANY_MONSTER_DIE_162003" }
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
		monsters = { 162001, 162004, 162005 },
		gadgets = { 162002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_162003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_162003(context, evt)
	-- 将configid为 162002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.Default) then
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