-- This SQL script select band_name, and lifespan column which is difference
SELECT band_name, (IF NULL(split, '2020') - formed) AS lifespan
    FROM metal_bands
    WHERE FIND_IN_SET('Glam rock', IF NULL(style, "")) > 0
    ORDER BY lifespan DESC;
