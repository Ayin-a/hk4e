--[[======================================
||  filename:   Test_ServerVisionType
||  owner:      siyu.li
||  description:    测试group加载的性能优化,代替工具功能
||  LogName:    
||  Protection: 
=======================================]]

function Initialize()
	regions[63001].is_trigger_reload_group = true
end

Initialize()