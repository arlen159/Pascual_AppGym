﻿using System;
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
    public partial class Programas : PhoneApplicationPage
    {
        public Programas()
        {
            InitializeComponent();
        }

        private void btnPlanes_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            NavigationService.Navigate(new Uri("/EntreDias.xaml", UriKind.Relative));
        }

        
    }
}