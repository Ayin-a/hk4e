-- 基础信息
local base_info = {
	group_id = 133312073
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 73001, monster_id = 26090901, pos = { x = -3304.893, y = 213.859, z = 4557.347 }, rot = { x = 0.000, y = 237.816, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 28 },
	{ config_id = 73004, monster_id = 26090901, pos = { x = -3305.623, y = 214.199, z = 4553.408 }, rot = { x = 0.000, y = 335.625, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 102, area_id = 28 },
	{ config_id = 73005, monster_id = 26090901, pos = { x = -3309.248, y = 214.972, z = 4556.863 }, rot = { x = 0.000, y = 87.724, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 102, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 73002, gadget_id = 70211002, pos = { x = -3306.959, y = 214.400, z = 4556.086 }, rot = { x = 0.000, y = 280.186, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1073003, name = "ANY_MONSTER_DIE_73003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_73003", action = "action_EVENT_ANY_MONSTER_DIE_73003" }
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
		monsters = { 73001, 73004, 73005 },
		gadgets = { 73002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_73003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_73003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_73003(context, evt)
	-- 将configid为 73002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 73002, GadgetState.Default) then
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