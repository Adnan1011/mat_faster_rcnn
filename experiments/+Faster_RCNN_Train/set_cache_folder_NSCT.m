function model = set_cache_folder_NSCT(cache_base_proposal, cache_base_fast_rcnn, model)
% model = set_cache_folder(cache_base_proposal, cache_base_fast_rcnn, model)
% --------------------------------------------------------
% Built on top of:
% Faster R-CNN
% Copyright (c) 2015, Shaoqing Ren
% Licensed under The MIT License [see LICENSE for details]
% --------------------------------------------------------
% Author: Adnan Chaudhry
% Multimedia and Senors Lab (MSL)
% Georgia Tech
% --------------------------------------------------------

    model.rpn.cache_name = [cache_base_proposal, '_stage1_rpn'];

    model.fast_rcnn.cache_name = ...
            [cache_base_proposal, ...
            strrep(sprintf('_top%d_nms%g_top%d', model.stage1_rpn.nms.per_nms_topN, ...
            model.stage1_rpn.nms.nms_overlap_thres, model.stage1_rpn.nms.after_nms_topN), '.', '_'), ...
            cache_base_fast_rcnn, '_stage1_fast_rcnn'];    

    model.final_model.cache_name = [cache_base_proposal, cache_base_fast_rcnn];
end