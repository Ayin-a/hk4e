-- 基础信息
local base_info = {
	group_id = 133314238
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 238001, monster_id = 26120401, pos = { x = -252.316, y = -12.687, z = 4614.327 }, rot = { x = 0.000, y = 305.586, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 104, area_id = 32 },
	{ config_id = 238004, monster_id = 26090901, pos = { x = -255.750, y = -14.867, z = 4612.781 }, rot = { x = 0.000, y = 69.932, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 238005, monster_id = 26090901, pos = { x = -256.280, y = -16.619, z = 4615.220 }, rot = { x = 0.000, y = 220.068, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 238006, monster_id = 26090901, pos = { x = -256.693, y = -15.613, z = 4610.586 }, rot = { x = 0.000, y = 347.173, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 238002, gadget_id = 70211002, pos = { x = -257.111, y = -15.654, z = 4608.351 }, rot = { x = 22.708, y = 262.065, z = 344.654 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1238003, name = "ANY_MONSTER_DIE_238003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_238003", action = "action_EVENT_ANY_MONSTER_DIE_238003" }
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
		monsters = { 238001, 238004, 238005, 238006 },
		gadgets = { 238002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_238003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_238003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_238003(context, evt)
	-- 将configid为 238002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238002, GadgetState.Default) then
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