﻿using Avalonia.Markup.Xaml;
using Avalonia.ReactiveUI;
using Dorisoy.PanClient.ViewModels;

namespace Dorisoy.PanClient.Pages;

public partial class AddFolderView : ReactiveUserControl<AddFolderViewModel>
{
    public AddFolderView()
    {
        this.WhenActivated(disposable =>
        {
            //this.BindValidation(ViewModel, vm => vm.FolderName, v => v.FolderNameValidation.Text)
            //   .DisposeWith(disposable);
        });
        AvaloniaXamlLoader.Load(this);
    }
}
