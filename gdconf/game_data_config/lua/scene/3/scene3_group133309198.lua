-- 基础信息
local base_info = {
	group_id = 133309198
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 198001, monster_id = 26120301, pos = { x = -2409.047, y = -64.110, z = 5776.287 }, rot = { x = 0.000, y = 160.543, z = 0.000 }, level = 32, drop_tag = "大蕈兽", disableWander = true, pose_id = 104, area_id = 27 },
	{ config_id = 198004, monster_id = 26090101, pos = { x = -2411.412, y = -62.439, z = 5764.936 }, rot = { x = 0.000, y = 89.799, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 27 },
	{ config_id = 198005, monster_id = 26090101, pos = { x = -2403.310, y = -63.877, z = 5754.151 }, rot = { x = 0.000, y = 170.839, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 27 },
	{ config_id = 198006, monster_id = 26090101, pos = { x = -2399.305, y = -63.420, z = 5772.713 }, rot = { x = 0.000, y = 232.798, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 198002, gadget_id = 70211002, pos = { x = -2405.187, y = -62.847, z = 5765.140 }, rot = { x = 358.032, y = 182.302, z = 4.390 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1198003, name = "ANY_MONSTER_DIE_198003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_198003", action = "action_EVENT_ANY_MONSTER_DIE_198003" }
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
		monsters = { 198001, 198004, 198005, 198006 },
		gadgets = { 198002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_198003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_198003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_198003(context, evt)
	-- 将configid为 198002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 198002, GadgetState.Default) then
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