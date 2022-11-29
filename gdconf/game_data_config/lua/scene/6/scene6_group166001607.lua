-- 基础信息
local base_info = {
	group_id = 166001607
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 607001, gadget_id = 70360001, pos = { x = 290.526, y = 65.540, z = 1296.581 }, rot = { x = 0.000, y = 48.551, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 607002, shape = RegionShape.SPHERE, radius = 40, pos = { x = 360.756, y = 35.043, z = 1355.079 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1607002, name = "ENTER_REGION_607002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_607002", trigger_count = 0, forbid_guest = false }
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
		monsters = { },
		gadgets = { 607001 },
		regions = { 607002 },
		triggers = { "ENTER_REGION_607002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_607002(context, evt)
	        local uidList=ScriptLib.GetSceneUidList(context)
	        if uidList[1]~=evt.uid then
	                ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = {x=290.5259, y=65.54035, z=1296.58093}, rot = {x=0, y=48.5509644, z=0}})
	        end
	        return 0   
end