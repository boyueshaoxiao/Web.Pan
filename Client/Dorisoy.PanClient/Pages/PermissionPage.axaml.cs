using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.ReactiveUI;
using FluentAvalonia.UI.Navigation;
using Dorisoy.PanClient.ViewModels;

namespace Dorisoy.PanClient.Pages;

public partial class PermissionPage : ReactiveUserControl<PermissionPageViewModel>
{
    public PermissionPage()
    {
        InitializeComponent();

        AddHandler(Frame.NavigatingFromEvent, OnNavigatingFrom, RoutingStrategies.Direct);
        AddHandler(Frame.NavigatedToEvent, OnNavigatedTo, RoutingStrategies.Direct);
        TreeView ss = new TreeView();

        this.WhenActivated(disposable =>
        {
            this.OneWayBind(ViewModel, vm => vm.RolesItems, v => v.ListBoxRoles.ItemsSource)
              .DisposeWith(disposable);

            this.OneWayBind(ViewModel, vm => vm.GroupedRoleClaims, v => v.TabViewGroupedRoleClaims.TabItems)
               .DisposeWith(disposable);

            this.OneWayBind(ViewModel, vm => vm.SelectedIndex, v => v.TabViewGroupedRoleClaims.SelectedIndex)
             .DisposeWith(disposable);
        });
    }


    private void OnNavigatedTo(object sender, NavigationEventArgs e)
    {

    }

    private void OnNavigatingFrom(object sender, NavigatingCancelEventArgs e)
    {

    }
}
