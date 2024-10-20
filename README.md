# AspNetCore Sample Razor app

This app was created following the instructions:<br>
https://learn.microsoft.com/en-us/aspnet/core/tutorials/razor-pages/

## Developing

You can build / run with:
``` bash
dotnet run
```

As part of the tutorial step #2 [Add a model][model-link] you install a couple
of `dotnet` tools, `dotnet-aspnet-codegenerator` and `dotnet-ef`, along with
some packages that are not referenced in the `csproj` file. In that step these
tools are run to generate classes, etc.

The `ef` tool is also run to create the SQLite database:
``` bash
dotnet ef database update
```

[model-link]: https://learn.microsoft.com/en-us/aspnet/core/tutorials/razor-pages/model?view=aspnetcore-8.0&tabs=visual-studio-code#add-nuget-packages-and-ef-tools
