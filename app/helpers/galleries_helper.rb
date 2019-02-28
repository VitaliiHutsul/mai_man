module GalleriesHelper
  def gallery_item_class(index)
    remainder = index % 8
    if [1, 3, 4, 6].include? remainder
      'big-item'
    else
      'small-item'
    end
  end

end
