require "rubygems-warp/version"

module Kernel
  alias rubygems_require require
  private :rubygems_require

  def require(path)
    gem_original_require path
  rescue LoadError
    rubygems_require path
  end
end
