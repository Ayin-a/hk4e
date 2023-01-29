-- 基础信息
local base_info = {
	group_id = 133307406
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 406001, gadget_id = 70290672, pos = { x = -1220.390, y = 41.146, z = 5255.892 }, rot = { x = 13.393, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
		{ config_id = 406002, gadget_id = 70290672, pos = { x = -1042.354, y = 119.502, z = 4996.725 }, rot = { x = 13.393, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
		{ config_id = 406003, gadget_id = 70290672, pos = { x = -1090.979, y = 123.524, z = 4966.730 }, rot = { x = 358.062, y = 357.619, z = 8.687 }, level = 32, persistent = true, area_id = 32 },
		{ config_id = 406004, gadget_id = 70290672, pos = { x = -1111.851, y = 110.008, z = 5033.789 }, rot = { x = 358.062, y = 357.619, z = 8.687 }, level = 32, persistent = true, area_id = 32 },
		{ config_id = 406005, gadget_id = 70290673, pos = { x = -1137.188, y = 95.408, z = 5090.151 }, rot = { x = 12.198, y = 294.673, z = 351.849 }, level = 32, area_id = 32 },
		{ config_id = 406006, gadget_id = 70290693, pos = { x = -1042.625, y = 107.978, z = 5059.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
		{ config_id = 406007, gadget_id = 70211101, pos = { x = -1132.253, y = 97.036, z = 5085.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
	},
	regions = {
		{ config_id = 406008, shape = RegionShape.POLYGON, pos = { x = -538.299, y = 193.295, z = 5348.474 }, height = 160.948, point_array = { { x = -527.732, y = 5211.395 }, { x = -440.875, y = 5268.901 }, { x = -428.547, y = 5302.958 }, { x = -475.732, y = 5425.895 }, { x = -554.406, y = 5485.553 }, { x = -648.052, y = 5467.409 }, { x = -616.060, y = 5329.564 } }, area_id = 32 }
	},
	triggers = {
		{ config_id = 1406008, name = "ENTER_REGION_406008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
	}
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================