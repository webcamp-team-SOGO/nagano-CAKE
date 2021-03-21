module Admins::ItemsHelper
  def converting_to_jpy(taxfree)
    "#{taxfree.to_s(:delimited, delimiter: ',')}"
  end
end
