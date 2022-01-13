defmodule BlogProject.Blogging.Blog do
  use Ecto.Schema
  import Ecto.Changeset

  schema "blogs" do
    field :context, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(blog, attrs) do
    blog
    |> cast(attrs, [:name, :context])
    |> validate_required([:name, :context])
  end
end
