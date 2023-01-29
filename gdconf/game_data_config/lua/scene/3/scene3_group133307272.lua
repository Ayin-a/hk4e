-- 基础信息
local base_info = {
	group_id = 133307272
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 272001, monster_id = 24040301, pos = { x = -1264.498, y = -4.353, z = 5406.806 }, rot = { x = 0.000, y = 28.464, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1004, area_id = 32 },
	{ config_id = 272004, monster_id = 25210402, pos = { x = -1262.627, y = -5.133, z = 5408.886 }, rot = { x = 0.000, y = 214.169, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 32 },
	{ config_id = 272005, monster_id = 25210201, pos = { x = -1257.189, y = -4.324, z = 5403.317 }, rot = { x = 0.000, y = 337.324, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9003, area_id = 32 },
	{ config_id = 272006, monster_id = 25210503, pos = { x = -1264.643, y = -5.288, z = 5409.519 }, rot = { x = 0.000, y = 178.894, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9002, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 272002, gadget_id = 70211012, pos = { x = -1265.978, y = -5.906, z = 5424.142 }, rot = { x = 0.000, y = 194.038, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
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
		monsters = { 272001, 272004, 272005, 272006 },
		gadgets = { 272002 },
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