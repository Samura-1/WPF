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
    /// Логика взаимодействия для Add.xaml
    /// </summary>
    public partial class Add : Window
    {
        private Service _addservice = new Service();
        public Add()
        {
            InitializeComponent();
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            _addservice.Title = Title.Text;
            _addservice.Description = Descr.Text;
            _addservice.Cost = Convert.ToDecimal(Cost.Text);
            _addservice.IsActual = true;
            StringBuilder erros = new StringBuilder();
            if (string.IsNullOrWhiteSpace(Title.Text))
                erros.AppendLine("Заполните Название");
            if (string.IsNullOrWhiteSpace(Descr.Text))
                erros.AppendLine("Заполните Описание");

            if (erros.Length > 0)
                MessageBox.Show(erros.ToString());
            if (_addservice.ID == 0)
                SalonBase.Getcontext().Service.Add(_addservice);
            try
            {
                SalonBase.Getcontext().SaveChanges();
                MessageBox.Show("Даные добавленны");
                ListService win = new ListService();
                win.Show();
                this.Close();
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            ListService win = new ListService();
            win.Show();
            this.Close();
        }
    }
}
