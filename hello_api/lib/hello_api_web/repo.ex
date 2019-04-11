# lib/hello_api_web.repo.ex
def get(module, id) do
    Enum.find all(module), fn elem -> elem.id == id end
end