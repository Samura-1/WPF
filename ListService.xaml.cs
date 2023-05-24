using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Fashon
{
    /// <summary>
    /// Логика взаимодействия для ListService.xaml
    /// </summary>
    public partial class ListService : Window
    {
        public ListService()
        {
            InitializeComponent();
            UpdateTup();
            UsName.Content = MainWindow.NameUser;
            if (MainWindow.Dostup == "2")
            {
                add.Visibility = Visibility.Collapsed;
                delet.Visibility = Visibility.Collapsed;
            }
        }
        private void UpdateTup()
        {
            SalonBase.Getcontext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
            Lservice.ItemsSource = SalonBase.Getcontext().Service.ToList();
        }
        private void SearchL()
        {
            var result = SalonBase.Getcontext().Service.ToList();
            if (sort_actual.IsChecked.Value)
                result = result.Where(p => p.IsActual).ToList();
            if (Sort_Cost.IsChecked.Value)
                result = result.OrderBy(p => p.Cost).ToList();
            result = result.Where(p => p.Title.ToLower().Contains(InputSearch.Text.ToLower())).ToList();

            Lservice.ItemsSource = result.ToList();
        }

        private void Sort_Cost_Checked(object sender, RoutedEventArgs e)
        {
            SearchL();
        }

        private void Sort_Cost_Unchecked(object sender, RoutedEventArgs e)
        {

        }

        private void sort_actual_Checked(object sender, RoutedEventArgs e)
        {
            SearchL();
        }

        private void sort_actual_Unchecked(object sender, RoutedEventArgs e)
        {
            SearchL();
        }

        private void Sell_Click(object sender, RoutedEventArgs e)
        {

        }

        private void InputSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            SearchL();
        }

        private void Exit_Click(object sender, RoutedEventArgs e)
        {
            MainWindow win = new MainWindow();
            win.Show();
            this.Close();
        }

        private void add_Click(object sender, RoutedEventArgs e)
        {
            Add win = new Add();
            win.Show();
            this.Close();
        }

        private void delet_Click(object sender, RoutedEventArgs e)
        {
           var remove = Lservice.SelectedItems.Cast<Service>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить {remove.Count()}","Подтверждение",MessageBoxButton.YesNo,MessageBoxImage.Question) == MessageBoxResult.Yes)
                SalonBase.Getcontext().Service.RemoveRange(remove);
                try
                {
                    SalonBase.Getcontext().SaveChanges();
                    MessageBox.Show("Данные успешно удаленны");
                    UpdateTup();
                }
                catch (Exception ex)
                {

                    MessageBox.Show(ex.Message.ToString());
                }

        }
    }
}
