I18n.backend = I18n::Backend::Chain.new(I18n::Backend::Mongoid.new(Translation), I18n::Backend::Simple.new)
