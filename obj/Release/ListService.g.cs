﻿#pragma checksum "..\..\ListService.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "7ACF78890E73234938EDF6427C8DA657AE77E8E6253B18D0F38AA5F24A0D1E6A"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using Fashon;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Fashon {
    
    
    /// <summary>
    /// ListService
    /// </summary>
    public partial class ListService : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 20 "..\..\ListService.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Exit;
        
        #line default
        #line hidden
        
        
        #line 22 "..\..\ListService.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox InputSearch;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\ListService.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.CheckBox Sort_Cost;
        
        #line default
        #line hidden
        
        
        #line 25 "..\..\ListService.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.CheckBox sort_actual;
        
        #line default
        #line hidden
        
        
        #line 26 "..\..\ListService.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView Lservice;
        
        #line default
        #line hidden
        
        
        #line 53 "..\..\ListService.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label UsName;
        
        #line default
        #line hidden
        
        
        #line 54 "..\..\ListService.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button add;
        
        #line default
        #line hidden
        
        
        #line 55 "..\..\ListService.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button delet;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/APTEKA;component/listservice.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\ListService.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.Exit = ((System.Windows.Controls.Button)(target));
            
            #line 20 "..\..\ListService.xaml"
            this.Exit.Click += new System.Windows.RoutedEventHandler(this.Exit_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.InputSearch = ((System.Windows.Controls.TextBox)(target));
            
            #line 22 "..\..\ListService.xaml"
            this.InputSearch.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.InputSearch_TextChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.Sort_Cost = ((System.Windows.Controls.CheckBox)(target));
            
            #line 24 "..\..\ListService.xaml"
            this.Sort_Cost.Checked += new System.Windows.RoutedEventHandler(this.Sort_Cost_Checked);
            
            #line default
            #line hidden
            
            #line 24 "..\..\ListService.xaml"
            this.Sort_Cost.Unchecked += new System.Windows.RoutedEventHandler(this.Sort_Cost_Unchecked);
            
            #line default
            #line hidden
            return;
            case 4:
            this.sort_actual = ((System.Windows.Controls.CheckBox)(target));
            
            #line 25 "..\..\ListService.xaml"
            this.sort_actual.Checked += new System.Windows.RoutedEventHandler(this.sort_actual_Checked);
            
            #line default
            #line hidden
            
            #line 25 "..\..\ListService.xaml"
            this.sort_actual.Unchecked += new System.Windows.RoutedEventHandler(this.sort_actual_Unchecked);
            
            #line default
            #line hidden
            return;
            case 5:
            this.Lservice = ((System.Windows.Controls.ListView)(target));
            return;
            case 6:
            this.UsName = ((System.Windows.Controls.Label)(target));
            return;
            case 7:
            this.add = ((System.Windows.Controls.Button)(target));
            
            #line 54 "..\..\ListService.xaml"
            this.add.Click += new System.Windows.RoutedEventHandler(this.add_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.delet = ((System.Windows.Controls.Button)(target));
            
            #line 55 "..\..\ListService.xaml"
            this.delet.Click += new System.Windows.RoutedEventHandler(this.delet_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

