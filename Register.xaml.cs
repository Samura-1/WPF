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
    /// Логика взаимодействия для Register.xaml
    /// </summary>
    public partial class Register : Window
    {
        private Users _Useradd = new Users();
        public Register()
        {
            InitializeComponent();
            DataContext = _Useradd;
        }

        private void Do_login_Click(object sender, RoutedEventArgs e)
        {
            MainWindow win = new MainWindow();
            win.Show();
            this.Close();
        }

        private void Do_save_Click(object sender, RoutedEventArgs e)
        {
            _Useradd.Password = PasswordUser.Password;
            _Useradd.Status = 2;
            _Useradd.Login = LoginUser.Text;
            StringBuilder error = new StringBuilder();
            if (string.IsNullOrWhiteSpace(LoginUser.Text))
                error.AppendLine("Логин не может быть пустой!");
            if(string.IsNullOrWhiteSpace(PasswordUser.Password))
                error.AppendLine("Пароль не может быть пустой!");
            if (error.Length > 0)
                MessageBox.Show(error.ToString());
            if (_Useradd.ID == 0)
                SalonBase.Getcontext().Users.Add(_Useradd);
            try
            {
                SalonBase.Getcontext().SaveChanges();
                MessageBox.Show("Вы успешно зарегистрировались");
                MainWindow win = new MainWindow();
                win.Show();
                this.Close();
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
