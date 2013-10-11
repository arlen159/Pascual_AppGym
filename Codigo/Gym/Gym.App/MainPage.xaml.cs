using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using Microsoft.Phone.Controls;

namespace Gym.App
{
    public partial class MainPage : PhoneApplicationPage
    {
        // Constructor
        public MainPage()
        {
            InitializeComponent();
        }

        private void btnGuardar_Click(object sender, System.EventArgs e)
        {
            NavigationService.Navigate(new Uri("/Programas.xaml", UriKind.Relative));
        }

        private void btnBorrar_Click(object sender, System.EventArgs e)
        {
        	// TODO: Agregar implementación de controlador de eventos aquí.
        }

        private void PhoneApplicationPage_Loaded(object sender, RoutedEventArgs e)
        {

        }

        
    }
}