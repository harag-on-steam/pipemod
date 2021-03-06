data:extend {
    util.merge {
        data.raw['corpse']['wall-remnants'],
        {
            name = 'pipe-marker-box-good',
            icon = '__underground-pipe-pack__/graphics/entity/markers/32x32highlighter.png',
            time_before_removed = 60 * 20,
            collision_box = {{0, 0}, {0, 0}},
            final_render_layer = 'selection-box',
            animation = {
                width = 64,
                height = 64,
                frame_count = 1,
                direction_count = 1,
                scale = 0.5,
                shift = {-0.5, -0.5},
                filename = '__underground-pipe-pack__/graphics/entity/markers/32x32highlighter.png'
            }
        }
    },
    util.merge {
        data.raw['corpse']['wall-remnants'],
        {
            name = 'pipe-marker-box-bad',
            icon = '__underground-pipe-pack__/graphics/entity/markers/32x32highlighterbad.png',
            time_before_removed = 60 * 20,
            collision_box = {{0, 0}, {0, 0}},
            final_render_layer = 'selection-box',
            animation = {
                width = 64,
                height = 64,
                frame_count = 1,
                direction_count = 1,
                scale = 0.5,
                shift = {-0.5, -0.5},
                filename = '__underground-pipe-pack__/graphics/entity/markers/32x32highlighterbad.png'
            }
        }
    },
    util.merge {
        data.raw['corpse']['wall-remnants'],
        {
            name = 'underground-pipe-marker-horizontal',
            icon = '__underground-pipe-pack__/graphics/entity/markers/underground-lines-single-horizontal.png',
            time_before_removed = 60 * 20,
            collision_box = {{0, 0}, {0, 0}},
            final_render_layer = 'selection-box',
            animation = {
                width = 64,
                height = 64,
                frame_count = 1,
                direction_count = 1,
                scale = 0.5,
                shift = {-0.5, -0.5},
                filename = '__underground-pipe-pack__/graphics/entity/markers/underground-lines-single-horizontal.png'
            }
        }
    },
    util.merge {
        data.raw['corpse']['wall-remnants'],
        {
            name = 'underground-pipe-marker-vertical',
            icon = '__underground-pipe-pack__/graphics/entity/markers/underground-lines-single-vertical.png',
            time_before_removed = 60 * 20,
            collision_box = {{0, 0}, {0, 0}},
            final_render_layer = 'selection-box',
            animation = {
                width = 64,
                height = 64,
                frame_count = 1,
                direction_count = 1,
                scale = 0.5,
                shift = {-0.5, -0.5},
                filename = '__underground-pipe-pack__/graphics/entity/markers/underground-lines-single-vertical.png'
            }
        }
    }
}
