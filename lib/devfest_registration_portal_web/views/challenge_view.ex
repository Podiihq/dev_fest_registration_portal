defmodule DevfestRegistrationPortalWeb.ChallengeView do
  use DevfestRegistrationPortalWeb, :view
  alias DevfestRegistrationPortal.Codelabs

  def category_name do
    categories = Codelabs.list_all_categories()

    Enum.map(categories, fn category ->
      {category.name, category.id}
    end)
  end
end
