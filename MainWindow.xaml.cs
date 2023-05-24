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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Fashon
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Dostup = null;
            _ = IDuser;
            NameUser = null;
        }
        public static string Dostup;
        public static int IDuser;
        public static string NameUser;
        private void Do_register_Click(object sender, RoutedEventArgs e)
        {
            Register win = new Register();
            win.Show();
            this.Close();
        }
        private void Do_login_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)GuestCk.IsChecked)
            {
                Dostup = "2";
                NameUser = "Гость";
                ListService win = new ListService();
                win.Show();
                this.Close();
                return;
            }
            if (SalonBase.Getcontext().Users.Where(p => p.Login == LoginUser.Text && p.Password == PasswordUser.Password).FirstOrDefault() != null)
            {
                Dostup = SalonBase.Getcontext().Users.Where(p => p.Login == LoginUser.Text && p.Password == PasswordUser.Password).FirstOrDefault().Status.ToString();
                IDuser = SalonBase.Getcontext().Users.Where(p => p.Login == LoginUser.Text && p.Password == PasswordUser.Password).FirstOrDefault().ID;
                NameUser = SalonBase.Getcontext().Users.Where(p => p.Login == LoginUser.Text && p.Password == PasswordUser.Password).FirstOrDefault().Login;
                ListService win = new ListService();
                win.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("Логин или пароль введенны не верно", "Ошибка", MessageBoxButton.OKCancel, MessageBoxImage.Error);
            }
        }
    }
}
