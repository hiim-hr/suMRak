function imageArray = getColormapImageArray(height, width, colormap)
    temp_Array = zeros(height,width,3);
    switch colormap
        case "Greyscale"
            colormap_colors = gray(width);
        case "Turbo"
            colormap_colors = turbo(width);
        case "Hot"
            colormap_colors = hot(width);
        case "Jet"
            colormap_colors = jet(width);
        case "Parula"
            colormap_colors = parula(width);
        case "Sky"
            colormap_colors = sky(width);
        case "Cool"
            colormap_colors = cool(width);
        case "Copper"
            colormap_colors = copper(width);
        case "Bone"
            colormap_colors = bone(width);
    end
    for i=1:width
        temp_Array(:,i,1) = colormap_colors(i,1);
        temp_Array(:,i,2) = colormap_colors(i,2);
        temp_Array(:,i,3) = colormap_colors(i,3);
    end
    imageArray = temp_Array;
end