using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.ReactiveUI;
using FluentAvalonia.UI.Navigation;
using Dorisoy.PanClient.ViewModels;

namespace Dorisoy.PanClient.Pages;

public partial class UserPage : ReactiveUserControl<UserPageViewModel>
{
    public Button AddUserButton => this.FindControl<Button>(nameof(AddUserButton));
    public UserPage()
    {
        InitializeComponent();

        AddHandler(Frame.NavigatingFromEvent, OnNavigatingFrom, RoutingStrategies.Direct);
        AddHandler(Frame.NavigatedToEvent, OnNavigatedTo, RoutingStrategies.Direct);


        //ss.ExpandSubTree()
        this.WhenActivated(disposable =>
        {
            var VM = ViewModel;

            this.BindCommand(ViewModel, vm => vm.AddUser, v => v.AddUserButton)
                .DisposeWith(disposable);

            this.OneWayBind(ViewModel, vm => vm.Items, v => v.UserDataGrid.ItemsSource)
                .DisposeWith(disposable);

            this.Bind(ViewModel, vm => vm.SelectedUser, v => v.UserDataGrid.SelectedItem)
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
