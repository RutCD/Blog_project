defmodule BlogProject.Repo.Migrations.CreateBlogs do
  use Ecto.Migration

  def change do
    create table(:blogs) do
      add :name, :string
      add :context, :text

      timestamps()
    end
  end
end
